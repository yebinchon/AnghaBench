
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hptiop_hba {int dummy; } ;


 int IOPMU_QUEUE_ADDR_HOST_BIT ;
 int hptiop_host_request_callback_itl (struct hptiop_hba*,int) ;
 int hptiop_iop_request_callback_itl (struct hptiop_hba*,int) ;

__attribute__((used)) static void hptiop_request_callback_itl(struct hptiop_hba *hba, u32 tag)
{
 if (tag & IOPMU_QUEUE_ADDR_HOST_BIT)
  hptiop_host_request_callback_itl(hba,
    tag & ~IOPMU_QUEUE_ADDR_HOST_BIT);
 else
  hptiop_iop_request_callback_itl(hba, tag);
}
