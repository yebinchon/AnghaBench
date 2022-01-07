
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ETIMEDOUT ;
 int SSSR_BSY ;
 int SSSR_RNE ;
 int Ser4SSDR ;
 int Ser4SSSR ;
 int TIMEOUT ;

int ssp_flush(void)
{
 int timeout = TIMEOUT * 2;

 do {
  while (Ser4SSSR & SSSR_RNE) {
          if (!--timeout)
           return -ETIMEDOUT;
   (void) Ser4SSDR;
  }
         if (!--timeout)
          return -ETIMEDOUT;
 } while (Ser4SSSR & SSSR_BSY);

 return 0;
}
