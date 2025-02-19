
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct radeon_i2c_bus_rec {int i2c_id; scalar_t__ valid; } ;
struct TYPE_2__ {struct atom_context* atom_context; } ;
struct radeon_device {int ddev; int * i2c_bus; TYPE_1__ mode_info; } ;
struct atom_context {int bios; } ;
struct _ATOM_GPIO_I2C_INFO {int * asGPIO_Info; } ;
typedef int ATOM_GPIO_I2C_ASSIGMENT ;
typedef int ATOM_COMMON_TABLE_HEADER ;


 int DATA ;
 int GPIO_I2C_Info ;
 int GetIndexIntoMasterTable (int ,int ) ;
 scalar_t__ atom_parse_data_header (struct atom_context*,int,int*,int *,int *,int*) ;
 struct radeon_i2c_bus_rec radeon_get_bus_rec_for_i2c_gpio (int *) ;
 int radeon_i2c_create (int ,struct radeon_i2c_bus_rec*,char*) ;
 int radeon_lookup_i2c_gpio_quirks (struct radeon_device*,int *,int) ;
 int sprintf (char*,char*,int) ;

void radeon_atombios_i2c_init(struct radeon_device *rdev)
{
 struct atom_context *ctx = rdev->mode_info.atom_context;
 ATOM_GPIO_I2C_ASSIGMENT *gpio;
 struct radeon_i2c_bus_rec i2c;
 int index = GetIndexIntoMasterTable(DATA, GPIO_I2C_Info);
 struct _ATOM_GPIO_I2C_INFO *i2c_info;
 uint16_t data_offset, size;
 int i, num_indices;
 char stmp[32];

 if (atom_parse_data_header(ctx, index, &size, ((void*)0), ((void*)0), &data_offset)) {
  i2c_info = (struct _ATOM_GPIO_I2C_INFO *)(ctx->bios + data_offset);

  num_indices = (size - sizeof(ATOM_COMMON_TABLE_HEADER)) /
   sizeof(ATOM_GPIO_I2C_ASSIGMENT);

  for (i = 0; i < num_indices; i++) {
   gpio = &i2c_info->asGPIO_Info[i];

   radeon_lookup_i2c_gpio_quirks(rdev, gpio, i);

   i2c = radeon_get_bus_rec_for_i2c_gpio(gpio);

   if (i2c.valid) {
    sprintf(stmp, "0x%x", i2c.i2c_id);
    rdev->i2c_bus[i] = radeon_i2c_create(rdev->ddev, &i2c, stmp);
   }
  }
 }
}
