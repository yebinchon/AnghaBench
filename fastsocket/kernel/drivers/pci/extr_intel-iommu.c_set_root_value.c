
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct root_entry {unsigned long val; } ;


 unsigned long VTD_PAGE_MASK ;

__attribute__((used)) static inline void set_root_value(struct root_entry *root, unsigned long value)
{
 root->val |= value & VTD_PAGE_MASK;
}
