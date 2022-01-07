
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2o_controller {int name; } ;


 int i2o_iop_enable (struct i2o_controller*) ;
 int i2o_iop_systab_set (struct i2o_controller*) ;
 int osm_debug (char*,int ) ;

__attribute__((used)) static int i2o_iop_online(struct i2o_controller *c)
{
 int rc;

 rc = i2o_iop_systab_set(c);
 if (rc)
  return rc;


 osm_debug("%s: Attempting to enable...\n", c->name);
 rc = i2o_iop_enable(c);
 if (rc)
  return rc;

 return 0;
}
