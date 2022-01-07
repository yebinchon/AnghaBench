
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_radeon_private {int r600_group_size; int r600_nbanks; int r600_npipes; } ;
struct drm_device {struct drm_radeon_private* dev_private; } ;



void r600_cs_legacy_get_tiling_conf(struct drm_device *dev, u32 *npipes, u32 *nbanks, u32 *group_size)
{
 struct drm_radeon_private *dev_priv = dev->dev_private;

 *npipes = dev_priv->r600_npipes;
 *nbanks = dev_priv->r600_nbanks;
 *group_size = dev_priv->r600_group_size;
}
