
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int leader_index; int * servers; } ;


 scalar_t__ MAX_SLEEP_SECONDS ;
 double RAND_MAX ;
 int free (int *) ;
 scalar_t__ g_continue_flag ;
 int * g_last_tracker_servers ;
 TYPE_1__ g_tracker_servers ;
 scalar_t__ rand () ;
 scalar_t__ relationship_ping_leader () ;
 scalar_t__ relationship_select_leader () ;
 int sleep (int) ;
 int tracker_mem_file_lock () ;
 int tracker_mem_file_unlock () ;

__attribute__((used)) static void *relationship_thread_entrance(void* arg)
{


 int fail_count;
 int sleep_seconds;

 fail_count = 0;
 while (g_continue_flag)
 {
  sleep_seconds = 1;
  if (g_tracker_servers.servers != ((void*)0))
  {
   if (g_tracker_servers.leader_index < 0)
   {
    if (relationship_select_leader() != 0)
    {
     sleep_seconds = 1 + (int)((double)rand()
     * (double)10 / RAND_MAX);
    }
   }
   else
   {
    if (relationship_ping_leader() == 0)
    {
     fail_count = 0;
    }
    else
    {
     fail_count++;
     if (fail_count >= 3)
     {
      g_tracker_servers.leader_index = -1;
      fail_count = 0;
     }
    }
   }
  }

  if (g_last_tracker_servers != ((void*)0))
  {
   tracker_mem_file_lock();

   free(g_last_tracker_servers);
   g_last_tracker_servers = ((void*)0);

   tracker_mem_file_unlock();
  }

  sleep(sleep_seconds);
 }

 return ((void*)0);
}
