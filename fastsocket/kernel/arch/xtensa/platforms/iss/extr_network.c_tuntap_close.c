
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int fd; int dev; scalar_t__ fixed_config; } ;
struct TYPE_6__ {TYPE_4__ tuntap; } ;
struct TYPE_7__ {TYPE_2__ info; } ;
struct TYPE_5__ {int dev_name; } ;
struct iss_net_private {TYPE_3__ tp; TYPE_1__ host; } ;


 int close_addr ;
 int iter_addresses (int ,int ,int ) ;
 int simc_close (int) ;

__attribute__((used)) static void tuntap_close(struct iss_net_private *lp)
{




 simc_close(lp->tp.info.tuntap.fd);
 lp->tp.info.tuntap.fd = -1;
}
