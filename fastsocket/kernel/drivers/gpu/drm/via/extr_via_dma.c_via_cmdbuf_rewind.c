
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drm_via_private_t ;


 int via_cmdbuf_jump (int *) ;

__attribute__((used)) static void via_cmdbuf_rewind(drm_via_private_t *dev_priv)
{
 via_cmdbuf_jump(dev_priv);
}
