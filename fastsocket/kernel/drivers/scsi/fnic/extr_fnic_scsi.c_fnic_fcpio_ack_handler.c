
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct vnic_wq_copy {int dummy; } ;
struct fnic {unsigned int raw_wq_count; unsigned int rq_count; int* fw_ack_recd; TYPE_4__* lport; int * wq_copy_lock; int * fw_ack_index; struct vnic_wq_copy* wq_copy; } ;
struct TYPE_5__ {int request_out; } ;
struct TYPE_6__ {TYPE_1__ ack; } ;
struct fcpio_fw_req {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__* host; } ;
struct TYPE_7__ {int host_no; } ;


 int FNIC_TRACE (void (*) (struct fnic*,unsigned int,struct fcpio_fw_req*),int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ is_ack_index_in_range (struct vnic_wq_copy*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void fnic_fcpio_ack_handler(struct fnic *fnic,
       unsigned int cq_index,
       struct fcpio_fw_req *desc)
{
 struct vnic_wq_copy *wq;
 u16 request_out = desc->u.ack.request_out;
 unsigned long flags;
 u64 *ox_id_tag = (u64 *)(void *)desc;


 wq = &fnic->wq_copy[cq_index - fnic->raw_wq_count - fnic->rq_count];
 spin_lock_irqsave(&fnic->wq_copy_lock[0], flags);

 if (is_ack_index_in_range(wq, request_out)) {
  fnic->fw_ack_index[0] = request_out;
  fnic->fw_ack_recd[0] = 1;
 }
 spin_unlock_irqrestore(&fnic->wq_copy_lock[0], flags);
 FNIC_TRACE(fnic_fcpio_ack_handler,
    fnic->lport->host->host_no, 0, 0, ox_id_tag[2], ox_id_tag[3],
    ox_id_tag[4], ox_id_tag[5]);
}
