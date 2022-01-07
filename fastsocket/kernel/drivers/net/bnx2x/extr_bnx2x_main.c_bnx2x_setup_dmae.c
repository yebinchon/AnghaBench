
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dmae_lock; scalar_t__ dmae_ready; } ;


 int spin_lock_init (int *) ;

__attribute__((used)) static void bnx2x_setup_dmae(struct bnx2x *bp)
{
 bp->dmae_ready = 0;
 spin_lock_init(&bp->dmae_lock);
}
