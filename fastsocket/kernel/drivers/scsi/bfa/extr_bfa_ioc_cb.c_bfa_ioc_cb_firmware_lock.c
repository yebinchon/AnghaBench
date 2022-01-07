
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;
typedef int bfa_boolean_t ;


 int BFA_TRUE ;

__attribute__((used)) static bfa_boolean_t
bfa_ioc_cb_firmware_lock(struct bfa_ioc_s *ioc)
{
 return BFA_TRUE;
}
