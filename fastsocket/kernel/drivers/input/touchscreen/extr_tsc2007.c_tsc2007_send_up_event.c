
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tsc2007 {TYPE_1__* client; struct input_dev* input; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int ABS_PRESSURE ;
 int BTN_TOUCH ;
 int dev_dbg (int *,char*) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void tsc2007_send_up_event(struct tsc2007 *tsc)
{
 struct input_dev *input = tsc->input;

 dev_dbg(&tsc->client->dev, "UP\n");

 input_report_key(input, BTN_TOUCH, 0);
 input_report_abs(input, ABS_PRESSURE, 0);
 input_sync(input);
}
