
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int dummy; } ;
struct dm_target {scalar_t__ private; } ;


 int queue_if_no_path (struct multipath*,int ,int) ;

__attribute__((used)) static void multipath_presuspend(struct dm_target *ti)
{
 struct multipath *m = (struct multipath *) ti->private;

 queue_if_no_path(m, 0, 1);
}
