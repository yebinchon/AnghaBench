
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct bdx_priv {TYPE_1__* nic; } ;
struct TYPE_2__ {int port_num; } ;


 int BDX_REGS_SIZE ;
 int EINVAL ;

__attribute__((used)) static int bdx_range_check(struct bdx_priv *priv, u32 offset)
{
 return (offset > (u32) (BDX_REGS_SIZE / priv->nic->port_num)) ?
  -EINVAL : 0;
}
