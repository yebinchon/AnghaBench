
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int LUN; } ;
struct sas_task {TYPE_4__* dev; TYPE_1__ ssp_task; struct asd_ascb* lldd_task; } ;
struct asd_ha_struct {int dummy; } ;
struct asd_ascb {int tag; } ;
struct TYPE_9__ {int tag; int lun; } ;
struct TYPE_10__ {int conn_handle; TYPE_2__ ssp_task; int nexus; } ;
struct TYPE_14__ {TYPE_3__ clear_nexus; } ;
struct TYPE_13__ {TYPE_5__* ha; } ;
struct TYPE_12__ {struct asd_ha_struct* lldd_ha; } ;
struct TYPE_11__ {scalar_t__ lldd_dev; scalar_t__ tproto; TYPE_6__* port; } ;


 int CLEAR_NEXUS_POST ;
 int CLEAR_NEXUS_PRE ;
 int NEXUS_TAG ;
 int cpu_to_le16 (int ) ;
 int memcpy (int ,int ,int) ;
 TYPE_7__* scb ;

__attribute__((used)) static int asd_clear_nexus_tag(struct sas_task *task)
{
 struct asd_ha_struct *asd_ha = task->dev->port->ha->lldd_ha;
 struct asd_ascb *tascb = task->lldd_task;

 CLEAR_NEXUS_PRE;
 scb->clear_nexus.nexus = NEXUS_TAG;
 memcpy(scb->clear_nexus.ssp_task.lun, task->ssp_task.LUN, 8);
 scb->clear_nexus.ssp_task.tag = tascb->tag;
 if (task->dev->tproto)
  scb->clear_nexus.conn_handle = cpu_to_le16((u16)(unsigned long)
         task->dev->lldd_dev);
 CLEAR_NEXUS_POST;
}
