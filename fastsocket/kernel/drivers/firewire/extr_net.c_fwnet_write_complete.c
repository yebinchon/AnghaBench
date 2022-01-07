
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnet_packet_task {int dummy; } ;
struct fw_card {int dummy; } ;


 int RCODE_COMPLETE ;
 int fw_error (char*,int) ;
 int fwnet_transmit_packet_done (struct fwnet_packet_task*) ;

__attribute__((used)) static void fwnet_write_complete(struct fw_card *card, int rcode,
     void *payload, size_t length, void *data)
{
 struct fwnet_packet_task *ptask;

 ptask = data;

 if (rcode == RCODE_COMPLETE)
  fwnet_transmit_packet_done(ptask);
 else
  fw_error("fwnet_write_complete: failed: %x\n", rcode);

}
