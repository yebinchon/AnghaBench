
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int last_console ;
 int set_console (int ) ;

__attribute__((used)) static void fn_lastcons(struct vc_data *vc)
{

 set_console(last_console);
}
