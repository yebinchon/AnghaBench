
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct stliport {int baud_base; int custom_divisor; int rxmarkmsk; int pflag; TYPE_1__ port; } ;
struct ktermios {int c_cflag; int c_iflag; int * c_cc; } ;
struct TYPE_6__ {int baudout; int baudin; int csize; int flow; int pflag; int vmin; int vtime; int* cc; int iflag; int stopout; int startout; int stopin; int startin; int parity; int stopbs; } ;
typedef TYPE_2__ asyport_t ;


 int ASYNC_CHECK_CD ;
 int ASYNC_SPD_CUST ;
 int ASYNC_SPD_HI ;
 int ASYNC_SPD_MASK ;
 int ASYNC_SPD_SHI ;
 int ASYNC_SPD_VHI ;
 int ASYNC_SPD_WARP ;
 int B38400 ;
 int BRKINT ;
 int CBAUD ;
 int CLOCAL ;
 int CRTSCTS ;



 int CSIZE ;
 int CSTOPB ;
 int FI_1MARKRXERRS ;
 int FI_IGNBREAK ;
 int FI_IGNRXERRS ;
 int F_CTSFLOW ;
 int F_IXANY ;
 int F_IXON ;
 int F_RTSFLOW ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int IXANY ;
 int IXON ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int PT_EVENPARITY ;
 int PT_NOPARITY ;
 int PT_ODDPARITY ;
 int PT_STOP1 ;
 int PT_STOP2 ;
 int P_RXIMIN ;
 int P_RXITIME ;
 int P_RXTHOLD ;
 int STL_MAXBAUD ;
 size_t VSTART ;
 size_t VSTOP ;
 int memset (TYPE_2__*,int ,int) ;
 int tty_get_baud_rate (struct tty_struct*) ;

__attribute__((used)) static void stli_mkasyport(struct tty_struct *tty, struct stliport *portp,
    asyport_t *pp, struct ktermios *tiosp)
{
 memset(pp, 0, sizeof(asyport_t));




 pp->baudout = tty_get_baud_rate(tty);
 if ((tiosp->c_cflag & CBAUD) == B38400) {
  if ((portp->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_HI)
   pp->baudout = 57600;
  else if ((portp->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_VHI)
   pp->baudout = 115200;
  else if ((portp->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_SHI)
   pp->baudout = 230400;
  else if ((portp->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_WARP)
   pp->baudout = 460800;
  else if ((portp->port.flags & ASYNC_SPD_MASK) == ASYNC_SPD_CUST)
   pp->baudout = (portp->baud_base / portp->custom_divisor);
 }
 if (pp->baudout > STL_MAXBAUD)
  pp->baudout = STL_MAXBAUD;
 pp->baudin = pp->baudout;

 switch (tiosp->c_cflag & CSIZE) {
 case 130:
  pp->csize = 5;
  break;
 case 129:
  pp->csize = 6;
  break;
 case 128:
  pp->csize = 7;
  break;
 default:
  pp->csize = 8;
  break;
 }

 if (tiosp->c_cflag & CSTOPB)
  pp->stopbs = PT_STOP2;
 else
  pp->stopbs = PT_STOP1;

 if (tiosp->c_cflag & PARENB) {
  if (tiosp->c_cflag & PARODD)
   pp->parity = PT_ODDPARITY;
  else
   pp->parity = PT_EVENPARITY;
 } else {
  pp->parity = PT_NOPARITY;
 }




 if (tiosp->c_iflag & IXON) {
  pp->flow |= F_IXON;
  if (tiosp->c_iflag & IXANY)
   pp->flow |= F_IXANY;
 }
 if (tiosp->c_cflag & CRTSCTS)
  pp->flow |= (F_RTSFLOW | F_CTSFLOW);

 pp->startin = tiosp->c_cc[VSTART];
 pp->stopin = tiosp->c_cc[VSTOP];
 pp->startout = tiosp->c_cc[VSTART];
 pp->stopout = tiosp->c_cc[VSTOP];







 if (tiosp->c_iflag & IGNPAR)
  pp->iflag |= FI_IGNRXERRS;
 if (tiosp->c_iflag & IGNBRK)
  pp->iflag |= FI_IGNBREAK;

 portp->rxmarkmsk = 0;
 if (tiosp->c_iflag & (INPCK | PARMRK))
  pp->iflag |= FI_1MARKRXERRS;
 if (tiosp->c_iflag & BRKINT)
  portp->rxmarkmsk |= BRKINT;




 if (tiosp->c_cflag & CLOCAL)
  portp->port.flags &= ~ASYNC_CHECK_CD;
 else
  portp->port.flags |= ASYNC_CHECK_CD;




 pp->pflag = (portp->pflag & 0xffff);
 pp->vmin = (portp->pflag & P_RXIMIN) ? 1 : 0;
 pp->vtime = (portp->pflag & P_RXITIME) ? 1 : 0;
 pp->cc[1] = (portp->pflag & P_RXTHOLD) ? 1 : 0;
}
