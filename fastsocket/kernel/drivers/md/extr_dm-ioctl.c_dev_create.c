
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_ioctl {int flags; scalar_t__* uuid; int name; int dev; } ;


 int DM_ANY_MINOR ;
 int DM_INACTIVE_PRESENT_FLAG ;
 int DM_PERSISTENT_DEV_FLAG ;
 int MINOR (int ) ;
 int __dev_status (struct mapped_device*,struct dm_ioctl*) ;
 int check_name (int ) ;
 int dm_create (int,struct mapped_device**) ;
 int dm_destroy (struct mapped_device*) ;
 int dm_hash_insert (int ,scalar_t__*,struct mapped_device*) ;
 int dm_put (struct mapped_device*) ;
 int huge_decode_dev (int ) ;

__attribute__((used)) static int dev_create(struct dm_ioctl *param, size_t param_size)
{
 int r, m = DM_ANY_MINOR;
 struct mapped_device *md;

 r = check_name(param->name);
 if (r)
  return r;

 if (param->flags & DM_PERSISTENT_DEV_FLAG)
  m = MINOR(huge_decode_dev(param->dev));

 r = dm_create(m, &md);
 if (r)
  return r;

 r = dm_hash_insert(param->name, *param->uuid ? param->uuid : ((void*)0), md);
 if (r) {
  dm_put(md);
  dm_destroy(md);
  return r;
 }

 param->flags &= ~DM_INACTIVE_PRESENT_FLAG;

 __dev_status(md, param);

 dm_put(md);

 return 0;
}
