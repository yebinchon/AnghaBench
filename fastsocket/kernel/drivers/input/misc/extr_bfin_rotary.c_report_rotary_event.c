
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct bfin_rot {int rel_code; int down_key; int up_key; struct input_dev* input; } ;


 int input_report_rel (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int report_key_event (struct input_dev*,int ) ;

__attribute__((used)) static void report_rotary_event(struct bfin_rot *rotary, int delta)
{
 struct input_dev *input = rotary->input;

 if (rotary->up_key) {
  report_key_event(input,
     delta > 0 ? rotary->up_key : rotary->down_key);
 } else {
  input_report_rel(input, rotary->rel_code, delta);
  input_sync(input);
 }
}
