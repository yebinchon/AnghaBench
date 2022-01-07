
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_thin_device {int id; } ;
typedef int dm_thin_id ;



dm_thin_id dm_thin_dev_id(struct dm_thin_device *td)
{
 return td->id;
}
