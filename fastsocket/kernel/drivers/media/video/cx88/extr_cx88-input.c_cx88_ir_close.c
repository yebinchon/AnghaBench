
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rc_dev {struct cx88_core* priv; } ;
struct cx88_core {TYPE_1__* ir; } ;
struct TYPE_2__ {int users; } ;


 int __cx88_ir_stop (struct cx88_core*) ;

__attribute__((used)) static void cx88_ir_close(struct rc_dev *rc)
{
 struct cx88_core *core = rc->priv;

 core->ir->users--;
 if (!core->ir->users)
  __cx88_ir_stop(core);
}
