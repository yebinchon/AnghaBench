
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct zfcp_unit {struct scsi_device* device; } ;
struct zfcp_adapter {int dummy; } ;
struct scsi_device {struct zfcp_unit* hostdata; int lun; int id; int channel; TYPE_1__* host; } ;
struct TYPE_4__ {int config_lock; } ;
struct TYPE_3__ {scalar_t__* hostdata; } ;


 int ENXIO ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__ zfcp_data ;
 int zfcp_unit_get (struct zfcp_unit*) ;
 struct zfcp_unit* zfcp_unit_lookup (struct zfcp_adapter*,int ,int ,int ) ;

__attribute__((used)) static int zfcp_scsi_slave_alloc(struct scsi_device *sdp)
{
 struct zfcp_adapter *adapter;
 struct zfcp_unit *unit;
 unsigned long flags;
 int retval = -ENXIO;

 adapter = (struct zfcp_adapter *) sdp->host->hostdata[0];
 if (!adapter)
  goto out;

 read_lock_irqsave(&zfcp_data.config_lock, flags);
 unit = zfcp_unit_lookup(adapter, sdp->channel, sdp->id, sdp->lun);
 if (unit) {
  sdp->hostdata = unit;
  unit->device = sdp;
  zfcp_unit_get(unit);
  retval = 0;
 }
 read_unlock_irqrestore(&zfcp_data.config_lock, flags);
out:
 return retval;
}
