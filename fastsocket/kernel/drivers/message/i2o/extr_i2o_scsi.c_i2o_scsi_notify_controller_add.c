
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2o_scsi_host {int scsi_host; } ;
struct i2o_controller {struct i2o_scsi_host** driver_data; int device; } ;
struct TYPE_2__ {size_t context; } ;


 scalar_t__ IS_ERR (struct i2o_scsi_host*) ;
 TYPE_1__ i2o_scsi_driver ;
 struct i2o_scsi_host* i2o_scsi_host_alloc (struct i2o_controller*) ;
 int osm_debug (char*) ;
 int osm_err (char*) ;
 int scsi_add_host (int ,int *) ;
 int scsi_host_put (int ) ;

__attribute__((used)) static void i2o_scsi_notify_controller_add(struct i2o_controller *c)
{
 struct i2o_scsi_host *i2o_shost;
 int rc;

 i2o_shost = i2o_scsi_host_alloc(c);
 if (IS_ERR(i2o_shost)) {
  osm_err("Could not initialize SCSI host\n");
  return;
 }

 rc = scsi_add_host(i2o_shost->scsi_host, &c->device);
 if (rc) {
  osm_err("Could not add SCSI host\n");
  scsi_host_put(i2o_shost->scsi_host);
  return;
 }

 c->driver_data[i2o_scsi_driver.context] = i2o_shost;

 osm_debug("new I2O SCSI host added\n");
}
