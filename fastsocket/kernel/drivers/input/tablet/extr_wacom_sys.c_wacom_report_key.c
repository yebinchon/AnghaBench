
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_combo {int dummy; } ;


 int get_input_dev (struct wacom_combo*) ;
 int input_report_key (int ,unsigned int,int) ;

void wacom_report_key(void *wcombo, unsigned int key_type, int key_data)
{
 input_report_key(get_input_dev((struct wacom_combo *)wcombo), key_type, key_data);
}
