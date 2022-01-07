
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {int next_state; size_t target; int status; } ;
struct initio_host {scalar_t__ addr; int * targets; int * active_tc; struct scsi_ctrl_blk* active; } ;


 int SCB_SELECT ;
 int TSC_SELATNSTOP ;
 scalar_t__ TUL_SCmd ;
 int outb (int ,scalar_t__) ;

__attribute__((used)) static void initio_select_atn_stop(struct initio_host * host, struct scsi_ctrl_blk * scb)
{
 scb->status |= SCB_SELECT;
 scb->next_state = 0x1;
 host->active = scb;
 host->active_tc = &host->targets[scb->target];
 outb(TSC_SELATNSTOP, host->addr + TUL_SCmd);
}
