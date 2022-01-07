
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isdnhdlc_vars {int do_adapt56; int do_bitreverse; int state; } ;


 int HDLC_56KBIT ;
 int HDLC_BITREVERSE ;
 int HDLC_GET_DATA ;
 int memset (struct isdnhdlc_vars*,int ,int) ;

void isdnhdlc_rcv_init(struct isdnhdlc_vars *hdlc, u32 features)
{
 memset(hdlc, 0, sizeof(struct isdnhdlc_vars));
 hdlc->state = HDLC_GET_DATA;
 if (features & HDLC_56KBIT)
  hdlc->do_adapt56 = 1;
 if (features & HDLC_BITREVERSE)
  hdlc->do_bitreverse = 1;
}
