
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct sas_task {TYPE_4__* dev; struct asd_ascb* lldd_task; } ;
struct asd_ha_struct {int dummy; } ;
struct asd_ascb {int tc_index; } ;
struct TYPE_6__ {void* index; void* conn_handle; int nexus; } ;
struct TYPE_10__ {TYPE_1__ clear_nexus; } ;
struct TYPE_9__ {scalar_t__ lldd_dev; scalar_t__ tproto; TYPE_3__* port; } ;
struct TYPE_8__ {TYPE_2__* ha; } ;
struct TYPE_7__ {struct asd_ha_struct* lldd_ha; } ;


 int CLEAR_NEXUS_POST ;
 int CLEAR_NEXUS_PRE ;
 int NEXUS_TRANS_CX ;
 void* cpu_to_le16 (int ) ;
 TYPE_5__* scb ;

__attribute__((used)) static int asd_clear_nexus_index(struct sas_task *task)
{
 struct asd_ha_struct *asd_ha = task->dev->port->ha->lldd_ha;
 struct asd_ascb *tascb = task->lldd_task;

 CLEAR_NEXUS_PRE;
 scb->clear_nexus.nexus = NEXUS_TRANS_CX;
 if (task->dev->tproto)
  scb->clear_nexus.conn_handle = cpu_to_le16((u16)(unsigned long)
         task->dev->lldd_dev);
 scb->clear_nexus.index = cpu_to_le16(tascb->tc_index);
 CLEAR_NEXUS_POST;
}
