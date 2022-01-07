
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_iso_recv {scalar_t__ released_bytes; scalar_t__ buf_stride; int block_reader; int nblocks; } ;
struct hpsb_iso_packet_info {scalar_t__ total_len; } ;


 int ohci_iso_recv_release_block (struct ohci_iso_recv*,int) ;

__attribute__((used)) static void ohci_iso_recv_bufferfill_release(struct ohci_iso_recv *recv,
          struct hpsb_iso_packet_info *info)
{

 recv->released_bytes += info->total_len;


 while (recv->released_bytes > recv->buf_stride) {
  ohci_iso_recv_release_block(recv, recv->block_reader);
  recv->block_reader = (recv->block_reader + 1) % recv->nblocks;
  recv->released_bytes -= recv->buf_stride;
 }
}
