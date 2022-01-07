
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {int sas_address; } ;
struct sas_rphy {TYPE_1__ identify; } ;
struct _sas_device {int enclosure_logical_id; } ;
struct MPT2SAS_ADAPTER {int sas_device_lock; } ;


 int ENXIO ;
 struct _sas_device* mpt2sas_scsih_sas_device_find_by_sas_address (struct MPT2SAS_ADAPTER*,int ) ;
 struct MPT2SAS_ADAPTER* rphy_to_ioc (struct sas_rphy*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
_transport_get_enclosure_identifier(struct sas_rphy *rphy, u64 *identifier)
{
 struct MPT2SAS_ADAPTER *ioc = rphy_to_ioc(rphy);
 struct _sas_device *sas_device;
 unsigned long flags;
 int rc;

 spin_lock_irqsave(&ioc->sas_device_lock, flags);
 sas_device = mpt2sas_scsih_sas_device_find_by_sas_address(ioc,
     rphy->identify.sas_address);
 if (sas_device) {
  *identifier = sas_device->enclosure_logical_id;
  rc = 0;
 } else {
  *identifier = 0;
  rc = -ENXIO;
 }
 spin_unlock_irqrestore(&ioc->sas_device_lock, flags);
 return rc;
}
