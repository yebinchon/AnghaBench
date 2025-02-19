
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int __u8 ;
struct TYPE_5__ {char* c; } ;
struct TYPE_4__ {scalar_t__ num_nodes; int timestamp; TYPE_2__* node; } ;
typedef TYPE_1__ MetricomNodeTable ;
typedef TYPE_2__ MetricomNode ;


 scalar_t__ NODE_TABLE_SIZE ;
 int do_gettimeofday (int *) ;

__attribute__((used)) static void get_radio_neighbours(MetricomNodeTable * table, __u8 * ptr, __u8 * end)
{
 table->num_nodes = 0;
 while (ptr < end && table->num_nodes < NODE_TABLE_SIZE) {
  MetricomNode *node = &table->node[table->num_nodes++];
  char *dst = node->c, *limit = dst + sizeof(*node) - 1;
  while (ptr < end && *ptr <= 32)
   ptr++;
  while (ptr < end && dst < limit && *ptr != 10)
   *dst++ = *ptr++;
  *dst++ = 0;
  while (ptr < end && ptr[-1] != 10)
   ptr++;
 }
 do_gettimeofday(&table->timestamp);
}
