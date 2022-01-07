
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2o_scsi_host {int scsi_host; } ;
struct i2o_controller {int ** driver_data; } ;
struct TYPE_2__ {size_t context; } ;


 TYPE_1__ i2o_scsi_driver ;
 struct i2o_scsi_host* i2o_scsi_get_host (struct i2o_controller*) ;
 int osm_debug (char*) ;
 int scsi_host_put (int ) ;
 int scsi_remove_host (int ) ;

__attribute__((used)) static void i2o_scsi_notify_controller_remove(struct i2o_controller *c)
{
 struct i2o_scsi_host *i2o_shost;
 i2o_shost = i2o_scsi_get_host(c);
 if (!i2o_shost)
  return;

 c->driver_data[i2o_scsi_driver.context] = ((void*)0);

 scsi_remove_host(i2o_shost->scsi_host);
 scsi_host_put(i2o_shost->scsi_host);
 osm_debug("I2O SCSI host removed\n");
}
