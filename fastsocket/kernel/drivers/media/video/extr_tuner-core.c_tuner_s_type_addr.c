
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tuner_setup {scalar_t__ type; int addr; scalar_t__ mode_mask; int config; int tuner_callback; } ;
struct tuner {scalar_t__ type; int mode_mask; } ;
struct i2c_client {scalar_t__ addr; } ;


 scalar_t__ ADDR_UNSET ;
 scalar_t__ UNSET ;
 int set_type (struct i2c_client*,scalar_t__,int,int,int ) ;
 struct tuner* to_tuner (struct v4l2_subdev*) ;
 int tuner_dbg (char*,scalar_t__,int,scalar_t__,int) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int tuner_s_type_addr(struct v4l2_subdev *sd,
        struct tuner_setup *tun_setup)
{
 struct tuner *t = to_tuner(sd);
 struct i2c_client *c = v4l2_get_subdevdata(sd);

 tuner_dbg("Calling set_type_addr for type=%d, addr=0x%02x, mode=0x%02x, config=0x%02x\n",
   tun_setup->type,
   tun_setup->addr,
   tun_setup->mode_mask,
   tun_setup->config);

 if ((t->type == UNSET && ((tun_setup->addr == ADDR_UNSET) &&
     (t->mode_mask & tun_setup->mode_mask))) ||
     (tun_setup->addr == c->addr)) {
  set_type(c, tun_setup->type, tun_setup->mode_mask,
    tun_setup->config, tun_setup->tuner_callback);
 } else
  tuner_dbg("set addr discarded for type %i, mask %x. "
     "Asked to change tuner at addr 0x%02x, with mask %x\n",
     t->type, t->mode_mask,
     tun_setup->addr, tun_setup->mode_mask);

 return 0;
}
