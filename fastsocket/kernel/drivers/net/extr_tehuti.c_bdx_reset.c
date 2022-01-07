
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bdx_priv {TYPE_1__* pdev; } ;
struct TYPE_2__ {int device; } ;


 int ENTER ;
 int RET (int ) ;
 int bdx_hw_reset (struct bdx_priv*) ;
 int bdx_sw_reset (struct bdx_priv*) ;

__attribute__((used)) static int bdx_reset(struct bdx_priv *priv)
{
 ENTER;
 RET((priv->pdev->device == 0x3009)
     ? bdx_hw_reset(priv)
     : bdx_sw_reset(priv));
}
