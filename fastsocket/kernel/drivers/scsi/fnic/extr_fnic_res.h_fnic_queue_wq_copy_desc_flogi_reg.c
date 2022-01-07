
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vnic_wq_copy {int dummy; } ;
struct TYPE_9__ {int gateway_mac; int s_id; scalar_t__ _resvd; int format; } ;
struct TYPE_10__ {TYPE_4__ flogi_reg; } ;
struct TYPE_6__ {int req_id; } ;
struct TYPE_7__ {TYPE_1__ u; } ;
struct TYPE_8__ {TYPE_2__ tag; scalar_t__ _resvd; scalar_t__ status; int type; } ;
struct fcpio_host_req {TYPE_5__ u; TYPE_3__ hdr; } ;


 int ETH_ALEN ;
 int FCPIO_FLOGI_REG ;
 int hton24 (int ,int ) ;
 int memcpy (int ,int *,int ) ;
 struct fcpio_host_req* vnic_wq_copy_next_desc (struct vnic_wq_copy*) ;
 int vnic_wq_copy_post (struct vnic_wq_copy*) ;

__attribute__((used)) static inline void fnic_queue_wq_copy_desc_flogi_reg(struct vnic_wq_copy *wq,
           u32 req_id, u8 format,
           u32 s_id, u8 *gw_mac)
{
 struct fcpio_host_req *desc = vnic_wq_copy_next_desc(wq);

 desc->hdr.type = FCPIO_FLOGI_REG;
 desc->hdr.status = 0;
 desc->hdr._resvd = 0;
 desc->hdr.tag.u.req_id = req_id;

 desc->u.flogi_reg.format = format;
 desc->u.flogi_reg._resvd = 0;
 hton24(desc->u.flogi_reg.s_id, s_id);
 memcpy(desc->u.flogi_reg.gateway_mac, gw_mac, ETH_ALEN);

 vnic_wq_copy_post(wq);
}
