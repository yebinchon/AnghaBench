
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct saa7164_dev {int dummy; } ;


 int saa7164_api_modify_gpio (struct saa7164_dev*,int ,int ,int ) ;

int saa7164_api_clear_gpiobit(struct saa7164_dev *dev, u8 unitid,
 u8 pin)
{
 return saa7164_api_modify_gpio(dev, unitid, pin, 0);
}
