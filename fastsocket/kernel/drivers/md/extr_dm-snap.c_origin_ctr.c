
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {char* error; int num_flush_requests; struct dm_dev* private; int table; } ;
struct dm_dev {int dummy; } ;


 int EINVAL ;
 int dm_get_device (struct dm_target*,char*,int ,struct dm_dev**) ;
 int dm_table_get_mode (int ) ;

__attribute__((used)) static int origin_ctr(struct dm_target *ti, unsigned int argc, char **argv)
{
 int r;
 struct dm_dev *dev;

 if (argc != 1) {
  ti->error = "origin: incorrect number of arguments";
  return -EINVAL;
 }

 r = dm_get_device(ti, argv[0], dm_table_get_mode(ti->table), &dev);
 if (r) {
  ti->error = "Cannot get target device";
  return r;
 }

 ti->private = dev;
 ti->num_flush_requests = 1;

 return 0;
}
