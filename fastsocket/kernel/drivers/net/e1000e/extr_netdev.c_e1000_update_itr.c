
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u16 ;






__attribute__((used)) static unsigned int e1000_update_itr(u16 itr_setting, int packets, int bytes)
{
 unsigned int retval = itr_setting;

 if (packets == 0)
  return itr_setting;

 switch (itr_setting) {
 case 128:

  if (bytes / packets > 8000)
   retval = 130;
  else if ((packets < 5) && (bytes > 512))
   retval = 129;
  break;
 case 129:
  if (bytes > 10000) {

   if (bytes / packets > 8000)
    retval = 130;
   else if ((packets < 10) || ((bytes / packets) > 1200))
    retval = 130;
   else if ((packets > 35))
    retval = 128;
  } else if (bytes / packets > 2000) {
   retval = 130;
  } else if (packets <= 2 && bytes < 512) {
   retval = 128;
  }
  break;
 case 130:
  if (bytes > 25000) {
   if (packets > 35)
    retval = 129;
  } else if (bytes < 6000) {
   retval = 129;
  }
  break;
 }

 return retval;
}
