
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;


 int peripheral_free (unsigned short const) ;
 int peripheral_request (unsigned short const,char const*) ;

int peripheral_request_list(const unsigned short per[], const char *label)
{
 u16 cnt;
 int ret;

 for (cnt = 0; per[cnt] != 0; cnt++) {

  ret = peripheral_request(per[cnt], label);

  if (ret < 0) {
   for ( ; cnt > 0; cnt--)
    peripheral_free(per[cnt - 1]);

   return ret;
  }
 }

 return 0;
}
