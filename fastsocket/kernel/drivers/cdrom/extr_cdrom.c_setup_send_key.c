
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {unsigned int* cmd; int buflen; int data_direction; } ;


 int CGC_DATA_WRITE ;
 unsigned int GPCMD_SEND_KEY ;

__attribute__((used)) static void setup_send_key(struct packet_command *cgc, unsigned agid, unsigned type)
{
 cgc->cmd[0] = GPCMD_SEND_KEY;
 cgc->cmd[10] = type | (agid << 6);
 switch (type) {
  case 1: {
   cgc->buflen = 16;
   break;
  }
  case 3: {
   cgc->buflen = 12;
   break;
  }
  case 6: {
   cgc->buflen = 8;
   break;
  }
 }
 cgc->cmd[9] = cgc->buflen;
 cgc->data_direction = CGC_DATA_WRITE;
}
