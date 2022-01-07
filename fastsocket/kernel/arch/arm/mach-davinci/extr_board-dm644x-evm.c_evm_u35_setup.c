
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int gpio_direction_output (int,int) ;
 int gpio_request (int,char*) ;
 int setup_usb (int,int) ;

__attribute__((used)) static int
evm_u35_setup(struct i2c_client *client, int gpio, unsigned ngpio, void *c)
{

 gpio_request(gpio + 0, "nDRV_VBUS");
 gpio_direction_output(gpio + 0, 1);


 gpio_request(gpio + 1, "VDDIMX_EN");
 gpio_direction_output(gpio + 1, 1);


 gpio_request(gpio + 2, "VLYNQ_EN");
 gpio_direction_output(gpio + 2, 1);


 gpio_request(gpio + 3, "nCF_RESET");
 gpio_direction_output(gpio + 3, 0);




 gpio_request(gpio + 5, "WLAN_RESET");
 gpio_direction_output(gpio + 5, 1);


 gpio_request(gpio + 6, "nATA_SEL");
 gpio_direction_output(gpio + 6, 0);


 gpio_request(gpio + 7, "nCF_SEL");
 gpio_direction_output(gpio + 7, 1);




 setup_usb(500, 8);

 return 0;
}
