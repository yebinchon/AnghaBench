
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct spu_state {scalar_t__* spu_chnldata_RW; scalar_t__* spu_chnlcnt_RW; } ;
struct spu_context {struct spu_state csa; } ;



__attribute__((used)) static u64 spufs_event_status_get(struct spu_context *ctx)
{
 struct spu_state *state = &ctx->csa;
 u64 stat;
 stat = state->spu_chnlcnt_RW[0];
 if (stat)
  return state->spu_chnldata_RW[0];
 return 0;
}
