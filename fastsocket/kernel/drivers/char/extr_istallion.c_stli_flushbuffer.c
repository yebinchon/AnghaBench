
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tty_struct {struct stliport* driver_data; } ;
struct stliport {size_t brdnr; int state; } ;
struct stlibrd {int dummy; } ;


 int A_FLUSH ;
 unsigned long FLUSHRX ;
 unsigned long FLUSHTX ;
 int ST_CMDING ;
 int ST_DOFLUSHRX ;
 int ST_DOFLUSHTX ;
 int __stli_sendcmd (struct stlibrd*,struct stliport*,int ,unsigned long*,int,int ) ;
 int brd_lock ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct stlibrd** stli_brds ;
 size_t stli_nrbrds ;
 scalar_t__ stli_txcookrealsize ;
 scalar_t__ stli_txcooksize ;
 struct tty_struct* stli_txcooktty ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void stli_flushbuffer(struct tty_struct *tty)
{
 struct stliport *portp;
 struct stlibrd *brdp;
 unsigned long ftype, flags;

 portp = tty->driver_data;
 if (portp == ((void*)0))
  return;
 if (portp->brdnr >= stli_nrbrds)
  return;
 brdp = stli_brds[portp->brdnr];
 if (brdp == ((void*)0))
  return;

 spin_lock_irqsave(&brd_lock, flags);
 if (tty == stli_txcooktty) {
  stli_txcooktty = ((void*)0);
  stli_txcooksize = 0;
  stli_txcookrealsize = 0;
 }
 if (test_bit(ST_CMDING, &portp->state)) {
  set_bit(ST_DOFLUSHTX, &portp->state);
 } else {
  ftype = FLUSHTX;
  if (test_bit(ST_DOFLUSHRX, &portp->state)) {
   ftype |= FLUSHRX;
   clear_bit(ST_DOFLUSHRX, &portp->state);
  }
  __stli_sendcmd(brdp, portp, A_FLUSH, &ftype, sizeof(u32), 0);
 }
 spin_unlock_irqrestore(&brd_lock, flags);
 tty_wakeup(tty);
}
