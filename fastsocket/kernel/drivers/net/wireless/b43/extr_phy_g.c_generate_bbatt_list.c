
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;
struct b43_bbatt_list {int max_val; scalar_t__ min_val; int len; struct b43_bbatt const* list; } ;
struct b43_bbatt {int att; } ;


 int ARRAY_SIZE (struct b43_bbatt const*) ;

__attribute__((used)) static void generate_bbatt_list(struct b43_wldev *dev,
    struct b43_bbatt_list *list)
{
 static const struct b43_bbatt bbatt_0[] = {
  {.att = 0,},
  {.att = 1,},
  {.att = 2,},
  {.att = 3,},
  {.att = 4,},
  {.att = 5,},
  {.att = 6,},
  {.att = 7,},
  {.att = 8,},
 };

 list->list = bbatt_0;
 list->len = ARRAY_SIZE(bbatt_0);
 list->min_val = 0;
 list->max_val = 8;
}
