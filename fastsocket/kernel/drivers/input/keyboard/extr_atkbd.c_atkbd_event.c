
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct atkbd {int softrepeat; int write; } ;


 int ATKBD_LED_EVENT_BIT ;
 int ATKBD_REP_EVENT_BIT ;


 int atkbd_schedule_event_work (struct atkbd*,int ) ;
 struct atkbd* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int atkbd_event(struct input_dev *dev,
   unsigned int type, unsigned int code, int value)
{
 struct atkbd *atkbd = input_get_drvdata(dev);

 if (!atkbd->write)
  return -1;

 switch (type) {

  case 129:
   atkbd_schedule_event_work(atkbd, ATKBD_LED_EVENT_BIT);
   return 0;

  case 128:
   if (!atkbd->softrepeat)
    atkbd_schedule_event_work(atkbd, ATKBD_REP_EVENT_BIT);
   return 0;
 }

 return -1;
}
