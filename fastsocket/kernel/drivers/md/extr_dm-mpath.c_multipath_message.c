
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int work_mutex; } ;
struct dm_target {int table; scalar_t__ private; } ;
struct dm_dev {int dummy; } ;
typedef int action_fn ;


 int DMWARN (char*,...) ;
 int EBUSY ;
 int EINVAL ;
 int action_dev (struct multipath*,struct dm_dev*,int ) ;
 int bypass_pg_num (struct multipath*,char*,int) ;
 int dm_get_device (struct dm_target*,char*,int ,struct dm_dev**) ;
 int dm_put_device (struct dm_target*,struct dm_dev*) ;
 scalar_t__ dm_suspended (struct dm_target*) ;
 int dm_table_get_mode (int ) ;
 int fail_path ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_if_no_path (struct multipath*,int,int ) ;
 int reinstate_path ;
 int strcasecmp (char*,char*) ;
 int switch_pg_num (struct multipath*,char*) ;

__attribute__((used)) static int multipath_message(struct dm_target *ti, unsigned argc, char **argv)
{
 int r = -EINVAL;
 struct dm_dev *dev;
 struct multipath *m = (struct multipath *) ti->private;
 action_fn action;

 mutex_lock(&m->work_mutex);

 if (dm_suspended(ti)) {
  r = -EBUSY;
  goto out;
 }

 if (argc == 1) {
  if (!strcasecmp(argv[0], "queue_if_no_path")) {
   r = queue_if_no_path(m, 1, 0);
   goto out;
  } else if (!strcasecmp(argv[0], "fail_if_no_path")) {
   r = queue_if_no_path(m, 0, 0);
   goto out;
  }
 }

 if (argc != 2) {
  DMWARN("Unrecognised multipath message received.");
  goto out;
 }

 if (!strcasecmp(argv[0], "disable_group")) {
  r = bypass_pg_num(m, argv[1], 1);
  goto out;
 } else if (!strcasecmp(argv[0], "enable_group")) {
  r = bypass_pg_num(m, argv[1], 0);
  goto out;
 } else if (!strcasecmp(argv[0], "switch_group")) {
  r = switch_pg_num(m, argv[1]);
  goto out;
 } else if (!strcasecmp(argv[0], "reinstate_path"))
  action = reinstate_path;
 else if (!strcasecmp(argv[0], "fail_path"))
  action = fail_path;
 else {
  DMWARN("Unrecognised multipath message received.");
  goto out;
 }

 r = dm_get_device(ti, argv[1], dm_table_get_mode(ti->table), &dev);
 if (r) {
  DMWARN("message: error getting device %s",
         argv[1]);
  goto out;
 }

 r = action_dev(m, dev, action);

 dm_put_device(ti, dev);

out:
 mutex_unlock(&m->work_mutex);
 return r;
}
