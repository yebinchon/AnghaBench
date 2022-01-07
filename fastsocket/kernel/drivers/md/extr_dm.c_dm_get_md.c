
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
typedef int dev_t ;


 struct mapped_device* dm_find_md (int ) ;
 int dm_get (struct mapped_device*) ;

struct mapped_device *dm_get_md(dev_t dev)
{
 struct mapped_device *md = dm_find_md(dev);

 if (md)
  dm_get(md);

 return md;
}
