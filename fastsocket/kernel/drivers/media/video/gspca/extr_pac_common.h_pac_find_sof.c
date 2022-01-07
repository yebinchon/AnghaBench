
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int D_FRAM ;
 int PDEBUG (int ,char*,int,int) ;

__attribute__((used)) static unsigned char *pac_find_sof(u8 *sof_read,
     unsigned char *m, int len)
{
 int i;


 for (i = 0; i < len; i++) {
  switch (*sof_read) {
  case 0:
   if (m[i] == 0xff)
    *sof_read = 1;
   break;
  case 1:
   if (m[i] == 0xff)
    *sof_read = 2;
   else
    *sof_read = 0;
   break;
  case 2:
   switch (m[i]) {
   case 0x00:
    *sof_read = 3;
    break;
   case 0xff:

    break;
   default:
    *sof_read = 0;
   }
   break;
  case 3:
   if (m[i] == 0xff)
    *sof_read = 4;
   else
    *sof_read = 0;
   break;
  case 4:
   switch (m[i]) {
   case 0x96:

    PDEBUG(D_FRAM,
     "SOF found, bytes to analyze: %u."
     " Frame starts at byte #%u",
     len, i + 1);
    *sof_read = 0;
    return m + i + 1;
    break;
   case 0xff:
    *sof_read = 2;
    break;
   default:
    *sof_read = 0;
   }
   break;
  default:
   *sof_read = 0;
  }
 }

 return ((void*)0);
}
