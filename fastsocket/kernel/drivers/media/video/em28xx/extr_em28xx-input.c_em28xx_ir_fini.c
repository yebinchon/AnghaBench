
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em28xx_IR {int rc; } ;
struct em28xx {struct em28xx_IR* ir; } ;


 int em28xx_ir_stop (int ) ;
 int kfree (struct em28xx_IR*) ;
 int rc_unregister_device (int ) ;

int em28xx_ir_fini(struct em28xx *dev)
{
 struct em28xx_IR *ir = dev->ir;


 if (!ir)
  return 0;

 em28xx_ir_stop(ir->rc);
 rc_unregister_device(ir->rc);
 kfree(ir);


 dev->ir = ((void*)0);
 return 0;
}
