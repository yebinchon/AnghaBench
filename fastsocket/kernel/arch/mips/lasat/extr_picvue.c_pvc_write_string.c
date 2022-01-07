
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int MODE_DATA ;
 int MODE_INST ;
 int PVC_LINELEN ;
 int PVC_NLINES ;
 int pvc_write (int,int ) ;

void pvc_write_string(const unsigned char *str, u8 addr, int line)
{
 int i = 0;

 if (line > 0 && (PVC_NLINES > 1))
  addr += 0x40 * line;
 pvc_write(0x80 | addr, MODE_INST);

 while (*str != 0 && i < PVC_LINELEN) {
  pvc_write(*str++, MODE_DATA);
  i++;
 }
}
