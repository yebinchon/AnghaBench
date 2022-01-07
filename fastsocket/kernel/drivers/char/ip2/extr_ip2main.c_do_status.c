
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct work_struct {int dummy; } ;
typedef TYPE_4__* i2ChanStrPtr ;
struct TYPE_16__ {unsigned char real_raw; TYPE_3__* termios; TYPE_2__* ldisc; int read_wait; } ;
struct TYPE_15__ {int flags; TYPE_5__* pTTY; int open_wait; scalar_t__ wopen; int delta_msr_wait; } ;
struct TYPE_14__ {int c_cflag; } ;
struct TYPE_12__ {int (* receive_buf ) (TYPE_5__*,unsigned char*,char*,int) ;} ;
struct TYPE_13__ {TYPE_1__ ops; } ;


 int ASYNC_CHECK_CD ;
 int CHANN ;
 int CLOCAL ;
 int I2_BRK ;
 int I2_DCD ;
 int I2_DCTS ;
 int I2_DDCD ;
 int I2_DDSR ;
 int I2_DRI ;
 int I2_FRA ;
 int I2_OVR ;
 int I2_PAR ;
 int ITRC_STATUS ;
 scalar_t__ I_BRKINT (TYPE_5__*) ;
 scalar_t__ I_IGNBRK (TYPE_5__*) ;
 int SIGINT ;
 char TTY_BREAK ;
 char TTY_FRAME ;
 char TTY_NORMAL ;
 char TTY_OVERRUN ;
 char TTY_PARITY ;
 TYPE_4__* container_of (struct work_struct*,int ,int ) ;
 int i2ChanStr ;
 int i2GetStatus (TYPE_4__*,int) ;
 int ip2trace (int ,int ,int,int,...) ;
 int isig (int ,TYPE_5__*,int) ;
 int stub1 (TYPE_5__*,unsigned char*,char*,int) ;
 unsigned char the_char ;
 int tqueue_status ;
 int tty_hangup (TYPE_5__*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void do_status(struct work_struct *work)
{
 i2ChanStrPtr pCh = container_of(work, i2ChanStr, tqueue_status);
 int status;

 status = i2GetStatus( pCh, (I2_BRK|I2_PAR|I2_FRA|I2_OVR) );

 ip2trace (CHANN, ITRC_STATUS, 21, 1, status );

 if (pCh->pTTY && (status & (I2_BRK|I2_PAR|I2_FRA|I2_OVR)) ) {
  if ( (status & I2_BRK) ) {

   if (I_IGNBRK(pCh->pTTY))
    goto skip_this;
   if (I_BRKINT(pCh->pTTY)) {
    isig(SIGINT, pCh->pTTY, 1);
    goto skip_this;
   }
   wake_up_interruptible(&pCh->pTTY->read_wait);
  }
 }
skip_this:

 if ( status & (I2_DDCD | I2_DDSR | I2_DCTS | I2_DRI) ) {
  wake_up_interruptible(&pCh->delta_msr_wait);

  if ( (pCh->flags & ASYNC_CHECK_CD) && (status & I2_DDCD) ) {
   if ( status & I2_DCD ) {
    if ( pCh->wopen ) {
     wake_up_interruptible ( &pCh->open_wait );
    }
   } else {
    if (pCh->pTTY && (!(pCh->pTTY->termios->c_cflag & CLOCAL)) ) {
     tty_hangup( pCh->pTTY );
    }
   }
  }
 }

 ip2trace (CHANN, ITRC_STATUS, 26, 0 );
}
