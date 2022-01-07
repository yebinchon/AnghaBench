
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nv_swncq_port_priv {int tag_block; } ;
struct ata_port {struct nv_swncq_port_priv* private_data; } ;


 int readb (int ) ;

__attribute__((used)) static inline u32 nv_swncq_tag(struct ata_port *ap)
{
 struct nv_swncq_port_priv *pp = ap->private_data;
 u32 tag;

 tag = readb(pp->tag_block) >> 2;
 return (tag & 0x1f);
}
