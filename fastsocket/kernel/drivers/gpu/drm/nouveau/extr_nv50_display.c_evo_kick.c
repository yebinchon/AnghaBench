
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int user; } ;
struct nv50_dmac {int lock; int * ptr; TYPE_1__ base; } ;


 int mutex_unlock (int *) ;
 int nv_wo32 (int ,int,int) ;

__attribute__((used)) static void
evo_kick(u32 *push, void *evoc)
{
 struct nv50_dmac *dmac = evoc;
 nv_wo32(dmac->base.user, 0x0000, (push - dmac->ptr) << 2);
 mutex_unlock(&dmac->lock);
}
