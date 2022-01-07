
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tap_filter {int count; } ;
struct sk_buff {int dummy; } ;


 int run_filter (struct tap_filter*,struct sk_buff const*) ;

__attribute__((used)) static int check_filter(struct tap_filter *filter, const struct sk_buff *skb)
{
 if (!filter->count)
  return 1;

 return run_filter(filter, skb);
}
