
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_cli {int dummy; } ;
struct drm_file {struct nouveau_cli* driver_priv; } ;



__attribute__((used)) static inline struct nouveau_cli *
nouveau_cli(struct drm_file *fpriv)
{
 return fpriv ? fpriv->driver_priv : ((void*)0);
}
