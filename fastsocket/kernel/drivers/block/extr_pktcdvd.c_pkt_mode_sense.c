
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktcdvd_device {int dummy; } ;
struct packet_command {int* cmd; int buflen; int data_direction; } ;


 int CGC_DATA_READ ;
 int GPCMD_MODE_SENSE_10 ;
 int memset (int*,int ,int) ;
 int pkt_generic_packet (struct pktcdvd_device*,struct packet_command*) ;

__attribute__((used)) static int pkt_mode_sense(struct pktcdvd_device *pd, struct packet_command *cgc, int page_code, int page_control)
{
 memset(cgc->cmd, 0, sizeof(cgc->cmd));

 cgc->cmd[0] = GPCMD_MODE_SENSE_10;
 cgc->cmd[2] = page_code | (page_control << 6);
 cgc->cmd[7] = cgc->buflen >> 8;
 cgc->cmd[8] = cgc->buflen & 0xff;
 cgc->data_direction = CGC_DATA_READ;
 return pkt_generic_packet(pd, cgc);
}
