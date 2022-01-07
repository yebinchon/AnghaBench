
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_event_work {struct MPT2SAS_ADAPTER* ioc; int event; } ;
struct MPT2SAS_ADAPTER {int dummy; } ;


 int GFP_ATOMIC ;
 int MPT2SAS_PORT_ENABLE_COMPLETE ;
 int _scsih_fw_event_add (struct MPT2SAS_ADAPTER*,struct fw_event_work*) ;
 struct fw_event_work* kzalloc (int,int ) ;

void
mpt2sas_port_enable_complete(struct MPT2SAS_ADAPTER *ioc)
{
 struct fw_event_work *fw_event;

 fw_event = kzalloc(sizeof(struct fw_event_work), GFP_ATOMIC);
 if (!fw_event)
  return;
 fw_event->event = MPT2SAS_PORT_ENABLE_COMPLETE;
 fw_event->ioc = ioc;
 _scsih_fw_event_add(ioc, fw_event);
}
