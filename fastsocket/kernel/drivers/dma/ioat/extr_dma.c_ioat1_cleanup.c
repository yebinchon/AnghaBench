
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat_chan_common {int cleanup_lock; int completion; } ;
struct ioat_dma_chan {int desc_lock; struct ioat_chan_common base; } ;


 int __cleanup (struct ioat_dma_chan*,unsigned long) ;
 int ioat_cleanup_preamble (struct ioat_chan_common*,unsigned long*) ;
 int prefetch (int ) ;
 int spin_trylock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ioat1_cleanup(struct ioat_dma_chan *ioat)
{
 struct ioat_chan_common *chan = &ioat->base;
 unsigned long phys_complete;

 prefetch(chan->completion);

 if (!spin_trylock_bh(&chan->cleanup_lock))
  return;

 if (!ioat_cleanup_preamble(chan, &phys_complete)) {
  spin_unlock_bh(&chan->cleanup_lock);
  return;
 }

 if (!spin_trylock_bh(&ioat->desc_lock)) {
  spin_unlock_bh(&chan->cleanup_lock);
  return;
 }

 __cleanup(ioat, phys_complete);

 spin_unlock_bh(&ioat->desc_lock);
 spin_unlock_bh(&chan->cleanup_lock);
}
