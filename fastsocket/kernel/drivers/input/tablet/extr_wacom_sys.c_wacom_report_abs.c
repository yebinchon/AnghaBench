
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_combo {int dummy; } ;


 int get_input_dev (struct wacom_combo*) ;
 int input_report_abs (int ,unsigned int,int) ;

void wacom_report_abs(void *wcombo, unsigned int abs_type, int abs_data)
{
 input_report_abs(get_input_dev((struct wacom_combo *)wcombo), abs_type, abs_data);
}
