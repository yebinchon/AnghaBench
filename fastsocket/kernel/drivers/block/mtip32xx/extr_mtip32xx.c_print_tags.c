
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tagmap ;
struct driver_data {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int SLOTBITS_IN_LONGS ;
 int dev_warn (int *,char*,int,char*,unsigned char*) ;
 int memset (unsigned char*,int ,int) ;
 int sprintf (unsigned char*,char*,unsigned long) ;

__attribute__((used)) static void print_tags(struct driver_data *dd,
   char *msg,
   unsigned long *tagbits,
   int cnt)
{
 unsigned char tagmap[128];
 int group, tagmap_len = 0;

 memset(tagmap, 0, sizeof(tagmap));
 for (group = SLOTBITS_IN_LONGS; group > 0; group--)
  tagmap_len = sprintf(tagmap + tagmap_len, "%016lX ",
      tagbits[group-1]);
 dev_warn(&dd->pdev->dev,
   "%d command(s) %s: tagmap [%s]", cnt, msg, tagmap);
}
