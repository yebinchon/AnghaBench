
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fw_events_off; int fw_event_lock; scalar_t__ sas_discovery_quiesce_io; } ;
typedef TYPE_1__ MPT_ADAPTER ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void
mptsas_fw_event_off(MPT_ADAPTER *ioc)
{
 unsigned long flags;

 spin_lock_irqsave(&ioc->fw_event_lock, flags);
 ioc->fw_events_off = 1;
 ioc->sas_discovery_quiesce_io = 0;
 spin_unlock_irqrestore(&ioc->fw_event_lock, flags);

}
