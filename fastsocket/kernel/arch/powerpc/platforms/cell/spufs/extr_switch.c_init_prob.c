
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mb_stat_R; int spu_runcntl_RW; } ;
struct spu_state {int* spu_chnlcnt_RW; TYPE_1__ prob; } ;


 int SPU_RUNCNTL_STOP ;

__attribute__((used)) static void init_prob(struct spu_state *csa)
{
 csa->spu_chnlcnt_RW[9] = 1;
 csa->spu_chnlcnt_RW[21] = 16;
 csa->spu_chnlcnt_RW[23] = 1;
 csa->spu_chnlcnt_RW[28] = 1;
 csa->spu_chnlcnt_RW[30] = 1;
 csa->prob.spu_runcntl_RW = SPU_RUNCNTL_STOP;
 csa->prob.mb_stat_R = 0x000400;
}
