
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_config_info {int dummy; } ;


 int GFP_KERNEL ;
 int __ap_query_configuration (int *) ;
 int * ap_configuration ;
 scalar_t__ ap_configuration_available () ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static void ap_query_configuration(void)
{
 ap_configuration = ((void*)0);

}
