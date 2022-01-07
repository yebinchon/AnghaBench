
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int device; } ;
struct host_info {int thread; } ;


 struct host_info* hpsb_get_hostinfo (int *,struct hpsb_host*) ;
 int kthread_stop (int ) ;
 int nodemgr_highlevel ;
 int nodemgr_remove_host_dev (int *) ;

__attribute__((used)) static void nodemgr_remove_host(struct hpsb_host *host)
{
 struct host_info *hi = hpsb_get_hostinfo(&nodemgr_highlevel, host);

 if (hi) {
  kthread_stop(hi->thread);
  nodemgr_remove_host_dev(&host->device);
 }
}
