
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pvr2_hdw {int dummy; } ;


 int PVR2_GPIO_IN ;
 int pvr2_read_register (struct pvr2_hdw*,int ,int *) ;

int pvr2_hdw_gpio_get_in(struct pvr2_hdw *hdw,u32 *dp)
{
 return pvr2_read_register(hdw,PVR2_GPIO_IN,dp);
}
