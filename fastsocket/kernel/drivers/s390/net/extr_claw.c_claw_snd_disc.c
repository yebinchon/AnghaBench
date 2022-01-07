
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct conncmd {int WS_name; int host_name; } ;
struct clawctl {int correlator; int linkid; int data; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int DISCONNECT ;
 int claw_send_control (struct net_device*,int ,int ,int ,int ,int ,int ) ;
 int setup ;

__attribute__((used)) static int
claw_snd_disc(struct net_device *dev, struct clawctl * p_ctl)
{
        int rc;
        struct conncmd * p_connect;

 CLAW_DBF_TEXT(2, setup, "snd_dsc");
        p_connect=(struct conncmd *)&p_ctl->data;

        rc=claw_send_control(dev, DISCONNECT, p_ctl->linkid,
  p_ctl->correlator, 0,
                p_connect->host_name, p_connect->WS_name);
        return rc;
}
