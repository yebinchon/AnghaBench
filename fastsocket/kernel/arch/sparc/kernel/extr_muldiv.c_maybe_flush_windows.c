
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline void maybe_flush_windows(unsigned int rs1, unsigned int rs2,
           unsigned int rd)
{
 if(rs2 >= 16 || rs1 >= 16 || rd >= 16) {

  __asm__ __volatile__("save %sp, -0x40, %sp\n\t"
         "save %sp, -0x40, %sp\n\t"
         "save %sp, -0x40, %sp\n\t"
         "save %sp, -0x40, %sp\n\t"
         "save %sp, -0x40, %sp\n\t"
         "save %sp, -0x40, %sp\n\t"
         "save %sp, -0x40, %sp\n\t"
         "restore; restore; restore; restore;\n\t"
         "restore; restore; restore;\n\t");
 }
}
