
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int user; } ;
struct nv50_dmac {int* ptr; TYPE_1__ base; int lock; } ;


 int NV_ERROR (int ,char*) ;
 int PAGE_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nv_ro32 (int ,int) ;
 int nv_wait (int ,int,int ,int) ;
 int nv_wo32 (int ,int,int) ;

__attribute__((used)) static u32 *
evo_wait(void *evoc, int nr)
{
 struct nv50_dmac *dmac = evoc;
 u32 put = nv_ro32(dmac->base.user, 0x0000) / 4;

 mutex_lock(&dmac->lock);
 if (put + nr >= (PAGE_SIZE / 4) - 8) {
  dmac->ptr[put] = 0x20000000;

  nv_wo32(dmac->base.user, 0x0000, 0x00000000);
  if (!nv_wait(dmac->base.user, 0x0004, ~0, 0x00000000)) {
   mutex_unlock(&dmac->lock);
   NV_ERROR(dmac->base.user, "channel stalled\n");
   return ((void*)0);
  }

  put = 0;
 }

 return dmac->ptr + put;
}
