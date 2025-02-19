
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct amd64_pvt {TYPE_1__* csels; } ;
struct TYPE_2__ {int b_cnt; } ;


 int BUG_ON (int) ;
 int get_cs_base_and_mask (struct amd64_pvt*,int,int ,int*,int*) ;

__attribute__((used)) static void find_csrow_limits(struct mem_ctl_info *mci, int csrow,
         u64 *input_addr_min, u64 *input_addr_max)
{
 struct amd64_pvt *pvt;
 u64 base, mask;

 pvt = mci->pvt_info;
 BUG_ON((csrow < 0) || (csrow >= pvt->csels[0].b_cnt));

 get_cs_base_and_mask(pvt, csrow, 0, &base, &mask);

 *input_addr_min = base & ~mask;
 *input_addr_max = base | mask;
}
