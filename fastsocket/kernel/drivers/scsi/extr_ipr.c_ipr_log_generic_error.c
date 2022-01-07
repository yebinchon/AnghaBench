
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ipr_ioa_cfg {int dummy; } ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ raw; } ;
struct TYPE_6__ {int length; TYPE_2__ u; } ;
struct ipr_hostrcb {TYPE_3__ hcam; } ;


 int be32_to_cpu (int ) ;
 int ipr_log_hex_data (struct ipr_ioa_cfg*,int ,int ) ;

__attribute__((used)) static void ipr_log_generic_error(struct ipr_ioa_cfg *ioa_cfg,
      struct ipr_hostrcb *hostrcb)
{
 ipr_log_hex_data(ioa_cfg, hostrcb->hcam.u.raw.data,
    be32_to_cpu(hostrcb->hcam.length));
}
