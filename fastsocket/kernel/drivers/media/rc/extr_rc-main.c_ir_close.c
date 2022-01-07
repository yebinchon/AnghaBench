
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int (* close ) (struct rc_dev*) ;} ;
struct input_dev {int dummy; } ;


 struct rc_dev* input_get_drvdata (struct input_dev*) ;
 int stub1 (struct rc_dev*) ;

__attribute__((used)) static void ir_close(struct input_dev *idev)
{
 struct rc_dev *rdev = input_get_drvdata(idev);

 rdev->close(rdev);
}
