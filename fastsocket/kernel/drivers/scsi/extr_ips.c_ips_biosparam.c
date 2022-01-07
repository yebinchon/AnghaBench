
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct block_device {int dummy; } ;
typedef int sector_t ;
struct TYPE_7__ {TYPE_2__* enq; int active; } ;
typedef TYPE_3__ ips_ha_t ;
struct TYPE_6__ {int ucMiscFlag; } ;
struct TYPE_5__ {scalar_t__ hostdata; } ;


 int DEBUG_VAR (int,char*,int,int,int) ;
 int IPS_COMP_HEADS ;
 int IPS_COMP_SECTORS ;
 int IPS_INTR_ON ;
 int IPS_NORM_HEADS ;
 int IPS_NORM_SECTORS ;
 int METHOD_TRACE (char*,int) ;
 int ips_read_adapter_status (TYPE_3__*,int ) ;

__attribute__((used)) static int ips_biosparam(struct scsi_device *sdev, struct block_device *bdev,
    sector_t capacity, int geom[])
{
 ips_ha_t *ha = (ips_ha_t *) sdev->host->hostdata;
 int heads;
 int sectors;
 int cylinders;

 METHOD_TRACE("ips_biosparam", 1);

 if (!ha)

  return (0);

 if (!ha->active)
  return (0);

 if (!ips_read_adapter_status(ha, IPS_INTR_ON))

  return (0);

 if ((capacity > 0x400000) && ((ha->enq->ucMiscFlag & 0x8) == 0)) {
  heads = IPS_NORM_HEADS;
  sectors = IPS_NORM_SECTORS;
 } else {
  heads = IPS_COMP_HEADS;
  sectors = IPS_COMP_SECTORS;
 }

 cylinders = (unsigned long) capacity / (heads * sectors);

 DEBUG_VAR(2, "Geometry: heads: %d, sectors: %d, cylinders: %d",
    heads, sectors, cylinders);

 geom[0] = heads;
 geom[1] = sectors;
 geom[2] = cylinders;

 return (0);
}
