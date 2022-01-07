
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_3__ {int device_type; scalar_t__ sas_address; } ;
struct _sas_port {TYPE_2__* port; TYPE_1__ remote_identify; } ;
struct MPT2SAS_ADAPTER {int logging_level; } ;
typedef enum sas_device_type { ____Placeholder_sas_device_type } sas_device_type ;
struct TYPE_4__ {int dev; } ;


 int KERN_INFO ;
 int MPT_DEBUG_TRANSPORT ;
 int SAS_EDGE_EXPANDER_DEVICE ;
 int SAS_END_DEVICE ;
 int SAS_FANOUT_EXPANDER_DEVICE ;
 int dev_printk (int ,int *,char*,unsigned long long) ;
 int mpt2sas_device_remove_by_sas_address (struct MPT2SAS_ADAPTER*,scalar_t__) ;
 int mpt2sas_expander_remove (struct MPT2SAS_ADAPTER*,scalar_t__) ;

__attribute__((used)) static void
_transport_delete_port(struct MPT2SAS_ADAPTER *ioc,
 struct _sas_port *mpt2sas_port)
{
 u64 sas_address = mpt2sas_port->remote_identify.sas_address;
 enum sas_device_type device_type =
     mpt2sas_port->remote_identify.device_type;

 dev_printk(KERN_INFO, &mpt2sas_port->port->dev,
     "remove: sas_addr(0x%016llx)\n",
     (unsigned long long) sas_address);

 ioc->logging_level |= MPT_DEBUG_TRANSPORT;
 if (device_type == SAS_END_DEVICE)
  mpt2sas_device_remove_by_sas_address(ioc, sas_address);
 else if (device_type == SAS_EDGE_EXPANDER_DEVICE ||
     device_type == SAS_FANOUT_EXPANDER_DEVICE)
  mpt2sas_expander_remove(ioc, sas_address);
 ioc->logging_level &= ~MPT_DEBUG_TRANSPORT;
}
