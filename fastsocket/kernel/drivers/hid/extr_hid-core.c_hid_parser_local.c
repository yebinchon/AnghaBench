
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int delimiter_depth; int delimiter_branch; unsigned int usage_minimum; } ;
struct TYPE_3__ {int usage_page; } ;
struct hid_parser {TYPE_2__ local; TYPE_1__ global; } ;
struct hid_item {scalar_t__ size; int tag; } ;
typedef unsigned int __u32 ;






 int dbg_hid (char*,...) ;
 int hid_add_usage (struct hid_parser*,unsigned int) ;
 unsigned int item_udata (struct hid_item*) ;

__attribute__((used)) static int hid_parser_local(struct hid_parser *parser, struct hid_item *item)
{
 __u32 data;
 unsigned n;

 if (item->size == 0) {
  dbg_hid("item data expected for local item\n");
  return -1;
 }

 data = item_udata(item);

 switch (item->tag) {
 case 131:

  if (data) {






   if (parser->local.delimiter_depth != 0) {
    dbg_hid("nested delimiters\n");
    return -1;
   }
   parser->local.delimiter_depth++;
   parser->local.delimiter_branch++;
  } else {
   if (parser->local.delimiter_depth < 1) {
    dbg_hid("bogus close delimiter\n");
    return -1;
   }
   parser->local.delimiter_depth--;
  }
  return 1;

 case 130:

  if (parser->local.delimiter_branch > 1) {
   dbg_hid("alternative usage ignored\n");
   return 0;
  }

  if (item->size <= 2)
   data = (parser->global.usage_page << 16) + data;

  return hid_add_usage(parser, data);

 case 128:

  if (parser->local.delimiter_branch > 1) {
   dbg_hid("alternative usage ignored\n");
   return 0;
  }

  if (item->size <= 2)
   data = (parser->global.usage_page << 16) + data;

  parser->local.usage_minimum = data;
  return 0;

 case 129:

  if (parser->local.delimiter_branch > 1) {
   dbg_hid("alternative usage ignored\n");
   return 0;
  }

  if (item->size <= 2)
   data = (parser->global.usage_page << 16) + data;

  for (n = parser->local.usage_minimum; n <= data; n++)
   if (hid_add_usage(parser, n)) {
    dbg_hid("hid_add_usage failed\n");
    return -1;
   }
  return 0;

 default:

  dbg_hid("unknown local item tag 0x%x\n", item->tag);
  return 0;
 }
 return 0;
}
