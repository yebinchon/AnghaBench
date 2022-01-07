
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct nvbios {struct drm_device* dev; } ;
struct nouveau_drm {int dummy; } ;
struct drm_device {int dummy; } ;
struct bit_table {int (* parse_fn ) (struct drm_device*,struct nvbios*,struct bit_entry*) ;int id; } ;
struct bit_entry {int dummy; } ;


 int ENOSYS ;
 int NV_INFO (struct nouveau_drm*,char*,int ) ;
 scalar_t__ bit_table (struct drm_device*,int ,struct bit_entry*) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 int stub1 (struct drm_device*,struct nvbios*,struct bit_entry*) ;

__attribute__((used)) static int
parse_bit_table(struct nvbios *bios, const uint16_t bitoffset,
  struct bit_table *table)
{
 struct drm_device *dev = bios->dev;
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct bit_entry bitentry;

 if (bit_table(dev, table->id, &bitentry) == 0)
  return table->parse_fn(dev, bios, &bitentry);

 NV_INFO(drm, "BIT table '%c' not found\n", table->id);
 return -ENOSYS;
}
