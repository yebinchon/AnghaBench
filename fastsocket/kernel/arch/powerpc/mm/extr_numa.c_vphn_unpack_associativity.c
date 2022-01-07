
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
typedef int u16 ;


 int VPHN_ASSOC_BUFSIZE ;
 int const VPHN_FIELD_MASK ;
 int const VPHN_FIELD_MSB ;
 int const VPHN_FIELD_UNUSED ;

__attribute__((used)) static int vphn_unpack_associativity(const long *packed, unsigned int *unpacked)
{
 int i, nr_assoc_doms = 0;
 const u16 *field = (const u16*) packed;





 for (i = 0; i < VPHN_ASSOC_BUFSIZE; i++) {
  if (*field == (0xffff)) {




   unpacked[i] = *((u32*)field);
   field += 2;
  } else if (*field & (0x8000)) {

   unpacked[i] = *field & (~(0x8000));
   field++;
   nr_assoc_doms++;
  } else {



   unpacked[i] = *((u32*)field);
   field += 2;
   nr_assoc_doms++;
  }
 }

 return nr_assoc_doms;
}
