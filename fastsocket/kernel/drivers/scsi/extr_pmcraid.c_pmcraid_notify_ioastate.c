
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int msg; int ioa_state; } ;
struct pmcraid_instance {TYPE_1__ scn; } ;


 int pmcraid_notify_aen (struct pmcraid_instance*,int *,int) ;

__attribute__((used)) static void pmcraid_notify_ioastate(struct pmcraid_instance *pinstance, u32 evt)
{
 pinstance->scn.ioa_state = evt;
 pmcraid_notify_aen(pinstance,
     &pinstance->scn.msg,
     sizeof(u32));
}
