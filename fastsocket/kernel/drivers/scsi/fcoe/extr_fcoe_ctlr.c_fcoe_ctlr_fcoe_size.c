
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct fcoe_hdr {int dummy; } ;
struct fcoe_ctlr {TYPE_1__* lp; } ;
struct fcoe_crc_eof {int dummy; } ;
struct fc_frame_header {int dummy; } ;
struct TYPE_2__ {scalar_t__ mfs; } ;



__attribute__((used)) static inline u32 fcoe_ctlr_fcoe_size(struct fcoe_ctlr *fip)
{





 return fip->lp->mfs + sizeof(struct fc_frame_header) +
  sizeof(struct fcoe_hdr) + sizeof(struct fcoe_crc_eof);
}
