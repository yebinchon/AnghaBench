
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nv_swncq_port_priv {int irq_block; } ;
struct ata_port {struct nv_swncq_port_priv* private_data; } ;


 int writew (int ,int ) ;

__attribute__((used)) static void nv_swncq_irq_clear(struct ata_port *ap, u16 fis)
{
 struct nv_swncq_port_priv *pp = ap->private_data;

 writew(fis, pp->irq_block);
}
