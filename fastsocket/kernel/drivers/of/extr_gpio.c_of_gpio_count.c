
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int EEXIST ;
 int of_parse_phandles_with_args (struct device_node*,char*,char*,unsigned int,int *,int *) ;

unsigned int of_gpio_count(struct device_node *np)
{
 unsigned int cnt = 0;

 do {
  int ret;

  ret = of_parse_phandles_with_args(np, "gpios", "#gpio-cells",
        cnt, ((void*)0), ((void*)0));

  if (ret < 0 && ret != -EEXIST)
   break;
 } while (++cnt);

 return cnt;
}
