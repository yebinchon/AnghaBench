
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int registers ;



__attribute__((used)) static void
copy_registers (registers *dptr, registers *sptr, int n)
{
 unsigned char *dreg;
 unsigned char *sreg;

 for (dreg = (unsigned char*)dptr, sreg = (unsigned char*)sptr; n > 0; n--)
  *dreg++ = *sreg++;
}
