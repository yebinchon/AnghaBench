
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; TYPE_1__** groups; } ;
struct TYPE_4__ {int * pTrunkServer; } ;
typedef TYPE_1__ FDFSGroupInfo ;


 TYPE_3__ g_groups ;
 scalar_t__ g_if_leader_self ;
 scalar_t__ g_if_use_trunk_file ;
 int g_trunk_server_chg_count ;
 int mem_thread_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int tracker_mem_find_trunk_server (TYPE_1__*,int) ;

void tracker_mem_find_trunk_servers()
{
 FDFSGroupInfo **ppGroup;
 FDFSGroupInfo **ppGroupEnd;

 if (!(g_if_leader_self && g_if_use_trunk_file))
 {
  return;
 }

 pthread_mutex_lock(&mem_thread_lock);
 ppGroupEnd = g_groups.groups + g_groups.count;
 for (ppGroup=g_groups.groups; ppGroup<ppGroupEnd; ppGroup++)
 {
  if ((*ppGroup)->pTrunkServer == ((void*)0))
  {
   tracker_mem_find_trunk_server(*ppGroup, 1);
  }
 }
 g_trunk_server_chg_count++;
 pthread_mutex_unlock(&mem_thread_lock);
}
