
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct infrared {TYPE_1__* input_dev; int last_key; } ;
struct TYPE_3__ {int key; } ;


 int input_report_key (TYPE_1__*,int ,int ) ;
 int input_sync (TYPE_1__*) ;
 int test_bit (int ,int ) ;

__attribute__((used)) static void av7110_emit_keyup(unsigned long parm)
{
 struct infrared *ir = (struct infrared *) parm;

 if (!ir || !test_bit(ir->last_key, ir->input_dev->key))
  return;

 input_report_key(ir->input_dev, ir->last_key, 0);
 input_sync(ir->input_dev);
}
