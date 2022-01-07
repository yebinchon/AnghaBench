
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
struct input_dev {int key; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void alps_report_buttons(struct psmouse *psmouse,
    struct input_dev *dev1, struct input_dev *dev2,
    int left, int right, int middle)
{
 struct input_dev *dev;






 dev = test_bit(BTN_LEFT, dev2->key) ? dev2 : dev1;
 input_report_key(dev, BTN_LEFT, left);

 dev = test_bit(BTN_RIGHT, dev2->key) ? dev2 : dev1;
 input_report_key(dev, BTN_RIGHT, right);

 dev = test_bit(BTN_MIDDLE, dev2->key) ? dev2 : dev1;
 input_report_key(dev, BTN_MIDDLE, middle);





 input_sync(dev2);
}
