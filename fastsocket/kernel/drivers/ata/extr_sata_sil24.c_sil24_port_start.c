
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sil24_cmd_block {int dummy; } sil24_cmd_block ;
struct sil24_port_priv {int cmd_block_dma; union sil24_cmd_block* cmd_block; } ;
struct device {int dummy; } ;
struct ata_port {struct sil24_port_priv* private_data; TYPE_1__* host; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {struct device* dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SIL24_HOST_BAR ;
 int SIL24_MAX_CMDS ;
 int SIL24_PORT_BAR ;
 int ata_port_pbar_desc (struct ata_port*,int ,int,char*) ;
 struct sil24_port_priv* devm_kzalloc (struct device*,int,int ) ;
 union sil24_cmd_block* dmam_alloc_coherent (struct device*,size_t,int *,int ) ;
 int memset (union sil24_cmd_block*,int ,size_t) ;
 int sil24_port_offset (struct ata_port*) ;

__attribute__((used)) static int sil24_port_start(struct ata_port *ap)
{
 struct device *dev = ap->host->dev;
 struct sil24_port_priv *pp;
 union sil24_cmd_block *cb;
 size_t cb_size = sizeof(*cb) * SIL24_MAX_CMDS;
 dma_addr_t cb_dma;

 pp = devm_kzalloc(dev, sizeof(*pp), GFP_KERNEL);
 if (!pp)
  return -ENOMEM;

 cb = dmam_alloc_coherent(dev, cb_size, &cb_dma, GFP_KERNEL);
 if (!cb)
  return -ENOMEM;
 memset(cb, 0, cb_size);

 pp->cmd_block = cb;
 pp->cmd_block_dma = cb_dma;

 ap->private_data = pp;

 ata_port_pbar_desc(ap, SIL24_HOST_BAR, -1, "host");
 ata_port_pbar_desc(ap, SIL24_PORT_BAR, sil24_port_offset(ap), "port");

 return 0;
}
