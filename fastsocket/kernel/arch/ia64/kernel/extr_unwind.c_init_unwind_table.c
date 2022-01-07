
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unw_table_entry {int start_offset; int end_offset; } ;
struct unw_table {char const* name; unsigned long gp; unsigned long start; unsigned long end; int length; struct unw_table_entry const* array; int segment_base; } ;



__attribute__((used)) static void
init_unwind_table (struct unw_table *table, const char *name, unsigned long segment_base,
     unsigned long gp, const void *table_start, const void *table_end)
{
 const struct unw_table_entry *start = table_start, *end = table_end;

 table->name = name;
 table->segment_base = segment_base;
 table->gp = gp;
 table->start = segment_base + start[0].start_offset;
 table->end = segment_base + end[-1].end_offset;
 table->array = start;
 table->length = end - start;
}
