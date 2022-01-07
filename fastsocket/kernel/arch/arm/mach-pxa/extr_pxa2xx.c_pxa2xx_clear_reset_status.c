
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int RCSR ;

void pxa2xx_clear_reset_status(unsigned int mask)
{

 RCSR = mask;
}
