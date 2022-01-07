
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_xor_chan {int lock; } ;


 int __mv_xor_slot_cleanup (struct mv_xor_chan*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
mv_xor_slot_cleanup(struct mv_xor_chan *mv_chan)
{
 spin_lock_bh(&mv_chan->lock);
 __mv_xor_slot_cleanup(mv_chan);
 spin_unlock_bh(&mv_chan->lock);
}
