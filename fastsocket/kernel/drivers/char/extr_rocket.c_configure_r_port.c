
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


struct tty_struct {struct ktermios* termios; } ;
struct TYPE_27__ {TYPE_1__* CtlP; } ;
struct r_port {size_t board; int cps; int cd_status; int read_status_mask; int ignore_status_mask; unsigned int flags; TYPE_2__ channel; int slock; int intmask; } ;
struct ktermios {unsigned int c_cflag; } ;
struct TYPE_26__ {scalar_t__ boardType; } ;
typedef TYPE_2__ CHANNEL_t ;


 int CD_ACT ;
 unsigned int CLOCAL ;
 unsigned int CRTSCTS ;
 unsigned int CS8 ;
 unsigned int CSIZE ;
 unsigned int CSTOPB ;
 int DELTA_CD ;
 int DELTA_CTS ;
 scalar_t__ I_BRKINT (struct tty_struct*) ;
 scalar_t__ I_IGNBRK (struct tty_struct*) ;
 scalar_t__ I_IGNPAR (struct tty_struct*) ;
 scalar_t__ I_INPCK (struct tty_struct*) ;
 scalar_t__ I_IXANY (struct tty_struct*) ;
 scalar_t__ I_IXON (struct tty_struct*) ;
 scalar_t__ I_PARMRK (struct tty_struct*) ;
 int InterfaceModeRS232 ;
 int InterfaceModeRS232T ;
 int InterfaceModeRS422 ;
 int InterfaceModeRS485 ;
 unsigned int PARENB ;
 unsigned int PARODD ;
 unsigned int ROCKET_MODE_MASK ;



 int ROCKET_RTS_TOGGLE ;
 scalar_t__ ROCKET_TYPE_PC104 ;
 int START_CHAR (struct tty_struct*) ;
 int STMBREAKH ;
 int STMFRAMEH ;
 int STMPARITYH ;
 int STMRCVROVRH ;
 int STOP_CHAR (struct tty_struct*) ;
 int* rp_baud_base ;
 int sClrTxXOFF (TYPE_2__*) ;
 int sDisCTSFlowCtl (TYPE_2__*) ;
 int sDisIXANY (TYPE_2__*) ;
 int sDisParity (TYPE_2__*) ;
 int sDisRTSToggle (TYPE_2__*) ;
 int sDisTxSoftFlowCtl (TYPE_2__*) ;
 int sEnCTSFlowCtl (TYPE_2__*) ;
 int sEnIXANY (TYPE_2__*) ;
 int sEnParity (TYPE_2__*) ;
 int sEnRTSToggle (TYPE_2__*) ;
 int sEnTxSoftFlowCtl (TYPE_2__*) ;
 int sGetChanStatus (TYPE_2__*) ;
 int sSetBaud (TYPE_2__*,int) ;
 int sSetData7 (TYPE_2__*) ;
 int sSetData8 (TYPE_2__*) ;
 int sSetEvenParity (TYPE_2__*) ;
 int sSetInterfaceMode (TYPE_2__*,int ) ;
 int sSetOddParity (TYPE_2__*) ;
 int sSetRTS (TYPE_2__*) ;
 int sSetStop1 (TYPE_2__*) ;
 int sSetStop2 (TYPE_2__*) ;
 int sSetTxXOFFChar (TYPE_2__*,int ) ;
 int sSetTxXONChar (TYPE_2__*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_encode_baud_rate (struct tty_struct*,int,int) ;
 int tty_get_baud_rate (struct tty_struct*) ;
 int tty_termios_baud_rate (struct ktermios*) ;

__attribute__((used)) static void configure_r_port(struct tty_struct *tty, struct r_port *info,
        struct ktermios *old_termios)
{
 unsigned cflag;
 unsigned long flags;
 unsigned rocketMode;
 int bits, baud, divisor;
 CHANNEL_t *cp;
 struct ktermios *t = tty->termios;

 cp = &info->channel;
 cflag = t->c_cflag;


 if ((cflag & CSIZE) == CS8) {
  sSetData8(cp);
  bits = 10;
 } else {
  sSetData7(cp);
  bits = 9;
 }
 if (cflag & CSTOPB) {
  sSetStop2(cp);
  bits++;
 } else {
  sSetStop1(cp);
 }

 if (cflag & PARENB) {
  sEnParity(cp);
  bits++;
  if (cflag & PARODD) {
   sSetOddParity(cp);
  } else {
   sSetEvenParity(cp);
  }
 } else {
  sDisParity(cp);
 }


 baud = tty_get_baud_rate(tty);
 if (!baud)
  baud = 9600;
 divisor = ((rp_baud_base[info->board] + (baud >> 1)) / baud) - 1;
 if ((divisor >= 8192 || divisor < 0) && old_termios) {
  baud = tty_termios_baud_rate(old_termios);
  if (!baud)
   baud = 9600;
  divisor = (rp_baud_base[info->board] / baud) - 1;
 }
 if (divisor >= 8192 || divisor < 0) {
  baud = 9600;
  divisor = (rp_baud_base[info->board] / baud) - 1;
 }
 info->cps = baud / bits;
 sSetBaud(cp, divisor);


 tty_encode_baud_rate(tty, baud, baud);

 if (cflag & CRTSCTS) {
  info->intmask |= DELTA_CTS;
  sEnCTSFlowCtl(cp);
 } else {
  info->intmask &= ~DELTA_CTS;
  sDisCTSFlowCtl(cp);
 }
 if (cflag & CLOCAL) {
  info->intmask &= ~DELTA_CD;
 } else {
  spin_lock_irqsave(&info->slock, flags);
  if (sGetChanStatus(cp) & CD_ACT)
   info->cd_status = 1;
  else
   info->cd_status = 0;
  info->intmask |= DELTA_CD;
  spin_unlock_irqrestore(&info->slock, flags);
 }
 info->read_status_mask = STMRCVROVRH | 0xFF;
 if (I_INPCK(tty))
  info->read_status_mask |= STMFRAMEH | STMPARITYH;
 if (I_BRKINT(tty) || I_PARMRK(tty))
  info->read_status_mask |= STMBREAKH;




 info->ignore_status_mask = 0;
 if (I_IGNPAR(tty))
  info->ignore_status_mask |= STMFRAMEH | STMPARITYH;
 if (I_IGNBRK(tty)) {
  info->ignore_status_mask |= STMBREAKH;




  if (I_IGNPAR(tty))
   info->ignore_status_mask |= STMRCVROVRH;
 }

 rocketMode = info->flags & ROCKET_MODE_MASK;

 if ((info->flags & ROCKET_RTS_TOGGLE)
     || (rocketMode == 128))
  sEnRTSToggle(cp);
 else
  sDisRTSToggle(cp);

 sSetRTS(&info->channel);

 if (cp->CtlP->boardType == ROCKET_TYPE_PC104) {
  switch (rocketMode) {
  case 128:
   sSetInterfaceMode(cp, InterfaceModeRS485);
   break;
  case 129:
   sSetInterfaceMode(cp, InterfaceModeRS422);
   break;
  case 130:
  default:
   if (info->flags & ROCKET_RTS_TOGGLE)
    sSetInterfaceMode(cp, InterfaceModeRS232T);
   else
    sSetInterfaceMode(cp, InterfaceModeRS232);
   break;
  }
 }
}
