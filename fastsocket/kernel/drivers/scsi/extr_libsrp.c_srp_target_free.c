
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target {int iu_queue; int srp_iu_size; int rx_ring_size; int rx_ring; int dev; } ;


 int srp_iu_pool_free (int *) ;
 int srp_ring_free (int ,int ,int ,int ) ;

void srp_target_free(struct srp_target *target)
{
 srp_ring_free(target->dev, target->rx_ring, target->rx_ring_size,
        target->srp_iu_size);
 srp_iu_pool_free(&target->iu_queue);
}
