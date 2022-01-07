
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct em28xx_ir_poll_result {int toggle_bit; int read_count; int rc_address; int* rc_data; } ;
struct em28xx_IR {struct em28xx* dev; } ;
struct em28xx {int (* em28xx_read_reg_req_len ) (struct em28xx*,int ,int ,int*,int) ;} ;
typedef int msg ;


 int EM2874_R51_IR ;
 int stub1 (struct em28xx*,int ,int ,int*,int) ;

__attribute__((used)) static int em2874_polling_getkey(struct em28xx_IR *ir,
     struct em28xx_ir_poll_result *poll_result)
{
 struct em28xx *dev = ir->dev;
 int rc;
 u8 msg[5] = { 0, 0, 0, 0, 0 };




 rc = dev->em28xx_read_reg_req_len(dev, 0, EM2874_R51_IR,
       msg, sizeof(msg));
 if (rc < 0)
  return rc;


 poll_result->toggle_bit = (msg[0] >> 7);


 poll_result->read_count = (msg[0] & 0x7f);


 poll_result->rc_address = msg[1];


 poll_result->rc_data[0] = msg[2];
 poll_result->rc_data[1] = msg[3];
 poll_result->rc_data[2] = msg[4];

 return 0;
}
