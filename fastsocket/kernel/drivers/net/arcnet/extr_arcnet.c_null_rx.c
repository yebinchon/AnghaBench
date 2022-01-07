
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_6__ {int source; } ;
struct TYPE_4__ {int proto; } ;
struct TYPE_5__ {TYPE_1__ rfc1201; } ;
struct archdr {TYPE_3__ hard; TYPE_2__ soft; } ;


 int BUGMSG (int ,char*,int ,int ) ;
 int D_PROTO ;

__attribute__((used)) static void null_rx(struct net_device *dev, int bufnum,
      struct archdr *pkthdr, int length)
{
 BUGMSG(D_PROTO,
 "rx: don't know how to deal with proto %02Xh from host %02Xh.\n",
        pkthdr->soft.rfc1201.proto, pkthdr->hard.source);
}
