
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pointer; } ;
union acpi_object {TYPE_1__ buffer; } ;
typedef int u32 ;
typedef size_t u16 ;
struct TYPE_4__ {int power_cntl; int i2c_mux_cntl; int disp_mux_cntl; scalar_t__ px_params; } ;
struct radeon_atpx {TYPE_2__ functions; int handle; } ;
struct atpx_px_params {int flags; int valid_flags; } ;
typedef int output ;


 int ATPX_CRT1_RGB_SIGNAL_MUXED ;
 int ATPX_DFP_SIGNAL_MUXED ;
 int ATPX_FUNCTION_GET_PX_PARAMETERS ;
 int ATPX_SEPARATE_MUX_FOR_I2C ;
 int ATPX_TV_SIGNAL_MUXED ;
 int EINVAL ;
 int EIO ;
 int kfree (union acpi_object*) ;
 int memcpy (struct atpx_px_params*,scalar_t__,size_t) ;
 int memset (struct atpx_px_params*,int ,int) ;
 size_t min (int,size_t) ;
 int printk (char*,size_t) ;
 union acpi_object* radeon_atpx_call (int ,int ,int *) ;

__attribute__((used)) static int radeon_atpx_validate(struct radeon_atpx *atpx)
{


 atpx->functions.power_cntl = 1;

 if (atpx->functions.px_params) {
  union acpi_object *info;
  struct atpx_px_params output;
  size_t size;
  u32 valid_bits;

  info = radeon_atpx_call(atpx->handle, ATPX_FUNCTION_GET_PX_PARAMETERS, ((void*)0));
  if (!info)
   return -EIO;

  memset(&output, 0, sizeof(output));

  size = *(u16 *) info->buffer.pointer;
  if (size < 10) {
   printk("ATPX buffer is too small: %zu\n", size);
   kfree(info);
   return -EINVAL;
  }
  size = min(sizeof(output), size);

  memcpy(&output, info->buffer.pointer, size);

  valid_bits = output.flags & output.valid_flags;

  if (valid_bits & ATPX_SEPARATE_MUX_FOR_I2C) {
   atpx->functions.i2c_mux_cntl = 1;
   atpx->functions.disp_mux_cntl = 1;
  }

  if (valid_bits & (ATPX_CRT1_RGB_SIGNAL_MUXED |
      ATPX_TV_SIGNAL_MUXED |
      ATPX_DFP_SIGNAL_MUXED))
   atpx->functions.disp_mux_cntl = 1;

  kfree(info);
 }
 return 0;
}
