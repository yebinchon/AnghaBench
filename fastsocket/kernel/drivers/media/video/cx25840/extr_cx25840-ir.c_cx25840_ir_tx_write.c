
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_ir_state {int tx_kfifo; int txclk_divider; struct i2c_client* c; } ;
typedef size_t ssize_t ;


 unsigned int CX25840_IR_TX_KFIFO_SIZE ;
 int ENODEV ;
 int FIFO_RXTX_LVL ;
 int FIFO_TX_DEPTH ;
 int IRQEN_TSE ;
 int LEVEL_MASK ;
 unsigned int i ;
 int irqenable_tx (struct v4l2_subdev*,int ) ;
 int j ;
 unsigned int kfifo_len (int ) ;
 int kfifo_put (int ,int *,int) ;
 unsigned int min (unsigned int,unsigned int) ;
 int ns_to_pulse_width_count (int,int ) ;
 struct cx25840_ir_state* to_ir_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx25840_ir_tx_write(struct v4l2_subdev *sd, u8 *buf, size_t count,
          ssize_t *num)
{
 struct cx25840_ir_state *ir_state = to_ir_state(sd);
 struct i2c_client *c;

 if (ir_state == ((void*)0))
  return -ENODEV;

 c = ir_state->c;
 irqenable_tx(sd, IRQEN_TSE);
 *num = count;

 return 0;
}
