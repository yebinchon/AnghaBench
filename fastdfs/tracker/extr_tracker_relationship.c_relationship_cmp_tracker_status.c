
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int if_leader; int running_time; int restart_interval; TYPE_1__* pTrackerServer; } ;
typedef TYPE_2__ TrackerRunningStatus ;
struct TYPE_6__ {int port; int ip_addr; } ;
struct TYPE_4__ {TYPE_3__* connections; } ;
typedef TYPE_3__ ConnectionInfo ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int relationship_cmp_tracker_status(const void *p1, const void *p2)
{
 TrackerRunningStatus *pStatus1;
 TrackerRunningStatus *pStatus2;
 ConnectionInfo *conn1;
 ConnectionInfo *conn2;
 int sub;

 pStatus1 = (TrackerRunningStatus *)p1;
 pStatus2 = (TrackerRunningStatus *)p2;
 sub = pStatus1->if_leader - pStatus2->if_leader;
 if (sub != 0)
 {
  return sub;
 }

 sub = pStatus1->running_time - pStatus2->running_time;
 if (sub != 0)
 {
  return sub;
 }

 sub = pStatus2->restart_interval - pStatus1->restart_interval;
 if (sub != 0)
 {
  return sub;
 }

 conn1 = pStatus1->pTrackerServer->connections;
 conn2 = pStatus2->pTrackerServer->connections;
 sub = strcmp(conn1->ip_addr, conn2->ip_addr);
 if (sub != 0)
 {
  return sub;
 }

 return conn1->port - conn2->port;
}
