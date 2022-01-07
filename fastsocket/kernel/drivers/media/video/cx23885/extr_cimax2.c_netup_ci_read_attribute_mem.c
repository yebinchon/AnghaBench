
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_ca_en50221 {int dummy; } ;


 int NETUP_CI_RD ;
 int netup_ci_op_cam (struct dvb_ca_en50221*,int,int ,int ,int,int ) ;

int netup_ci_read_attribute_mem(struct dvb_ca_en50221 *en50221,
      int slot, int addr)
{
 return netup_ci_op_cam(en50221, slot, 0, NETUP_CI_RD, addr, 0);
}
