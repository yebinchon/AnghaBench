
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape_device {int dummy; } ;
struct tape_34xx_work {int op; int work; int device; } ;
typedef enum tape_op { ____Placeholder_tape_op } tape_op ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct tape_34xx_work* kzalloc (int,int ) ;
 int schedule_work (int *) ;
 int tape_34xx_work_handler ;
 int tape_get_device_reference (struct tape_device*) ;

__attribute__((used)) static int
tape_34xx_schedule_work(struct tape_device *device, enum tape_op op)
{
 struct tape_34xx_work *p;

 if ((p = kzalloc(sizeof(*p), GFP_ATOMIC)) == ((void*)0))
  return -ENOMEM;

 INIT_WORK(&p->work, tape_34xx_work_handler);

 p->device = tape_get_device_reference(device);
 p->op = op;

 schedule_work(&p->work);
 return 0;
}
