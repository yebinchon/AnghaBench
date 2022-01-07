
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_handler_data {int op; int work; int device; } ;
struct tape_device {int dummy; } ;
typedef enum tape_op { ____Placeholder_tape_op } tape_op ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_WORK (int *,int ) ;
 struct work_handler_data* kzalloc (int,int ) ;
 int schedule_work (int *) ;
 int tape_3590_work_handler ;
 int tape_get_device_reference (struct tape_device*) ;

__attribute__((used)) static int
tape_3590_schedule_work(struct tape_device *device, enum tape_op op)
{
 struct work_handler_data *p;

 if ((p = kzalloc(sizeof(*p), GFP_ATOMIC)) == ((void*)0))
  return -ENOMEM;

 INIT_WORK(&p->work, tape_3590_work_handler);

 p->device = tape_get_device_reference(device);
 p->op = op;

 schedule_work(&p->work);
 return 0;
}
