
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BM_SIZE ;
 int ENOENT ;
 int MAX_PROGRAMMABLE_CHARS ;
 int MODE_DATA ;
 int MODE_INST ;
 int pvc_write (int,int ) ;

int pvc_program_cg(int charnum, u8 bitmap[BM_SIZE])
{
 int i;
 int addr;

 if (charnum > MAX_PROGRAMMABLE_CHARS)
  return -ENOENT;

 addr = charnum * 8;
 pvc_write(0x40 | addr, MODE_INST);

 for (i = 0; i < BM_SIZE; i++)
  pvc_write(bitmap[i], MODE_DATA);
 return 0;
}
