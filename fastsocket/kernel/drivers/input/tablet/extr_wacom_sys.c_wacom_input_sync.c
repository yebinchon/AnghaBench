
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_combo {int dummy; } ;


 int get_input_dev (struct wacom_combo*) ;
 int input_sync (int ) ;

void wacom_input_sync(void *wcombo)
{
 input_sync(get_input_dev((struct wacom_combo *)wcombo));
}
