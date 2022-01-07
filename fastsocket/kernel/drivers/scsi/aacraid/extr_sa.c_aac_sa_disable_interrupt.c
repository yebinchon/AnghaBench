
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {int dummy; } ;
struct TYPE_2__ {int PRISETIRQMASK; } ;


 TYPE_1__ SaDbCSR ;
 int sa_writew (struct aac_dev*,int ,int) ;

__attribute__((used)) static void aac_sa_disable_interrupt (struct aac_dev *dev)
{
 sa_writew(dev, SaDbCSR.PRISETIRQMASK, 0xffff);
}
