
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int ngpio; } ;
struct pca953x_chip {TYPE_2__* client; TYPE_1__ gpio_chip; } ;
struct TYPE_5__ {int dev; } ;


 int dev_err (int *,char*) ;
 int i2c_smbus_write_byte_data (TYPE_2__*,int,int ) ;
 int i2c_smbus_write_word_data (TYPE_2__*,int,int ) ;

__attribute__((used)) static int pca953x_write_reg(struct pca953x_chip *chip, int reg, uint16_t val)
{
 int ret;

 if (chip->gpio_chip.ngpio <= 8)
  ret = i2c_smbus_write_byte_data(chip->client, reg, val);
 else
  ret = i2c_smbus_write_word_data(chip->client, reg << 1, val);

 if (ret < 0) {
  dev_err(&chip->client->dev, "failed writing register\n");
  return ret;
 }

 return 0;
}
