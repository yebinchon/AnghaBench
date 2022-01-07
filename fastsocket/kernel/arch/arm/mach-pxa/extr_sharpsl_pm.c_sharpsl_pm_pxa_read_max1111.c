
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXCTRL_PD0 ;
 int MAXCTRL_PD1 ;
 int MAXCTRL_SEL_SH ;
 int MAXCTRL_SGL ;
 int MAXCTRL_STR ;
 int MAXCTRL_UNI ;
 int corgi_ssp_max1111_get (int) ;
 scalar_t__ machine_is_tosa () ;

int sharpsl_pm_pxa_read_max1111(int channel)
{
 if (machine_is_tosa())
     return 0;





 extern int max1111_read_channel(int);




 return max1111_read_channel(channel >> 1);

}
