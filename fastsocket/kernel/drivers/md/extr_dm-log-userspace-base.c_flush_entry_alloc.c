
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flush_entry {int dummy; } ;
typedef int gfp_t ;


 void* kmalloc (int,int ) ;

__attribute__((used)) static void *flush_entry_alloc(gfp_t gfp_mask, void *pool_data)
{
 return kmalloc(sizeof(struct flush_entry), gfp_mask);
}
