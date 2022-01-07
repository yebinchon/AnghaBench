
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nouveau_mxm {int * mxms; } ;
struct mxm_shadow_h {scalar_t__ (* exec ) (struct nouveau_mxm*,int ) ;scalar_t__ name; } ;


 int ENOENT ;
 struct mxm_shadow_h* _mxm_shadow ;
 int kfree (int *) ;
 scalar_t__ mxms_valid (struct nouveau_mxm*) ;
 int nv_debug (struct nouveau_mxm*,char*,scalar_t__) ;
 scalar_t__ stub1 (struct nouveau_mxm*,int ) ;

__attribute__((used)) static int
mxm_shadow(struct nouveau_mxm *mxm, u8 version)
{
 struct mxm_shadow_h *shadow = _mxm_shadow;
 do {
  nv_debug(mxm, "checking %s\n", shadow->name);
  if (shadow->exec(mxm, version)) {
   if (mxms_valid(mxm))
    return 0;
   kfree(mxm->mxms);
   mxm->mxms = ((void*)0);
  }
 } while ((++shadow)->name);
 return -ENOENT;
}
