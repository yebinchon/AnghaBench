
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfa_ioc_s {int dummy; } ;


 int BFI_IOC_FAIL ;
 int bfa_ioc_cb_set_cur_ioc_fwstate (struct bfa_ioc_s*,int ) ;

__attribute__((used)) static void
bfa_ioc_cb_sync_ack(struct bfa_ioc_s *ioc)
{
 bfa_ioc_cb_set_cur_ioc_fwstate(ioc, BFI_IOC_FAIL);
}
