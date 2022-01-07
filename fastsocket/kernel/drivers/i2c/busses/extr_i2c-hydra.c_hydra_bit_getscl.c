
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYDRA_SCLK ;
 int pdregr (void*) ;

__attribute__((used)) static int hydra_bit_getscl(void *data)
{
 return (pdregr(data) & HYDRA_SCLK) != 0;
}
