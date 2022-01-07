
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct aiptek {int urb; } ;


 struct aiptek* input_get_drvdata (struct input_dev*) ;
 int usb_kill_urb (int ) ;

__attribute__((used)) static void aiptek_close(struct input_dev *inputdev)
{
 struct aiptek *aiptek = input_get_drvdata(inputdev);

 usb_kill_urb(aiptek->urb);
}
