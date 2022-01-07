
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct spu {TYPE_1__* priv1; } ;
struct TYPE_2__ {int mfc_sr1_RW; } ;


 int out_be64 (int *,int ) ;

__attribute__((used)) static void mfc_sr1_set(struct spu *spu, u64 sr1)
{
 out_be64(&spu->priv1->mfc_sr1_RW, sr1);
}
