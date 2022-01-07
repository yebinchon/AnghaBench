
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hid_parser {int collection_stack_ptr; size_t* collection_stack; TYPE_1__* device; } ;
struct TYPE_4__ {unsigned int type; int usage; } ;
struct TYPE_3__ {TYPE_2__* collection; } ;



__attribute__((used)) static unsigned hid_lookup_collection(struct hid_parser *parser, unsigned type)
{
 int n;
 for (n = parser->collection_stack_ptr - 1; n >= 0; n--)
  if (parser->device->collection[parser->collection_stack[n]].type == type)
   return parser->device->collection[parser->collection_stack[n]].usage;
 return 0;
}
