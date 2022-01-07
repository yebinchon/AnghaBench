
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucbus_write_cmd {int member_0; int member_1; } ;
struct sd {int gspca_dev; } ;


 int SQ930_GPIO_POWER ;
 int gpio_set (struct sd*,int ,int) ;
 int ucbus_write (int *,struct ucbus_write_cmd const*,int,int) ;

__attribute__((used)) static void bridge_init(struct sd *sd)
{
 static const struct ucbus_write_cmd clkfreq_cmd = {
    0xf031, 0
 };

 ucbus_write(&sd->gspca_dev, &clkfreq_cmd, 1, 1);

 gpio_set(sd, SQ930_GPIO_POWER, 0xff00);
}
