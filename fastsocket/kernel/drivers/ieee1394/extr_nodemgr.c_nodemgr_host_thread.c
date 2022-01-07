
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpsb_host {int dummy; } ;


 int HPSB_VERBOSE (char*) ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 unsigned int get_hpsb_generation (struct hpsb_host*) ;
 scalar_t__ kthread_should_stop () ;
 int msleep_interruptible (int) ;
 int nodemgr_check_irm_capability (struct hpsb_host*,int) ;
 int nodemgr_create_host_dev_files (struct hpsb_host*) ;
 int nodemgr_do_irm_duties (struct hpsb_host*,int) ;
 int nodemgr_node_probe (struct hpsb_host*,unsigned int) ;
 int nodemgr_node_scan (struct hpsb_host*,unsigned int) ;
 int nodemgr_remove_nodes_in_limbo (struct hpsb_host*) ;
 int nodemgr_update_host_dev_links (struct hpsb_host*) ;
 int schedule () ;
 int set_current_state (int ) ;
 int set_freezable () ;
 scalar_t__ try_to_freeze () ;

__attribute__((used)) static int nodemgr_host_thread(void *data)
{
 struct hpsb_host *host = data;
 unsigned int g, generation = 0;
 int i, reset_cycles = 0;

 set_freezable();

 nodemgr_create_host_dev_files(host);

 for (;;) {

  set_current_state(TASK_INTERRUPTIBLE);
  if (get_hpsb_generation(host) == generation &&
      !kthread_should_stop())
   schedule();
  __set_current_state(TASK_RUNNING);


  if (try_to_freeze())
   continue;
  if (kthread_should_stop())
   goto exit;



  g = get_hpsb_generation(host);
  for (i = 0; i < 4 ; i++) {
   msleep_interruptible(63);
   try_to_freeze();
   if (kthread_should_stop())
    goto exit;






   generation = get_hpsb_generation(host);



   if (generation != g)
    g = generation, i = 0;
  }

  if (!nodemgr_check_irm_capability(host, reset_cycles) ||
      !nodemgr_do_irm_duties(host, reset_cycles)) {
   reset_cycles++;
   continue;
  }
  reset_cycles = 0;





  nodemgr_node_scan(host, generation);



  if (!nodemgr_node_probe(host, generation))
   continue;


  nodemgr_update_host_dev_links(host);


  for (i = 3000/200; i; i--) {
   msleep_interruptible(200);
   try_to_freeze();
   if (kthread_should_stop())
    goto exit;

   if (generation != get_hpsb_generation(host))
    break;
  }

  if (!i)
   nodemgr_remove_nodes_in_limbo(host);
 }
exit:
 HPSB_VERBOSE("NodeMgr: Exiting thread");
 return 0;
}
