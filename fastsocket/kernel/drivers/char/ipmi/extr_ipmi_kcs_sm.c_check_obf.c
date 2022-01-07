
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_data {scalar_t__ obf_timeout; } ;


 int GET_STATUS_OBF (unsigned char) ;
 scalar_t__ OBF_RETRY_TIMEOUT ;
 int start_error_recovery (struct si_sm_data*,char*) ;

__attribute__((used)) static inline int check_obf(struct si_sm_data *kcs, unsigned char status,
       long time)
{
 if (!GET_STATUS_OBF(status)) {
  kcs->obf_timeout -= time;
  if (kcs->obf_timeout < 0) {
      start_error_recovery(kcs, "OBF not ready in time");
      return 1;
  }
  return 0;
 }
 kcs->obf_timeout = OBF_RETRY_TIMEOUT;
 return 1;
}
