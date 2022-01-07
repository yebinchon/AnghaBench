
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct intel_dp {int dummy; } ;


 int intel_dp_aux_native_write (struct intel_dp*,int ,int *,int) ;

__attribute__((used)) static int
intel_dp_aux_native_write_1(struct intel_dp *intel_dp,
       uint16_t address, uint8_t byte)
{
 return intel_dp_aux_native_write(intel_dp, address, &byte, 1);
}
