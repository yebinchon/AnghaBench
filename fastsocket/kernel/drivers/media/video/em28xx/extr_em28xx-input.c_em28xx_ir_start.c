
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct em28xx_IR* priv; } ;
struct em28xx_IR {int work; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int em28xx_ir_work ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static int em28xx_ir_start(struct rc_dev *rc)
{
 struct em28xx_IR *ir = rc->priv;

 INIT_DELAYED_WORK(&ir->work, em28xx_ir_work);
 schedule_delayed_work(&ir->work, 0);

 return 0;
}
