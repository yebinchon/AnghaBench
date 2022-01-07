
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int ngpio; } ;
struct pca953x_chip {TYPE_2__* client; TYPE_1__ gpio_chip; } ;
struct TYPE_5__ {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_read_byte_data (TYPE_2__*,int) ;
 int i2c_smbus_read_word_data (TYPE_2__*,int) ;

__attribute__((used)) static int pca953x_read_reg(struct pca953x_chip *chip, int reg, uint16_t *val)
{
 int ret;

 if (chip->gpio_chip.ngpio <= 8)
  ret = i2c_smbus_read_byte_data(chip->client, reg);
 else
  ret = i2c_smbus_read_word_data(chip->client, reg << 1);

 if (ret < 0) {
  dev_err(&chip->client->dev, "failed reading register\n");
  return ret;
 }

 *val = (uint16_t)ret;
 return 0;
}
