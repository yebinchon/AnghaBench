
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_combo {int dummy; } ;


 int get_input_dev (struct wacom_combo*) ;
 int input_event (int ,unsigned int,unsigned int,int) ;

void wacom_input_event(void *wcombo, unsigned int type, unsigned int code, int value)
{
 input_event(get_input_dev((struct wacom_combo *)wcombo), type, code, value);
}
