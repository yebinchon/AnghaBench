
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfcp_unit {int * device; } ;
struct scsi_device {scalar_t__ hostdata; } ;


 int zfcp_unit_put (struct zfcp_unit*) ;

__attribute__((used)) static void zfcp_scsi_slave_destroy(struct scsi_device *sdpnt)
{
 struct zfcp_unit *unit = (struct zfcp_unit *) sdpnt->hostdata;


 if (!unit)
  return;

 unit->device = ((void*)0);
 zfcp_unit_put(unit);
}
