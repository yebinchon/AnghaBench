
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ETIMEDOUT ;
 int SSSR_BSY ;
 int SSSR_TNF ;
 int Ser4SSDR ;
 int Ser4SSSR ;
 int TIMEOUT ;
 int cpu_relax () ;

int ssp_write_word(u16 data)
{
 int timeout = TIMEOUT;

 while (!(Ser4SSSR & SSSR_TNF)) {
         if (!--timeout)
          return -ETIMEDOUT;
  cpu_relax();
 }

 Ser4SSDR = data;

 timeout = TIMEOUT;
 while (!(Ser4SSSR & SSSR_BSY)) {
         if (!--timeout)
          return -ETIMEDOUT;
  cpu_relax();
 }

 return 0;
}
