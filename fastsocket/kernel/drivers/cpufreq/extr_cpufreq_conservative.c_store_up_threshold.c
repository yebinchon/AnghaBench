
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {unsigned int down_threshold; unsigned int up_threshold; } ;


 size_t EINVAL ;
 int dbs_mutex ;
 TYPE_1__ dbs_tuners_ins ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static ssize_t store_up_threshold(struct cpufreq_policy *unused,
  const char *buf, size_t count)
{
 unsigned int input;
 int ret;
 ret = sscanf(buf, "%u", &input);

 mutex_lock(&dbs_mutex);
 if (ret != 1 || input > 100 ||
   input <= dbs_tuners_ins.down_threshold) {
  mutex_unlock(&dbs_mutex);
  return -EINVAL;
 }

 dbs_tuners_ins.up_threshold = input;
 mutex_unlock(&dbs_mutex);

 return count;
}
