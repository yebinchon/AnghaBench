
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_command {unsigned int* cmd; int buflen; int data_direction; } ;


 int CGC_DATA_READ ;
 unsigned int GPCMD_REPORT_KEY ;

__attribute__((used)) static void setup_report_key(struct packet_command *cgc, unsigned agid, unsigned type)
{
 cgc->cmd[0] = GPCMD_REPORT_KEY;
 cgc->cmd[10] = type | (agid << 6);
 switch (type) {
  case 0: case 8: case 5: {
   cgc->buflen = 8;
   break;
  }
  case 1: {
   cgc->buflen = 16;
   break;
  }
  case 2: case 4: {
   cgc->buflen = 12;
   break;
  }
 }
 cgc->cmd[9] = cgc->buflen;
 cgc->data_direction = CGC_DATA_READ;
}
