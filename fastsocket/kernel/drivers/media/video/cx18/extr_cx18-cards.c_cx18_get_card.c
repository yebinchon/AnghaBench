
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct cx18_card {int dummy; } ;


 size_t ARRAY_SIZE (struct cx18_card const**) ;
 struct cx18_card const** cx18_card_list ;

const struct cx18_card *cx18_get_card(u16 index)
{
 if (index >= ARRAY_SIZE(cx18_card_list))
  return ((void*)0);
 return cx18_card_list[index];
}
