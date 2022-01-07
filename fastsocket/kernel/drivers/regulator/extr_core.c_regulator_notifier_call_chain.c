
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regulator_dev {int dummy; } ;


 int NOTIFY_DONE ;
 int _notifier_call_chain (struct regulator_dev*,unsigned long,void*) ;

int regulator_notifier_call_chain(struct regulator_dev *rdev,
      unsigned long event, void *data)
{
 _notifier_call_chain(rdev, event, data);
 return NOTIFY_DONE;

}
