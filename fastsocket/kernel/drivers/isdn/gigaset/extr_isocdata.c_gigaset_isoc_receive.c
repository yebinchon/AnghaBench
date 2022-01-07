
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bc_state {int proto2; } ;



 int hdlc_unpack (unsigned char*,unsigned int,struct bc_state*) ;
 int trans_receive (unsigned char*,unsigned int,struct bc_state*) ;

void gigaset_isoc_receive(unsigned char *src, unsigned count, struct bc_state *bcs)
{
 switch (bcs->proto2) {
 case 128:
  hdlc_unpack(src, count, bcs);
  break;
 default:
  trans_receive(src, count, bcs);
 }
}
