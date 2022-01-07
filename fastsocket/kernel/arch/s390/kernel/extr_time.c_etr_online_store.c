
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysdev_attribute {int dummy; } ;
struct sys_device {int dummy; } ;
typedef size_t ssize_t ;


 int CLOCK_SYNC_ETR ;
 int CLOCK_SYNC_HAS_ETR ;
 size_t EINVAL ;
 size_t EOPNOTSUPP ;
 int ETR_EVENT_PORT0_CHANGE ;
 int ETR_EVENT_PORT1_CHANGE ;
 int clear_bit (int ,int *) ;
 int clock_sync_flags ;
 int clock_sync_mutex ;
 int etr_events ;
 struct sys_device etr_port0_dev ;
 unsigned int etr_port0_online ;
 unsigned int etr_port1_online ;
 int etr_work ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_work (int ,int *) ;
 int set_bit (int ,int *) ;
 unsigned int simple_strtoul (char const*,int *,int ) ;
 int test_bit (int ,int *) ;
 int time_sync_wq ;

__attribute__((used)) static ssize_t etr_online_store(struct sys_device *dev,
    struct sysdev_attribute *attr,
    const char *buf, size_t count)
{
 unsigned int value;

 value = simple_strtoul(buf, ((void*)0), 0);
 if (value != 0 && value != 1)
  return -EINVAL;
 if (!test_bit(CLOCK_SYNC_HAS_ETR, &clock_sync_flags))
  return -EOPNOTSUPP;
 mutex_lock(&clock_sync_mutex);
 if (dev == &etr_port0_dev) {
  if (etr_port0_online == value)
   goto out;
  etr_port0_online = value;
  if (etr_port0_online && etr_port1_online)
   set_bit(CLOCK_SYNC_ETR, &clock_sync_flags);
  else
   clear_bit(CLOCK_SYNC_ETR, &clock_sync_flags);
  set_bit(ETR_EVENT_PORT0_CHANGE, &etr_events);
  queue_work(time_sync_wq, &etr_work);
 } else {
  if (etr_port1_online == value)
   goto out;
  etr_port1_online = value;
  if (etr_port0_online && etr_port1_online)
   set_bit(CLOCK_SYNC_ETR, &clock_sync_flags);
  else
   clear_bit(CLOCK_SYNC_ETR, &clock_sync_flags);
  set_bit(ETR_EVENT_PORT1_CHANGE, &etr_events);
  queue_work(time_sync_wq, &etr_work);
 }
out:
 mutex_unlock(&clock_sync_mutex);
 return count;
}
