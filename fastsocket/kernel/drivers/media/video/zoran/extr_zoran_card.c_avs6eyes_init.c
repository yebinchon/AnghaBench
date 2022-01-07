
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zoran {int dummy; } ;


 int GPIO (struct zoran*,int,int) ;
 int default_mux ;
 int udelay (int) ;

__attribute__((used)) static void
avs6eyes_init (struct zoran *zr)
{





 int mux = default_mux;

 GPIO(zr, 4, 1);
 udelay(2);

 GPIO(zr, 0, 1);
 GPIO(zr, 1, 0);
 GPIO(zr, 2, mux & 1);
 GPIO(zr, 3, 0);
 GPIO(zr, 4, 0);
 GPIO(zr, 5, mux & 2);
 GPIO(zr, 6, 0);
 GPIO(zr, 7, mux & 4);

}
