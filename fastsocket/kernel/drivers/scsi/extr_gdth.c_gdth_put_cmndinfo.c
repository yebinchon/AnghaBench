
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdth_cmndinfo {scalar_t__ index; } ;


 int BUG_ON (int) ;

__attribute__((used)) static void gdth_put_cmndinfo(struct gdth_cmndinfo *priv)
{
 BUG_ON(!priv);
 priv->index = 0;
}
