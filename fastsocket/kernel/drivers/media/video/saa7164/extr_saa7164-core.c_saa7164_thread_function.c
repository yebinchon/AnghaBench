
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct tmFwInfoStruct {int dummy; } ;
struct saa7164_dev {int dummy; } ;


 int DBGLVL_THR ;
 int dprintk (int ,char*) ;
 int jiffies ;
 scalar_t__ jiffies_to_msecs (int ) ;
 scalar_t__ kthread_should_stop () ;
 int msleep_interruptible (int) ;
 int saa7164_api_collect_debug (struct saa7164_dev*) ;
 int saa7164_api_get_load_info (struct saa7164_dev*,struct tmFwInfoStruct*) ;
 int set_freezable () ;
 int try_to_freeze () ;

__attribute__((used)) static int saa7164_thread_function(void *data)
{
 struct saa7164_dev *dev = data;
 struct tmFwInfoStruct fwinfo;
 u64 last_poll_time = 0;

 dprintk(DBGLVL_THR, "thread started\n");

 set_freezable();

 while (1) {
  msleep_interruptible(100);
  if (kthread_should_stop())
   break;
  try_to_freeze();

  dprintk(DBGLVL_THR, "thread running\n");




  saa7164_api_collect_debug(dev);


  if ((last_poll_time + 1000 ) < jiffies_to_msecs(jiffies)) {
   saa7164_api_get_load_info(dev, &fwinfo);
   last_poll_time = jiffies_to_msecs(jiffies);
  }

 }

 dprintk(DBGLVL_THR, "thread exiting\n");
 return 0;
}
