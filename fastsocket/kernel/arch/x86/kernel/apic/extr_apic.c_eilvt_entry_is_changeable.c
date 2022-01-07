
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int APIC_EILVT_MASKED ;

__attribute__((used)) static inline int eilvt_entry_is_changeable(unsigned int old, unsigned int new)
{
 return (old & APIC_EILVT_MASKED)
  || (new == APIC_EILVT_MASKED)
  || ((new & ~APIC_EILVT_MASKED) == old);
}
