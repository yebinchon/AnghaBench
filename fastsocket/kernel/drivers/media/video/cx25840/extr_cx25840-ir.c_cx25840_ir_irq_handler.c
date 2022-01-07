
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cx25840_ir_fifo_rec {int hw_fifo_data; } ;
typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct i2c_client {int dummy; } ;
struct cx25840_state {int dummy; } ;
struct cx25840_ir_state {int rx_kfifo; struct i2c_client* c; } ;


 int CNTRL_RFE ;
 int CNTRL_RXE ;
 int CX25840_IR_CNTRL_REG ;
 int CX25840_IR_FIFO_REG ;
 int CX25840_IR_IRQEN_REG ;
 int CX25840_IR_RX_KFIFO_SIZE ;
 int CX25840_IR_STATS_REG ;
 int ENODEV ;
 int FIFO_RX_DEPTH ;
 int FIFO_RX_NDV ;
 int IRQEN_MSK ;
 int IRQEN_ROE ;
 int IRQEN_RSE ;
 int IRQEN_RTE ;
 int IRQEN_TSE ;
 int STATS_RBY ;
 int STATS_ROR ;
 int STATS_RSR ;
 int STATS_RTO ;
 int STATS_TBY ;
 int STATS_TSR ;
 int V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED ;
 int V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ ;
 int V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN ;
 int V4L2_SUBDEV_IR_RX_NOTIFY ;
 int V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN ;
 int V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ ;
 int V4L2_SUBDEV_IR_TX_NOTIFY ;
 int cx25840_read4 (struct i2c_client*,int ) ;
 int cx25840_write4 (struct i2c_client*,int ,int) ;
 int ir_debug ;
 int irqenable_tx (struct v4l2_subdev*,int ) ;
 scalar_t__ is_cx23885 (struct cx25840_state*) ;
 scalar_t__ is_cx23887 (struct cx25840_state*) ;
 int kfifo_len (int ) ;
 unsigned int kfifo_put (int ,unsigned char*,unsigned int) ;
 struct cx25840_ir_state* to_ir_state (struct v4l2_subdev*) ;
 struct cx25840_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,char*,char*,char*,char*,...) ;
 int v4l2_err (struct v4l2_subdev*,char*) ;
 int v4l2_subdev_notify (struct v4l2_subdev*,int ,int*) ;

int cx25840_ir_irq_handler(struct v4l2_subdev *sd, u32 status, bool *handled)
{
 struct cx25840_state *state = to_state(sd);
 struct cx25840_ir_state *ir_state = to_ir_state(sd);
 struct i2c_client *c = ((void*)0);

 union cx25840_ir_fifo_rec rx_data[FIFO_RX_DEPTH];
 unsigned int i, j, k;
 u32 events, v;
 int tsr, rsr, rto, ror, tse, rse, rte, roe, kror;
 u32 cntrl, irqen, stats;

 *handled = 0;
 if (ir_state == ((void*)0))
  return -ENODEV;

 c = ir_state->c;


 if (!(is_cx23885(state) || is_cx23887(state)))
  return -ENODEV;

 cntrl = cx25840_read4(c, CX25840_IR_CNTRL_REG);
 irqen = cx25840_read4(c, CX25840_IR_IRQEN_REG);
 if (is_cx23885(state) || is_cx23887(state))
  irqen ^= IRQEN_MSK;
 stats = cx25840_read4(c, CX25840_IR_STATS_REG);

 tsr = stats & STATS_TSR;
 rsr = stats & STATS_RSR;
 rto = stats & STATS_RTO;
 ror = stats & STATS_ROR;

 tse = irqen & IRQEN_TSE;
 rse = irqen & IRQEN_RSE;
 rte = irqen & IRQEN_RTE;
 roe = irqen & IRQEN_ROE;

 v4l2_dbg(2, ir_debug, sd, "IR IRQ Status:  %s %s %s %s %s %s\n",
   tsr ? "tsr" : "   ", rsr ? "rsr" : "   ",
   rto ? "rto" : "   ", ror ? "ror" : "   ",
   stats & STATS_TBY ? "tby" : "   ",
   stats & STATS_RBY ? "rby" : "   ");

 v4l2_dbg(2, ir_debug, sd, "IR IRQ Enables: %s %s %s %s\n",
   tse ? "tse" : "   ", rse ? "rse" : "   ",
   rte ? "rte" : "   ", roe ? "roe" : "   ");




 if (tse && tsr) {
  irqenable_tx(sd, 0);
  events = V4L2_SUBDEV_IR_TX_FIFO_SERVICE_REQ;
  v4l2_subdev_notify(sd, V4L2_SUBDEV_IR_TX_NOTIFY, &events);
  *handled = 1;
 }




 kror = 0;
 if ((rse && rsr) || (rte && rto)) {





  for (i = 0, v = FIFO_RX_NDV;
       (v & FIFO_RX_NDV) && !kror; i = 0) {
   for (j = 0;
        (v & FIFO_RX_NDV) && j < FIFO_RX_DEPTH; j++) {
    v = cx25840_read4(c, CX25840_IR_FIFO_REG);
    rx_data[i].hw_fifo_data = v & ~FIFO_RX_NDV;
    i++;
   }
   if (i == 0)
    break;
   j = i * sizeof(union cx25840_ir_fifo_rec);
   k = kfifo_put(ir_state->rx_kfifo,
         (unsigned char *) rx_data, j);
   if (k != j)
    kror++;
  }
  *handled = 1;
 }

 events = 0;
 v = 0;
 if (kror) {
  events |= V4L2_SUBDEV_IR_RX_SW_FIFO_OVERRUN;
  v4l2_err(sd, "IR receiver software FIFO overrun\n");
 }
 if (roe && ror) {




  v |= CNTRL_RFE;
  events |= V4L2_SUBDEV_IR_RX_HW_FIFO_OVERRUN;
  v4l2_err(sd, "IR receiver hardware FIFO overrun\n");
 }
 if (rte && rto) {




  v |= CNTRL_RXE;
  events |= V4L2_SUBDEV_IR_RX_END_OF_RX_DETECTED;
 }
 if (v) {

  cx25840_write4(c, CX25840_IR_CNTRL_REG, cntrl & ~v);
  cx25840_write4(c, CX25840_IR_CNTRL_REG, cntrl);
  *handled = 1;
 }
 if (kfifo_len(ir_state->rx_kfifo) >= CX25840_IR_RX_KFIFO_SIZE / 2)
  events |= V4L2_SUBDEV_IR_RX_FIFO_SERVICE_REQ;

 if (events)
  v4l2_subdev_notify(sd, V4L2_SUBDEV_IR_RX_NOTIFY, &events);
 return 0;
}
