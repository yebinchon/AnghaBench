
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ rsts; scalar_t__ acks; scalar_t__ reqs; scalar_t__ msgs_rx; scalar_t__ msgs_tx; } ;
struct TYPE_3__ {int check_for_rst; int check_for_ack; int check_for_msg; int write_posted; int read_posted; int write; int read; } ;
struct e1000_mbx_info {TYPE_2__ stats; TYPE_1__ ops; int size; scalar_t__ usec_delay; scalar_t__ timeout; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int E1000_VFMAILBOX_SIZE ;
 int igb_check_for_ack_pf ;
 int igb_check_for_msg_pf ;
 int igb_check_for_rst_pf ;
 int igb_read_mbx_pf ;
 int igb_read_posted_mbx ;
 int igb_write_mbx_pf ;
 int igb_write_posted_mbx ;

s32 igb_init_mbx_params_pf(struct e1000_hw *hw)
{
 struct e1000_mbx_info *mbx = &hw->mbx;

 mbx->timeout = 0;
 mbx->usec_delay = 0;

 mbx->size = E1000_VFMAILBOX_SIZE;

 mbx->ops.read = igb_read_mbx_pf;
 mbx->ops.write = igb_write_mbx_pf;
 mbx->ops.read_posted = igb_read_posted_mbx;
 mbx->ops.write_posted = igb_write_posted_mbx;
 mbx->ops.check_for_msg = igb_check_for_msg_pf;
 mbx->ops.check_for_ack = igb_check_for_ack_pf;
 mbx->ops.check_for_rst = igb_check_for_rst_pf;

 mbx->stats.msgs_tx = 0;
 mbx->stats.msgs_rx = 0;
 mbx->stats.reqs = 0;
 mbx->stats.acks = 0;
 mbx->stats.rsts = 0;

 return 0;
}
