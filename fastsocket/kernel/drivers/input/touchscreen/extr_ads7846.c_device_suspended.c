
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct ads7846 {scalar_t__ disabled; scalar_t__ is_suspended; } ;


 struct ads7846* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int device_suspended(struct device *dev)
{
 struct ads7846 *ts = dev_get_drvdata(dev);
 return ts->is_suspended || ts->disabled;
}
