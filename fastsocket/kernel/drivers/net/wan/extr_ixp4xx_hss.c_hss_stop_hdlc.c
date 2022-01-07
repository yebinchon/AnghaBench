
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int id; } ;
struct msg {int hss_port; int cmd; } ;
typedef int msg ;


 int PKT_PIPE_FLOW_DISABLE ;
 int hss_get_status (struct port*) ;
 int hss_npe_send (struct port*,struct msg*,char*) ;
 int memset (struct msg*,int ,int) ;

__attribute__((used)) static void hss_stop_hdlc(struct port *port)
{
 struct msg msg;

 memset(&msg, 0, sizeof(msg));
 msg.cmd = PKT_PIPE_FLOW_DISABLE;
 msg.hss_port = port->id;
 hss_npe_send(port, &msg, "HSS_DISABLE_PKT_PIPE");
 hss_get_status(port);
}
