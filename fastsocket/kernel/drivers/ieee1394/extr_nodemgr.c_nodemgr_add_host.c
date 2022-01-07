
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int id; } ;
struct host_info {int thread; struct hpsb_host* host; } ;


 int HPSB_ERR (char*,...) ;
 scalar_t__ IS_ERR (int ) ;
 struct host_info* hpsb_create_hostinfo (int *,struct hpsb_host*,int) ;
 int hpsb_destroy_hostinfo (int *,struct hpsb_host*) ;
 int kthread_run (int ,struct hpsb_host*,char*,int ) ;
 int nodemgr_highlevel ;
 int nodemgr_host_thread ;

__attribute__((used)) static void nodemgr_add_host(struct hpsb_host *host)
{
 struct host_info *hi;

 hi = hpsb_create_hostinfo(&nodemgr_highlevel, host, sizeof(*hi));
 if (!hi) {
  HPSB_ERR("NodeMgr: out of memory in add host");
  return;
 }
 hi->host = host;
 hi->thread = kthread_run(nodemgr_host_thread, host, "knodemgrd_%d",
     host->id);
 if (IS_ERR(hi->thread)) {
  HPSB_ERR("NodeMgr: cannot start thread for host %d", host->id);
  hpsb_destroy_hostinfo(&nodemgr_highlevel, host);
 }
}
