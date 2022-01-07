
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct domain_device {scalar_t__ dev_type; scalar_t__ tproto; scalar_t__ lldd_dev; TYPE_2__* port; } ;
struct asd_ha_struct {int dummy; } ;
struct TYPE_4__ {TYPE_1__* ha; } ;
struct TYPE_3__ {struct asd_ha_struct* lldd_ha; } ;


 int DDB_TYPE ;
 int DDB_TYPE_INITIATOR ;
 int DDB_TYPE_PM_PORT ;
 int DDB_TYPE_TARGET ;
 scalar_t__ SATA_PM_PORT ;
 int asd_ddbsite_write_byte (struct asd_ha_struct*,int,int ,int ) ;

__attribute__((used)) static void asd_set_ddb_type(struct domain_device *dev)
{
 struct asd_ha_struct *asd_ha = dev->port->ha->lldd_ha;
 int ddb = (int) (unsigned long) dev->lldd_dev;

 if (dev->dev_type == SATA_PM_PORT)
  asd_ddbsite_write_byte(asd_ha,ddb, DDB_TYPE, DDB_TYPE_PM_PORT);
 else if (dev->tproto)
  asd_ddbsite_write_byte(asd_ha,ddb, DDB_TYPE, DDB_TYPE_TARGET);
 else
  asd_ddbsite_write_byte(asd_ha,ddb,DDB_TYPE,DDB_TYPE_INITIATOR);
}
