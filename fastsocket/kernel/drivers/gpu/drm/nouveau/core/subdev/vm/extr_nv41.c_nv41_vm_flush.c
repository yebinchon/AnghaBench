
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nv04_vmmgr_priv {int dummy; } ;
struct nouveau_vm {scalar_t__ vmm; } ;
struct TYPE_2__ {int mutex; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nv_rd32 (struct nv04_vmmgr_priv*,int) ;
 TYPE_1__* nv_subdev (struct nv04_vmmgr_priv*) ;
 int nv_wait (struct nv04_vmmgr_priv*,int,int,int) ;
 int nv_warn (struct nv04_vmmgr_priv*,char*,int ) ;
 int nv_wr32 (struct nv04_vmmgr_priv*,int,int) ;

__attribute__((used)) static void
nv41_vm_flush(struct nouveau_vm *vm)
{
 struct nv04_vmmgr_priv *priv = (void *)vm->vmm;

 mutex_lock(&nv_subdev(priv)->mutex);
 nv_wr32(priv, 0x100810, 0x00000022);
 if (!nv_wait(priv, 0x100810, 0x00000020, 0x00000020)) {
  nv_warn(priv, "flush timeout, 0x%08x\n",
   nv_rd32(priv, 0x100810));
 }
 nv_wr32(priv, 0x100810, 0x00000000);
 mutex_unlock(&nv_subdev(priv)->mutex);
}
