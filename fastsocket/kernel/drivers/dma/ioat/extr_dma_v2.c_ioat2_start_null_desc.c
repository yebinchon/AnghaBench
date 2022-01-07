
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioat2_dma_chan {int ring_lock; } ;


 int __ioat2_start_null_desc (struct ioat2_dma_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ioat2_start_null_desc(struct ioat2_dma_chan *ioat)
{
 spin_lock_bh(&ioat->ring_lock);
 __ioat2_start_null_desc(ioat);
 spin_unlock_bh(&ioat->ring_lock);
}
