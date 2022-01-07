
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct linear_c {unsigned long long start; int dev; } ;
struct dm_target {char* error; int num_flush_requests; int num_discard_requests; struct linear_c* private; int table; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ dm_get_device (struct dm_target*,char*,int ,int *) ;
 int dm_table_get_mode (int ) ;
 int kfree (struct linear_c*) ;
 struct linear_c* kmalloc (int,int ) ;
 int sscanf (char*,char*,unsigned long long*,char*) ;

__attribute__((used)) static int linear_ctr(struct dm_target *ti, unsigned int argc, char **argv)
{
 struct linear_c *lc;
 unsigned long long tmp;
 char dummy;

 if (argc != 2) {
  ti->error = "Invalid argument count";
  return -EINVAL;
 }

 lc = kmalloc(sizeof(*lc), GFP_KERNEL);
 if (lc == ((void*)0)) {
  ti->error = "dm-linear: Cannot allocate linear context";
  return -ENOMEM;
 }

 if (sscanf(argv[1], "%llu%c", &tmp, &dummy) != 1) {
  ti->error = "dm-linear: Invalid device sector";
  goto bad;
 }
 lc->start = tmp;

 if (dm_get_device(ti, argv[0], dm_table_get_mode(ti->table), &lc->dev)) {
  ti->error = "dm-linear: Device lookup failed";
  goto bad;
 }

 ti->num_flush_requests = 1;
 ti->num_discard_requests = 1;
 ti->private = lc;
 return 0;

      bad:
 kfree(lc);
 return -EINVAL;
}
