
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int mtu; } ;
struct ldc_channel {TYPE_1__ cfg; } ;


 int write_nonraw (struct ldc_channel*,void const*,unsigned int) ;

__attribute__((used)) static int write_stream(struct ldc_channel *lp, const void *buf,
   unsigned int size)
{
 if (size > lp->cfg.mtu)
  size = lp->cfg.mtu;
 return write_nonraw(lp, buf, size);
}
