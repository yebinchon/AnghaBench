
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int * release; } ;
struct i2o_controller {int unit; char* name; int context_list; int context_list_counter; int context_list_lock; TYPE_1__ device; int lct_lock; int lock; int devices; int in_msg; } ;
typedef int poolname ;


 int ENOMEM ;
 struct i2o_controller* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int I2O_INBOUND_MSG_FRAME_SIZE ;
 int I2O_MSG_INPOOL_MIN ;
 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_initialize (TYPE_1__*) ;
 int i2o_iop_release ;
 scalar_t__ i2o_pool_alloc (int *,char*,int,int ) ;
 int kfree (struct i2o_controller*) ;
 struct i2o_controller* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int osm_err (char*) ;
 int snprintf (char*,int,char*,char*) ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,int) ;

struct i2o_controller *i2o_iop_alloc(void)
{
 static int unit = 0;
 struct i2o_controller *c;
 char poolname[32];

 c = kzalloc(sizeof(*c), GFP_KERNEL);
 if (!c) {
  osm_err("i2o: Insufficient memory to allocate a I2O controller."
   "\n");
  return ERR_PTR(-ENOMEM);
 }

 c->unit = unit++;
 sprintf(c->name, "iop%d", c->unit);

 snprintf(poolname, sizeof(poolname), "i2o_%s_msg_inpool", c->name);
 if (i2o_pool_alloc
     (&c->in_msg, poolname, I2O_INBOUND_MSG_FRAME_SIZE * 4 + sizeof(u32),
      I2O_MSG_INPOOL_MIN)) {
  kfree(c);
  return ERR_PTR(-ENOMEM);
 };

 INIT_LIST_HEAD(&c->devices);
 spin_lock_init(&c->lock);
 mutex_init(&c->lct_lock);

 device_initialize(&c->device);

 c->device.release = &i2o_iop_release;

 dev_set_name(&c->device, "iop%d", c->unit);







 return c;
}
