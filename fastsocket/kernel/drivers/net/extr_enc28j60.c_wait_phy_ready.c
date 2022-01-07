
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enc28j60_net {int dummy; } ;


 int MISTAT ;
 int MISTAT_BUSY ;
 scalar_t__ poll_ready (struct enc28j60_net*,int ,int ,int ) ;

__attribute__((used)) static int wait_phy_ready(struct enc28j60_net *priv)
{
 return poll_ready(priv, MISTAT, MISTAT_BUSY, 0) ? 0 : 1;
}
