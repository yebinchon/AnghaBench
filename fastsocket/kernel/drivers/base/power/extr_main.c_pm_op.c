
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct dev_pm_ops {int (* suspend ) (struct device*) ;int (* resume ) (struct device*) ;int (* freeze ) (struct device*) ;int (* poweroff ) (struct device*) ;int (* thaw ) (struct device*) ;int (* restore ) (struct device*) ;} ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;


 int EINVAL ;
 int stub1 (struct device*) ;
 int stub2 (struct device*) ;
 int stub3 (struct device*) ;
 int stub4 (struct device*) ;
 int stub5 (struct device*) ;
 int stub6 (struct device*) ;
 int suspend_report_result (int (*) (struct device*),int) ;

__attribute__((used)) static int pm_op(struct device *dev,
   const struct dev_pm_ops *ops,
   pm_message_t state)
{
 int error = 0;

 switch (state.event) {
 default:
  error = -EINVAL;
 }
 return error;
}
