
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu {TYPE_1__* priv1; } ;
struct TYPE_2__ {int * int_mask_RW; } ;


 int in_be64 (int *) ;
 int out_be64 (int *,int) ;

__attribute__((used)) static void int_mask_and(struct spu *spu, int class, u64 mask)
{
 u64 old_mask;

 old_mask = in_be64(&spu->priv1->int_mask_RW[class]);
 out_be64(&spu->priv1->int_mask_RW[class], old_mask & mask);
}
