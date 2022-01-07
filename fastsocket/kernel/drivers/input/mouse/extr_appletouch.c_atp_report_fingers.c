
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;


 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_TRIPLETAP ;
 int input_report_key (struct input_dev*,int ,int) ;

__attribute__((used)) static inline void atp_report_fingers(struct input_dev *input, int fingers)
{
 input_report_key(input, BTN_TOOL_FINGER, fingers == 1);
 input_report_key(input, BTN_TOOL_DOUBLETAP, fingers == 2);
 input_report_key(input, BTN_TOOL_TRIPLETAP, fingers > 2);
}
