
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct ni_gpct_device {int variant; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 int Gi_Alternate_Sync_Bit (int ) ;
 int Gi_Counting_Mode_Mask ;




 unsigned int NITIO_Gi_Counting_Mode_Reg (int ) ;
 scalar_t__ ni_tio_clock_period_ps (struct ni_gpct*,int ) ;
 scalar_t__ ni_tio_counting_mode_registers_present (struct ni_gpct_device*) ;
 int ni_tio_generic_clock_src_select (struct ni_gpct*) ;
 int ni_tio_get_soft_copy (struct ni_gpct*,unsigned int const) ;
 int ni_tio_set_bits (struct ni_gpct*,unsigned int const,int,int) ;

__attribute__((used)) static void ni_tio_set_sync_mode(struct ni_gpct *counter, int force_alt_sync)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const unsigned counting_mode_reg =
     NITIO_Gi_Counting_Mode_Reg(counter->counter_index);
 static const uint64_t min_normal_sync_period_ps = 25000;
 const uint64_t clock_period_ps = ni_tio_clock_period_ps(counter,
        ni_tio_generic_clock_src_select
        (counter));

 if (ni_tio_counting_mode_registers_present(counter_dev) == 0)
  return;

 switch (ni_tio_get_soft_copy(counter,
         counting_mode_reg) & Gi_Counting_Mode_Mask)
 {
 case 131:
 case 130:
 case 129:
 case 128:
  force_alt_sync = 1;
  break;
 default:
  break;
 }



 if (force_alt_sync ||
     (clock_period_ps && clock_period_ps < min_normal_sync_period_ps)) {
  ni_tio_set_bits(counter, counting_mode_reg,
    Gi_Alternate_Sync_Bit(counter_dev->variant),
    Gi_Alternate_Sync_Bit(counter_dev->variant));
 } else {
  ni_tio_set_bits(counter, counting_mode_reg,
    Gi_Alternate_Sync_Bit(counter_dev->variant),
    0x0);
 }
}
