
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct em28xx_IR* priv; } ;
struct em28xx_IR {int work; } ;


 int cancel_delayed_work_sync (int *) ;

__attribute__((used)) static void em28xx_ir_stop(struct rc_dev *rc)
{
 struct em28xx_IR *ir = rc->priv;

 cancel_delayed_work_sync(&ir->work);
}
