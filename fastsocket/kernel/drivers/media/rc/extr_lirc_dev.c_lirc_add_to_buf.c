
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* add_to_buf ) (int ,int ) ;int data; } ;
struct irctl {int task; int buf; TYPE_1__ d; } ;


 int ENODATA ;
 int ENODEV ;
 int kthread_stop (int ) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int lirc_add_to_buf(struct irctl *ir)
{
 if (ir->d.add_to_buf) {
  int res = -ENODATA;
  int got_data = 0;





get_data:
  res = ir->d.add_to_buf(ir->d.data, ir->buf);
  if (res == 0) {
   got_data++;
   goto get_data;
  }

  if (res == -ENODEV)
   kthread_stop(ir->task);

  return got_data ? 0 : res;
 }

 return 0;
}
