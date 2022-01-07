
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CORGI_GPIO_ALL_STROBE_BIT ;
 int CORGI_GPIO_STROBE_BIT (int) ;
 int GPCR2 ;
 int GPDR2 ;

__attribute__((used)) static inline void corgikbd_reset_col(int col)
{

 GPCR2 = CORGI_GPIO_STROBE_BIT(col);

 GPDR2 = (GPDR2 & ~CORGI_GPIO_ALL_STROBE_BIT) | CORGI_GPIO_STROBE_BIT(col);
}
