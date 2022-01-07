
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_combo {int dummy; } ;


 int get_input_dev (struct wacom_combo*) ;
 int input_report_rel (int ,unsigned int,int) ;

void wacom_report_rel(void *wcombo, unsigned int rel_type, int rel_data)
{
 input_report_rel(get_input_dev((struct wacom_combo *)wcombo), rel_type, rel_data);
}
