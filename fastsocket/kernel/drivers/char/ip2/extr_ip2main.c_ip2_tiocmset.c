
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {size_t index; } ;
struct file {int dummy; } ;
typedef TYPE_1__* i2ChanStrPtr ;
struct TYPE_4__ {int pMyBord; int dataSetOut; } ;


 int CMD_DTRDN ;
 int CMD_DTRUP ;
 int CMD_RTSDN ;
 int CMD_RTSUP ;
 TYPE_1__** DevTable ;
 int ENODEV ;
 int I2_DTR ;
 int I2_RTS ;
 int PTYPE_INLINE ;
 unsigned int TIOCM_DTR ;
 unsigned int TIOCM_RTS ;
 int i2QueueCommands (int ,TYPE_1__*,int,int,int ) ;
 int serviceOutgoingFifo (int ) ;

__attribute__((used)) static int ip2_tiocmset(struct tty_struct *tty, struct file *file,
   unsigned int set, unsigned int clear)
{
 i2ChanStrPtr pCh = DevTable[tty->index];

 if (pCh == ((void*)0))
  return -ENODEV;

 if (set & TIOCM_RTS) {
  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_RTSUP);
  pCh->dataSetOut |= I2_RTS;
 }
 if (set & TIOCM_DTR) {
  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_DTRUP);
  pCh->dataSetOut |= I2_DTR;
 }

 if (clear & TIOCM_RTS) {
  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_RTSDN);
  pCh->dataSetOut &= ~I2_RTS;
 }
 if (clear & TIOCM_DTR) {
  i2QueueCommands(PTYPE_INLINE, pCh, 100, 1, CMD_DTRDN);
  pCh->dataSetOut &= ~I2_DTR;
 }
 serviceOutgoingFifo( pCh->pMyBord );
 return 0;
}
