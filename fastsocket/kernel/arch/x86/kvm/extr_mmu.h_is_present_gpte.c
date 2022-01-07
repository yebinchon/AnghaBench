
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long PT_PRESENT_MASK ;

__attribute__((used)) static inline int is_present_gpte(unsigned long pte)
{
 return pte & PT_PRESENT_MASK;
}
