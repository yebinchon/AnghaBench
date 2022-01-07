
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int initialized; int id; int dev; int npe; } ;
struct msg {int data32; int cmd; int data16a; int data8a; int hss_port; } ;
typedef int msg ;


 int HDLC_MAX_MRU ;
 int NPE_PKT_MODE_HDLC ;
 int PKT_NUM_PIPES ;
 int PKT_NUM_PIPES_WRITE ;
 int PKT_PIPE_FIFO_SIZEW ;
 int PKT_PIPE_FIFO_SIZEW_WRITE ;
 int PKT_PIPE_IDLE_PATTERN_WRITE ;
 int PKT_PIPE_MODE_WRITE ;
 int PKT_PIPE_RX_SIZE_WRITE ;
 int hss_npe_send (struct port*,struct msg*,char*) ;
 int memset (struct msg*,int ,int) ;
 int npe_load_firmware (int ,int ,int ) ;
 int npe_name (int ) ;
 int npe_running (int ) ;

__attribute__((used)) static int hss_load_firmware(struct port *port)
{
 struct msg msg;
 int err;

 if (port->initialized)
  return 0;

 if (!npe_running(port->npe) &&
     (err = npe_load_firmware(port->npe, npe_name(port->npe),
         port->dev)))
  return err;


 memset(&msg, 0, sizeof(msg));
 msg.cmd = PKT_NUM_PIPES_WRITE;
 msg.hss_port = port->id;
 msg.data8a = PKT_NUM_PIPES;
 hss_npe_send(port, &msg, "HSS_SET_PKT_PIPES");

 msg.cmd = PKT_PIPE_FIFO_SIZEW_WRITE;
 msg.data8a = PKT_PIPE_FIFO_SIZEW;
 hss_npe_send(port, &msg, "HSS_SET_PKT_FIFO");

 msg.cmd = PKT_PIPE_MODE_WRITE;
 msg.data8a = NPE_PKT_MODE_HDLC;


 hss_npe_send(port, &msg, "HSS_SET_PKT_MODE");

 msg.cmd = PKT_PIPE_RX_SIZE_WRITE;
 msg.data16a = HDLC_MAX_MRU;
 hss_npe_send(port, &msg, "HSS_SET_PKT_RX_SIZE");

 msg.cmd = PKT_PIPE_IDLE_PATTERN_WRITE;
 msg.data32 = 0x7F7F7F7F;
 hss_npe_send(port, &msg, "HSS_SET_PKT_IDLE");

 port->initialized = 1;
 return 0;
}
