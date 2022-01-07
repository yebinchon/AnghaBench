
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* virt; } ;
struct i2o_controller {int name; TYPE_1__ status_block; } ;
struct TYPE_4__ {scalar_t__ i2o_version; int iop_state; } ;
typedef TYPE_2__ i2o_status_block ;







 int ADAPTER_STATE_RESET ;
 int EFAULT ;
 int EIO ;
 int ENODEV ;
 scalar_t__ I2OVER15 ;
 int i2o_hrt_get (struct i2o_controller*) ;
 int i2o_iop_clear (struct i2o_controller*) ;
 int i2o_iop_init_outbound_queue (struct i2o_controller*) ;
 int i2o_iop_reset (struct i2o_controller*) ;
 int i2o_status_get (struct i2o_controller*) ;
 int osm_debug (char*,int ) ;
 int osm_err (char*,int ) ;
 int osm_info (char*,int ) ;

__attribute__((used)) static int i2o_iop_activate(struct i2o_controller *c)
{
 i2o_status_block *sb = c->status_block.virt;
 int rc;
 int state;




 rc = i2o_status_get(c);
 if (rc) {
  osm_info("%s: Unable to obtain status, attempting a reset.\n",
    c->name);
  rc = i2o_iop_reset(c);
  if (rc)
   return rc;
 }

 if (sb->i2o_version > I2OVER15) {
  osm_err("%s: Not running version 1.5 of the I2O Specification."
   "\n", c->name);
  return -ENODEV;
 }

 switch (sb->iop_state) {
 case 131:
  osm_err("%s: hardware fault\n", c->name);
  return -EFAULT;

 case 128:
 case 129:
 case 130:
 case 132:
  osm_debug("%s: already running, trying to reset...\n", c->name);
  rc = i2o_iop_reset(c);
  if (rc)
   return rc;
 }


 state = sb->iop_state;

 rc = i2o_iop_init_outbound_queue(c);
 if (rc)
  return rc;


 if (state != ADAPTER_STATE_RESET)
  i2o_iop_clear(c);

 i2o_status_get(c);

 if (sb->iop_state != 130) {
  osm_err("%s: failed to bring IOP into HOLD state\n", c->name);
  return -EIO;
 }

 return i2o_hrt_get(c);
}
