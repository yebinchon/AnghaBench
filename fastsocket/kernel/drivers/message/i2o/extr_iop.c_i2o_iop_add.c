
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_controller {int device; int name; int list; } ;


 int device_add (int *) ;
 int device_del (int *) ;
 int i2o_controllers ;
 int i2o_driver_notify_controller_add_all (struct i2o_controller*) ;
 int i2o_exec_lct_get (struct i2o_controller*) ;
 int i2o_iop_activate (struct i2o_controller*) ;
 int i2o_iop_online (struct i2o_controller*) ;
 int i2o_iop_reset (struct i2o_controller*) ;
 int i2o_systab_build () ;
 int list_add (int *,int *) ;
 int osm_debug (char*,int ) ;
 int osm_err (char*,int ) ;
 int osm_info (char*,int ) ;

int i2o_iop_add(struct i2o_controller *c)
{
 int rc;

 if ((rc = device_add(&c->device))) {
  osm_err("%s: could not add controller\n", c->name);
  goto iop_reset;
 }

 osm_info("%s: Activating I2O controller...\n", c->name);
 osm_info("%s: This may take a few minutes if there are many devices\n",
   c->name);

 if ((rc = i2o_iop_activate(c))) {
  osm_err("%s: could not activate controller\n", c->name);
  goto device_del;
 }

 osm_debug("%s: building sys table...\n", c->name);

 if ((rc = i2o_systab_build()))
  goto device_del;

 osm_debug("%s: online controller...\n", c->name);

 if ((rc = i2o_iop_online(c)))
  goto device_del;

 osm_debug("%s: getting LCT...\n", c->name);

 if ((rc = i2o_exec_lct_get(c)))
  goto device_del;

 list_add(&c->list, &i2o_controllers);

 i2o_driver_notify_controller_add_all(c);

 osm_info("%s: Controller added\n", c->name);

 return 0;

      device_del:
 device_del(&c->device);

      iop_reset:
 i2o_iop_reset(c);

 return rc;
}
