
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_ctrl_blk {scalar_t__ tastat; int hastat; } ;
struct initio_host {struct scsi_ctrl_blk* active; int index; } ;


 int HOST_BAD_PHAS ;
 int initio_append_done_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 int initio_post_scsi_rst (struct initio_host*) ;
 int initio_reset_scsi (struct initio_host*,int) ;
 int initio_stop_bm (struct initio_host*) ;
 int initio_unlink_busy_scb (struct initio_host*,struct scsi_ctrl_blk*) ;
 int printk (char*,int ) ;

__attribute__((used)) static int initio_bad_seq(struct initio_host * host)
{
 struct scsi_ctrl_blk *scb;

 printk("initio_bad_seg c=%d\n", host->index);

 if ((scb = host->active) != ((void*)0)) {
  initio_unlink_busy_scb(host, scb);
  scb->hastat = HOST_BAD_PHAS;
  scb->tastat = 0;
  initio_append_done_scb(host, scb);
 }
 initio_stop_bm(host);
 initio_reset_scsi(host, 8);
 return initio_post_scsi_rst(host);
}
