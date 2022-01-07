
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int pri_is_rev_2_card(int card_ordinal)
{
 switch (card_ordinal) {
 case 129:
 case 128:
  return (1);
 }
 return (0);
}
