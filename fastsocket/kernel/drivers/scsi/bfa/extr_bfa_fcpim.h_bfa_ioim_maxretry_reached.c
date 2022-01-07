
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct bfa_ioim_s {scalar_t__ iotag; } ;
typedef int bfa_boolean_t ;


 int BFA_FALSE ;
 scalar_t__ BFA_IOIM_RETRY_MAX ;
 scalar_t__ BFA_IOIM_RETRY_TAG_OFFSET ;
 int BFA_TRUE ;

__attribute__((used)) static inline bfa_boolean_t
bfa_ioim_maxretry_reached(struct bfa_ioim_s *ioim)
{
 uint16_t k = ioim->iotag >> BFA_IOIM_RETRY_TAG_OFFSET;
 if (k < BFA_IOIM_RETRY_MAX)
  return BFA_FALSE;
 return BFA_TRUE;
}
