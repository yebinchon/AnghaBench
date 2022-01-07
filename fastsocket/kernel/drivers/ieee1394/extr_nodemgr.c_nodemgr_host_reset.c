
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int id; } ;
struct host_info {int thread; } ;


 int HPSB_VERBOSE (char*,int ) ;
 struct host_info* hpsb_get_hostinfo (int *,struct hpsb_host*) ;
 int nodemgr_highlevel ;
 int wake_up_process (int ) ;

__attribute__((used)) static void nodemgr_host_reset(struct hpsb_host *host)
{
 struct host_info *hi = hpsb_get_hostinfo(&nodemgr_highlevel, host);

 if (hi) {
  HPSB_VERBOSE("NodeMgr: Processing reset for host %d", host->id);
  wake_up_process(hi->thread);
 }
}
