
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_ca_en50221 {int dummy; } ;


 int NETUP_CI_CTL ;
 int netup_ci_op_cam (struct dvb_ca_en50221*,int,int ,int ,int ,int ) ;

int netup_ci_write_cam_ctl(struct dvb_ca_en50221 *en50221, int slot,
       u8 addr, u8 data)
{
 return netup_ci_op_cam(en50221, slot, NETUP_CI_CTL, 0, addr, data);
}
