
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int CLAW_DBF_TEXT (int,int ,char*) ;
 int claw_snd_conn_req (struct net_device*,int) ;
 int setup ;

__attribute__((used)) static int
claw_strt_conn_req(struct net_device *dev )
{
        int rc;

 CLAW_DBF_TEXT(2, setup, "conn_req");
        rc=claw_snd_conn_req(dev, 1);
        return rc;
}
