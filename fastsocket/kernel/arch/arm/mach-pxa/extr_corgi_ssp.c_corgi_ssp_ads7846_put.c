
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;


 int corgi_ssp_dev ;
 int ssp_write_word (int *,int ) ;

void corgi_ssp_ads7846_put(ulong data)
{
 ssp_write_word(&corgi_ssp_dev,data);
}
