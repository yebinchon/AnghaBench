
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct req_que {scalar_t__ ring_index; scalar_t__ length; scalar_t__ ring_ptr; scalar_t__ ring; } ;
struct TYPE_5__ {int hw; } ;
typedef TYPE_1__ scsi_qla_host_t ;
struct TYPE_6__ {int entry_type; } ;
typedef TYPE_2__ cont_a64_entry_t ;


 int CONTINUE_A64_TYPE ;
 int CONTINUE_A64_TYPE_FX00 ;
 scalar_t__ IS_QLAFX00 (int ) ;
 int __constant_cpu_to_le32 (int ) ;

__attribute__((used)) static inline cont_a64_entry_t *
qla2x00_prep_cont_type1_iocb(scsi_qla_host_t *vha, struct req_que *req)
{
 cont_a64_entry_t *cont_pkt;


 req->ring_index++;
 if (req->ring_index == req->length) {
  req->ring_index = 0;
  req->ring_ptr = req->ring;
 } else {
  req->ring_ptr++;
 }

 cont_pkt = (cont_a64_entry_t *)req->ring_ptr;


 *((uint32_t *)(&cont_pkt->entry_type)) = IS_QLAFX00(vha->hw) ?
     __constant_cpu_to_le32(CONTINUE_A64_TYPE_FX00) :
     __constant_cpu_to_le32(CONTINUE_A64_TYPE);

 return (cont_pkt);
}
