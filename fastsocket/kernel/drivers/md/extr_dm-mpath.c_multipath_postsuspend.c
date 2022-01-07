
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int work_mutex; } ;
struct dm_target {struct multipath* private; } ;


 int flush_multipath_work (struct multipath*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void multipath_postsuspend(struct dm_target *ti)
{
 struct multipath *m = ti->private;

 mutex_lock(&m->work_mutex);
 flush_multipath_work(m);
 mutex_unlock(&m->work_mutex);
}
