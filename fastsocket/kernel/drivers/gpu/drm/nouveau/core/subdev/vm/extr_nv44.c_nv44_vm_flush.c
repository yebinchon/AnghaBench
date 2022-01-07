
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int limit; } ;
struct nv04_vmmgr_priv {TYPE_1__ base; } ;
struct nouveau_vm {scalar_t__ vmm; } ;


 int NV44_GART_PAGE ;
 int nv_error (struct nv04_vmmgr_priv*,char*,int ) ;
 int nv_rd32 (struct nv04_vmmgr_priv*,int) ;
 int nv_wait (struct nv04_vmmgr_priv*,int,int,int) ;
 int nv_wr32 (struct nv04_vmmgr_priv*,int,int) ;

__attribute__((used)) static void
nv44_vm_flush(struct nouveau_vm *vm)
{
 struct nv04_vmmgr_priv *priv = (void *)vm->vmm;
 nv_wr32(priv, 0x100814, priv->base.limit - NV44_GART_PAGE);
 nv_wr32(priv, 0x100808, 0x00000020);
 if (!nv_wait(priv, 0x100808, 0x00000001, 0x00000001))
  nv_error(priv, "timeout: 0x%08x\n", nv_rd32(priv, 0x100808));
 nv_wr32(priv, 0x100808, 0x00000000);
}
