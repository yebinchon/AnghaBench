
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_vf_info {int state; } ;


 int EBUSY ;
 int QLC_BC_VF_CHANNEL ;
 int mdelay (int) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int __qlcnic_sriov_issue_bc_post(struct qlcnic_vf_info *vf)
{
 int ret = -EBUSY;
 u32 timeout = 10000;

 do {
  if (!test_and_set_bit(QLC_BC_VF_CHANNEL, &vf->state)) {
   ret = 0;
   break;
  }
  mdelay(1);
 } while (--timeout);

 return ret;
}
