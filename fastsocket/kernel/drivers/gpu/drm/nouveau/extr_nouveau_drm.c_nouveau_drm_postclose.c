
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_cli {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 struct nouveau_cli* nouveau_cli (struct drm_file*) ;
 int nouveau_cli_destroy (struct nouveau_cli*) ;

__attribute__((used)) static void
nouveau_drm_postclose(struct drm_device *dev, struct drm_file *fpriv)
{
 struct nouveau_cli *cli = nouveau_cli(fpriv);
 nouveau_cli_destroy(cli);
}
