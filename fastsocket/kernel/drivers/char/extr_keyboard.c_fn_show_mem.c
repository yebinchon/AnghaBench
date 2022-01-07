
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int show_mem (int ) ;

__attribute__((used)) static void fn_show_mem(struct vc_data *vc)
{
 show_mem(0);
}
