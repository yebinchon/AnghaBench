
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfar_private {scalar_t__ rx_csum_enable; scalar_t__ vlgrp; } ;



__attribute__((used)) static inline int gfar_uses_fcb(struct gfar_private *priv)
{
 return priv->vlgrp || priv->rx_csum_enable;
}
