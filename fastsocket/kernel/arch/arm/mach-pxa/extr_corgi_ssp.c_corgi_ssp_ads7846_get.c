
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 int corgi_ssp_dev ;
 int ssp_read_word (int *,unsigned long*) ;

unsigned long corgi_ssp_ads7846_get(void)
{
 u32 ret = 0;
 ssp_read_word(&corgi_ssp_dev, &ret);
 return ret;
}
