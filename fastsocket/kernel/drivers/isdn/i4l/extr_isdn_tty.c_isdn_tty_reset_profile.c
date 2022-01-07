
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* profile; char* pmsn; char* plmsn; } ;
typedef TYPE_1__ atemu ;


 int ISDN_MODEM_WINSIZE ;
 int ISDN_PROTO_L2_X75I ;
 int ISDN_PROTO_L3_TRANS ;
 int ISDN_SERIAL_XMIT_SIZE ;

__attribute__((used)) static void
isdn_tty_reset_profile(atemu * m)
{
 m->profile[0] = 0;
 m->profile[1] = 0;
 m->profile[2] = 43;
 m->profile[3] = 13;
 m->profile[4] = 10;
 m->profile[5] = 8;
 m->profile[6] = 3;
 m->profile[7] = 60;
 m->profile[8] = 2;
 m->profile[9] = 6;
 m->profile[10] = 7;
 m->profile[11] = 70;
 m->profile[12] = 0x45;
 m->profile[13] = 4;
 m->profile[14] = ISDN_PROTO_L2_X75I;
 m->profile[15] = ISDN_PROTO_L3_TRANS;
 m->profile[16] = ISDN_SERIAL_XMIT_SIZE / 16;
 m->profile[17] = ISDN_MODEM_WINSIZE;
 m->profile[18] = 4;
 m->profile[19] = 0;
 m->profile[20] = 0;
 m->profile[23] = 0;
 m->pmsn[0] = '\0';
 m->plmsn[0] = '\0';
}
