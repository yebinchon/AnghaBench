
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw2100_priv {int net_dev; } ;
struct ipw2100_bd_queue {scalar_t__ next; scalar_t__ oldest; scalar_t__ entries; scalar_t__ nic; int drv; } ;


 int IPW_DEBUG_INFO (char*,...) ;
 int write_register (int ,int ,scalar_t__) ;

__attribute__((used)) static void bd_queue_initialize(struct ipw2100_priv *priv,
    struct ipw2100_bd_queue *q, u32 base, u32 size,
    u32 r, u32 w)
{
 IPW_DEBUG_INFO("enter\n");

 IPW_DEBUG_INFO("initializing bd queue at virt=%p, phys=%08x\n", q->drv,
         (u32) q->nic);

 write_register(priv->net_dev, base, q->nic);
 write_register(priv->net_dev, size, q->entries);
 write_register(priv->net_dev, r, q->oldest);
 write_register(priv->net_dev, w, q->next);

 IPW_DEBUG_INFO("exit\n");
}
