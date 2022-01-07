
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int scrollback (struct vc_data*,int ) ;

__attribute__((used)) static void fn_scroll_back(struct vc_data *vc)
{
 scrollback(vc, 0);
}
