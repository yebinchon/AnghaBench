
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvt_dev {int rdev; scalar_t__ pkts; } ;


 int KERN_WARNING ;
 int ir_raw_event_reset (int ) ;
 int nvt_clear_cir_fifo (struct nvt_dev*) ;
 int nvt_pr (int ,char*) ;

__attribute__((used)) static void nvt_handle_rx_fifo_overrun(struct nvt_dev *nvt)
{
 nvt_pr(KERN_WARNING, "RX FIFO overrun detected, flushing data!");

 nvt->pkts = 0;
 nvt_clear_cir_fifo(nvt);
 ir_raw_event_reset(nvt->rdev);
}
