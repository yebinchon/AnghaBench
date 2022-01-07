
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exception_table_entry {int dummy; } ;


 struct exception_table_entry const __copy_user_fixup_ex ;
 int copy_user_memcpy ;
 int copy_user_memcpy_end ;

__attribute__((used)) static const struct exception_table_entry *check_exception_ranges(unsigned long addr)
{
 if ((addr >= (unsigned long)&copy_user_memcpy) &&
     (addr <= (unsigned long)&copy_user_memcpy_end))
  return &__copy_user_fixup_ex;

 return ((void*)0);
}
