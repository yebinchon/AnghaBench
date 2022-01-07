
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct intel_dp {int dummy; } ;


 int intel_dp_aux_native_read (struct intel_dp*,int ,int *,int) ;
 int msleep (int) ;

__attribute__((used)) static bool
intel_dp_aux_native_read_retry(struct intel_dp *intel_dp, uint16_t address,
          uint8_t *recv, int recv_bytes)
{
 int ret, i;





 for (i = 0; i < 3; i++) {
  ret = intel_dp_aux_native_read(intel_dp, address, recv,
            recv_bytes);
  if (ret == recv_bytes)
   return 1;
  msleep(1);
 }

 return 0;
}
