
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct maple_device {scalar_t__ interval; scalar_t__ when; int busy; TYPE_1__ devinfo; } ;
struct device {int dummy; } ;


 int MAPLE_COMMAND_DEVINFO ;
 int MAPLE_COMMAND_GETCOND ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int be32_to_cpu (int ) ;
 scalar_t__ jiffies ;
 int maple_add_packet (struct maple_device*,int ,int ,int,int *) ;
 scalar_t__ maple_pnp_time ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 struct maple_device* to_maple_dev (struct device*) ;

__attribute__((used)) static int setup_maple_commands(struct device *device, void *ignored)
{
 int add;
 struct maple_device *mdev = to_maple_dev(device);
 if (mdev->interval > 0 && atomic_read(&mdev->busy) == 0 &&
  time_after(jiffies, mdev->when)) {

  add = maple_add_packet(mdev,
   be32_to_cpu(mdev->devinfo.function),
   MAPLE_COMMAND_GETCOND, 1, ((void*)0));
  if (!add)
   mdev->when = jiffies + mdev->interval;
 } else {
  if (time_after(jiffies, maple_pnp_time))



   if (atomic_read(&mdev->busy) == 0) {
    atomic_set(&mdev->busy, 1);
    maple_add_packet(mdev, 0,
     MAPLE_COMMAND_DEVINFO, 0, ((void*)0));
   }
 }
 return 0;
}
