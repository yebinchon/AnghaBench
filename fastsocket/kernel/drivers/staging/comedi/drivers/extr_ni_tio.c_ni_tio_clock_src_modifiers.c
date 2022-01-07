
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_gpct_device {int variant; } ;
struct ni_gpct {int counter_index; struct ni_gpct_device* counter_dev; } ;


 unsigned int const Gi_Prescale_X2_Bit (int ) ;
 unsigned int const Gi_Prescale_X8_Bit (int ) ;
 int Gi_Source_Polarity_Bit ;
 int NITIO_Gi_Counting_Mode_Reg (int ) ;
 int NITIO_Gi_Input_Select_Reg (int ) ;
 unsigned int NI_GPCT_INVERT_CLOCK_SRC_BIT ;
 unsigned int NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS ;
 unsigned int NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS ;
 int ni_tio_get_soft_copy (struct ni_gpct const*,int ) ;

__attribute__((used)) static unsigned ni_tio_clock_src_modifiers(const struct ni_gpct *counter)
{
 struct ni_gpct_device *counter_dev = counter->counter_dev;
 const unsigned counting_mode_bits = ni_tio_get_soft_copy(counter,
         NITIO_Gi_Counting_Mode_Reg
         (counter->
          counter_index));
 unsigned bits = 0;

 if (ni_tio_get_soft_copy(counter,
     NITIO_Gi_Input_Select_Reg
     (counter->counter_index)) &
     Gi_Source_Polarity_Bit)
  bits |= NI_GPCT_INVERT_CLOCK_SRC_BIT;
 if (counting_mode_bits & Gi_Prescale_X2_Bit(counter_dev->variant))
  bits |= NI_GPCT_PRESCALE_X2_CLOCK_SRC_BITS;
 if (counting_mode_bits & Gi_Prescale_X8_Bit(counter_dev->variant))
  bits |= NI_GPCT_PRESCALE_X8_CLOCK_SRC_BITS;
 return bits;
}
