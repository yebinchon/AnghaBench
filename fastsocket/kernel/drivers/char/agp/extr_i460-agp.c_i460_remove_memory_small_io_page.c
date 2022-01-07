
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int page_count; } ;
typedef int off_t ;


 int I460_IOPAGES_PER_KPAGE ;
 int WR_FLUSH_GATT (int) ;
 int WR_GATT (int,int ) ;
 int pr_debug (char*,struct agp_memory*,int,int) ;

__attribute__((used)) static int i460_remove_memory_small_io_page(struct agp_memory *mem,
    off_t pg_start, int type)
{
 int i;

 pr_debug("i460_remove_memory_small_io_page(mem=%p, pg_start=%ld, type=%d)\n",
   mem, pg_start, type);

 pg_start = I460_IOPAGES_PER_KPAGE * pg_start;

 for (i = pg_start; i < (pg_start + I460_IOPAGES_PER_KPAGE * mem->page_count); i++)
  WR_GATT(i, 0);
 WR_FLUSH_GATT(i - 1);
 return 0;
}
