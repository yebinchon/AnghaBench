
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctrl_inw (int) ;

__attribute__((used)) static inline void delay(void)
{






 ctrl_inw(0xa0000000);

}
