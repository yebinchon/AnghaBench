
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int APIC_EILVT_MASKED ;
 int APIC_EILVT_NR_MAX ;
 unsigned int atomic_cmpxchg (int *,unsigned int,unsigned int) ;
 unsigned int atomic_read (int *) ;
 int eilvt_entry_is_changeable (unsigned int,unsigned int) ;
 int * eilvt_offsets ;

__attribute__((used)) static unsigned int reserve_eilvt_offset(int offset, unsigned int new)
{
 unsigned int rsvd;

 if (offset >= APIC_EILVT_NR_MAX)
  return ~0;

 rsvd = atomic_read(&eilvt_offsets[offset]) & ~APIC_EILVT_MASKED;
 do {
  if (rsvd &&
      !eilvt_entry_is_changeable(rsvd, new))

   return rsvd;
  rsvd = atomic_cmpxchg(&eilvt_offsets[offset], rsvd, new);
 } while (rsvd != new);

 return new;
}
