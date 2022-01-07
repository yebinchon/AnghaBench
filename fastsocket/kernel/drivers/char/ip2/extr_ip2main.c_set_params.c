
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tcflag_t ;
struct ktermios {int c_lflag; int c_cflag; int c_iflag; char* c_cc; } ;
typedef TYPE_2__* i2ChanStrPtr ;
struct TYPE_10__ {TYPE_1__* termios; } ;
struct TYPE_9__ {int dataSetOut; int flags; scalar_t__ speed; int BaudBase; int BaudDivisor; TYPE_6__* pTTY; } ;
struct TYPE_8__ {int c_lflag; int c_cflag; int c_iflag; } ;


 int ASYNC_CHECK_CD ;
 int ASYNC_SPD_CUST ;
 int ASYNC_SPD_HI ;
 int ASYNC_SPD_MASK ;
 int ASYNC_SPD_VHI ;
 int BRKINT ;
 int CBAUD ;
 scalar_t__ CBR_110 ;
 void* CBR_115200 ;
 scalar_t__ CBR_1200 ;
 scalar_t__ CBR_134 ;
 scalar_t__ CBR_150 ;
 scalar_t__ CBR_153600 ;
 scalar_t__ CBR_1800 ;
 scalar_t__ CBR_19200 ;
 scalar_t__ CBR_200 ;
 scalar_t__ CBR_230400 ;
 scalar_t__ CBR_2400 ;
 scalar_t__ CBR_300 ;
 scalar_t__ CBR_307200 ;
 scalar_t__ CBR_38400 ;
 scalar_t__ CBR_460800 ;
 scalar_t__ CBR_4800 ;
 scalar_t__ CBR_50 ;
 void* CBR_57600 ;
 scalar_t__ CBR_600 ;
 scalar_t__ CBR_75 ;
 void* CBR_921600 ;
 void* CBR_9600 ;
 scalar_t__ CBR_C1 ;
 int CIX_NONE ;
 int CIX_XANY ;
 int CIX_XON ;
 int CLOCAL ;
 int CMD_BAUD_DEF1 (int) ;
 int CMD_BRK_NREP ;
 int CMD_BRK_REP (char) ;
 int CMD_CTSFL_DSAB ;
 int CMD_CTSFL_ENAB ;
 int CMD_DCD_NREP ;
 int CMD_DCD_REP ;
 int CMD_DEF_IXOFF (char) ;
 int CMD_DEF_IXON (char) ;
 int CMD_DEF_OXOFF (char) ;
 int CMD_DEF_OXON (char) ;
 int CMD_DTRDN ;
 int CMD_DTRUP ;
 int CMD_ISTRIP_OPT (char) ;
 int CMD_IXON_OPT (int ) ;
 int CMD_OXON_OPT (int ) ;
 int CMD_PARCHK (int ) ;
 int CMD_PAUSE (int) ;
 int CMD_RTSDN ;
 int CMD_RTSFL_DSAB ;
 int CMD_RTSFL_ENAB ;
 int CMD_RTSUP ;
 int CMD_SETBAUD (scalar_t__) ;
 int CMD_SETBITS (int) ;
 int CMD_SETPAR (int ) ;
 int CMD_SETSTOP (int ) ;
 int CMD_SET_ERROR (char) ;
 int COX_NONE ;
 int COX_XON ;
 int CPK_DSAB ;
 int CPK_ENAB ;
 int CRTSCTS ;




 int CSIZE ;
 int CSP_EV ;
 int CSP_NP ;
 int CSP_OD ;
 int CSTOPB ;
 int CST_1 ;
 int CST_2 ;
 int CSZ_5 ;
 int CSZ_6 ;
 int CSZ_7 ;
 int CSZ_8 ;
 int I2_DTR ;
 int I2_RTS ;
 int IGNBRK ;
 int IGNPAR ;
 int INPCK ;
 int ISTRIP ;
 int IXANY ;
 int IXOFF ;
 int IXON ;
 int PARENB ;
 int PARMRK ;
 int PARODD ;
 int PTYPE_BYPASS ;
 int PTYPE_INLINE ;
 char START_CHAR (TYPE_6__*) ;
 char STOP_CHAR (TYPE_6__*) ;
 size_t VSTART ;
 size_t VSTOP ;
 char __DISABLED_CHAR ;
 int i2DrainOutput (TYPE_2__*,int) ;
 int i2QueueCommands (int ,TYPE_2__*,int,int,int ,...) ;

__attribute__((used)) static void
set_params( i2ChanStrPtr pCh, struct ktermios *o_tios )
{
 tcflag_t cflag, iflag, lflag;
 char stop_char, start_char;
 struct ktermios dummy;

 lflag = pCh->pTTY->termios->c_lflag;
 cflag = pCh->pTTY->termios->c_cflag;
 iflag = pCh->pTTY->termios->c_iflag;

 if (o_tios == ((void*)0)) {
  dummy.c_lflag = ~lflag;
  dummy.c_cflag = ~cflag;
  dummy.c_iflag = ~iflag;
  o_tios = &dummy;
 }

 {
  switch ( cflag & CBAUD ) {
  case 154:
   i2QueueCommands( PTYPE_BYPASS, pCh, 100, 2, CMD_RTSDN, CMD_DTRDN);
   pCh->dataSetOut &= ~(I2_DTR | I2_RTS);
   i2QueueCommands( PTYPE_INLINE, pCh, 100, 1, CMD_PAUSE(25));
   pCh->pTTY->termios->c_cflag |= (CBAUD & o_tios->c_cflag);
   goto service_it;
   break;
  case 140:




   if ( ( pCh->flags & ASYNC_SPD_MASK ) == ASYNC_SPD_HI ) {
    pCh->speed = CBR_57600;
   } else if ( (pCh->flags & ASYNC_SPD_MASK) == ASYNC_SPD_VHI ) {
    pCh->speed = CBR_115200;
   } else if ( (pCh->flags & ASYNC_SPD_MASK) == ASYNC_SPD_CUST ) {
    pCh->speed = CBR_C1;
   } else {
    pCh->speed = CBR_38400;
   }
   break;
  case 137: pCh->speed = CBR_50; break;
  case 134: pCh->speed = CBR_75; break;
  case 153: pCh->speed = CBR_110; break;
  case 150: pCh->speed = CBR_134; break;
  case 149: pCh->speed = CBR_150; break;
  case 145: pCh->speed = CBR_200; break;
  case 142: pCh->speed = CBR_300; break;
  case 135: pCh->speed = CBR_600; break;
  case 151: pCh->speed = CBR_1200; break;
  case 147: pCh->speed = CBR_1800; break;
  case 143: pCh->speed = CBR_2400; break;
  case 138: pCh->speed = CBR_4800; break;
  case 132: pCh->speed = CBR_9600; break;
  case 146: pCh->speed = CBR_19200; break;
  case 136: pCh->speed = CBR_57600; break;
  case 152: pCh->speed = CBR_115200; break;
  case 148: pCh->speed = CBR_153600; break;
  case 144: pCh->speed = CBR_230400; break;
  case 141: pCh->speed = CBR_307200; break;
  case 139: pCh->speed = CBR_460800; break;
  case 133: pCh->speed = CBR_921600; break;
  default: pCh->speed = CBR_9600; break;
  }
  if ( pCh->speed == CBR_C1 ) {

   int bps = pCh->BaudBase / pCh->BaudDivisor;
   if ( bps == 921600 ) {
    pCh->speed = CBR_921600;
   } else {
    bps = bps/10;
    i2QueueCommands( PTYPE_INLINE, pCh, 100, 1, CMD_BAUD_DEF1(bps) );
   }
  }
  i2QueueCommands( PTYPE_INLINE, pCh, 100, 1, CMD_SETBAUD(pCh->speed));

  i2QueueCommands ( PTYPE_INLINE, pCh, 100, 2, CMD_DTRUP, CMD_RTSUP);
  pCh->dataSetOut |= (I2_DTR | I2_RTS);
 }
 if ( (CSTOPB & cflag) ^ (CSTOPB & o_tios->c_cflag))
 {
  i2QueueCommands ( PTYPE_INLINE, pCh, 100, 1,
   CMD_SETSTOP( ( cflag & CSTOPB ) ? CST_2 : CST_1));
 }
 if (((PARENB|PARODD) & cflag) ^ ((PARENB|PARODD) & o_tios->c_cflag))
 {
  i2QueueCommands ( PTYPE_INLINE, pCh, 100, 1,
   CMD_SETPAR(
    (cflag & PARENB ? (cflag & PARODD ? CSP_OD : CSP_EV) : CSP_NP)
   )
  );
 }

 if ( (CSIZE & cflag)^(CSIZE & o_tios->c_cflag))
 {
  int datasize;
  switch ( cflag & CSIZE ) {
  case 131: datasize = CSZ_5; break;
  case 130: datasize = CSZ_6; break;
  case 129: datasize = CSZ_7; break;
  case 128: datasize = CSZ_8; break;
  default: datasize = CSZ_5; break;
  }
  i2QueueCommands ( PTYPE_INLINE, pCh, 100, 1, CMD_SETBITS(datasize) );
 }

 if ( (cflag & CRTSCTS) ) {
  i2QueueCommands(PTYPE_INLINE, pCh, 100,
      2, CMD_CTSFL_ENAB, CMD_RTSFL_ENAB);
 } else {
  i2QueueCommands(PTYPE_INLINE, pCh, 100,
      2, CMD_CTSFL_DSAB, CMD_RTSFL_DSAB);
 }



 stop_char = STOP_CHAR(pCh->pTTY);
 start_char = START_CHAR(pCh->pTTY);


 if (stop_char == __DISABLED_CHAR )
 {
  stop_char = ~__DISABLED_CHAR;
 }
 if (start_char == __DISABLED_CHAR )
 {
  start_char = ~__DISABLED_CHAR;
 }


 if ( o_tios->c_cc[VSTART] != start_char )
 {
  i2QueueCommands(PTYPE_BYPASS, pCh, 100, 1, CMD_DEF_IXON(start_char));
  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_DEF_OXON(start_char));
 }
 if ( o_tios->c_cc[VSTOP] != stop_char )
 {
   i2QueueCommands(PTYPE_BYPASS, pCh, 100, 1, CMD_DEF_IXOFF(stop_char));
   i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_DEF_OXOFF(stop_char));
 }
 if (stop_char == __DISABLED_CHAR )
 {
  stop_char = ~__DISABLED_CHAR;
  goto no_xoff;
 }
 if ((iflag & (IXOFF))^(o_tios->c_iflag & (IXOFF)))
 {
  if ( iflag & IXOFF ) {
   i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_OXON_OPT(COX_XON));
  } else {
no_xoff:
   i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_OXON_OPT(COX_NONE));
  }
 }
 if (start_char == __DISABLED_CHAR )
 {
  goto no_xon;
 }
 if ((iflag & (IXON|IXANY)) ^ (o_tios->c_iflag & (IXON|IXANY)))
 {
  if ( iflag & IXON ) {
   if ( iflag & IXANY ) {
    i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_IXON_OPT(CIX_XANY));
   } else {
    i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_IXON_OPT(CIX_XON));
   }
  } else {
no_xon:
   i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_IXON_OPT(CIX_NONE));
  }
 }
 if ( (iflag & ISTRIP) ^ ( o_tios->c_iflag & (ISTRIP)) )
 {
  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1,
    CMD_ISTRIP_OPT((iflag & ISTRIP ? 1 : 0)));
 }
 if ( (iflag & INPCK) ^ ( o_tios->c_iflag & (INPCK)) )
 {
  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1,
    CMD_PARCHK((iflag & INPCK) ? CPK_ENAB : CPK_DSAB));
 }

 if ( (iflag & (IGNBRK|PARMRK|BRKINT|IGNPAR))
   ^ ( o_tios->c_iflag & (IGNBRK|PARMRK|BRKINT|IGNPAR)) )
 {
  char brkrpt = 0;
  char parrpt = 0;

  if ( iflag & IGNBRK ) {

   i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_BRK_NREP);
  } else {
   if ( iflag & BRKINT ) {
    if ( iflag & PARMRK ) {
     brkrpt = 0x0a;
    } else {
     brkrpt = 0x1a;
    }
    brkrpt |= 0x04;
   } else {
    if ( iflag & PARMRK ) {
     brkrpt = 0x0b;
    } else {
     brkrpt = 0x01;
    }
   }
   i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_BRK_REP(brkrpt));
  }

  if (iflag & IGNPAR) {
   parrpt = 0x20;


  } else {
   if ( iflag & PARMRK ) {



    parrpt = 0x04 ;
    i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_ISTRIP_OPT((char)0));
   } else {
    parrpt = 0x03;
   }
  }
  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_SET_ERROR(parrpt));
 }
 if (cflag & CLOCAL) {

  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_DCD_NREP);
  pCh->flags &= ~ASYNC_CHECK_CD;
 } else {
  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_DCD_REP);
  pCh->flags |= ASYNC_CHECK_CD;
 }

service_it:
 i2DrainOutput( pCh, 100 );
}
