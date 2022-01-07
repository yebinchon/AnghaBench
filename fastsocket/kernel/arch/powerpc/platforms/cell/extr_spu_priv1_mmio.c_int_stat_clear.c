
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu {TYPE_1__* priv1; } ;
struct TYPE_2__ {int * int_stat_RW; } ;


 int out_be64 (int *,int ) ;

__attribute__((used)) static void int_stat_clear(struct spu *spu, int class, u64 stat)
{
 out_be64(&spu->priv1->int_stat_RW[class], stat);
}
