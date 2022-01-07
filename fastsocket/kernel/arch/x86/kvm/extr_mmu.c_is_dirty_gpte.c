
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PT_DIRTY_MASK ;

__attribute__((used)) static int is_dirty_gpte(unsigned long pte)
{
 return pte & PT_DIRTY_MASK;
}
