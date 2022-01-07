
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_10__ {int TupleDataMax; int DesiredTuple; int * TupleData; scalar_t__ TupleOffset; scalar_t__ Attributes; } ;
typedef TYPE_2__ tuple_t ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ data; } ;
struct TYPE_12__ {TYPE_1__ funce; } ;
struct smc_cfg_mem {int * buf; TYPE_4__ parse; TYPE_2__ tuple; } ;
struct pcmcia_device {int ** prod_id; struct net_device* priv; } ;
struct net_device {int * dev_addr; } ;
struct TYPE_11__ {int nb; int * id; } ;
typedef TYPE_3__ cistpl_lan_node_id_t ;
typedef TYPE_4__ cisparse_t ;
typedef int cisdata_t ;


 int CISTPL_FUNCE ;
 scalar_t__ CISTPL_FUNCE_LAN_NODE_ID ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ cvt_ascii_address (struct net_device*,int *) ;
 int first_tuple (struct pcmcia_device*,TYPE_2__*,TYPE_4__*) ;
 int kfree (struct smc_cfg_mem*) ;
 struct smc_cfg_mem* kmalloc (int,int ) ;
 int next_tuple (struct pcmcia_device*,TYPE_2__*,TYPE_4__*) ;

__attribute__((used)) static int smc_setup(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    struct smc_cfg_mem *cfg_mem;
    tuple_t *tuple;
    cisparse_t *parse;
    cistpl_lan_node_id_t *node_id;
    u_char *buf, *station_addr;
    int i, rc;

    cfg_mem = kmalloc(sizeof(struct smc_cfg_mem), GFP_KERNEL);
    if (!cfg_mem)
     return -ENOMEM;

    tuple = &cfg_mem->tuple;
    parse = &cfg_mem->parse;
    buf = cfg_mem->buf;

    tuple->Attributes = tuple->TupleOffset = 0;
    tuple->TupleData = (cisdata_t *)buf;
    tuple->TupleDataMax = 255;


    tuple->DesiredTuple = CISTPL_FUNCE;
    i = first_tuple(link, tuple, parse);
    while (i == 0) {
 if (parse->funce.type == CISTPL_FUNCE_LAN_NODE_ID)
     break;
 i = next_tuple(link, tuple, parse);
    }
    if (i == 0) {
 node_id = (cistpl_lan_node_id_t *)parse->funce.data;
 if (node_id->nb == 6) {
     for (i = 0; i < 6; i++)
  dev->dev_addr[i] = node_id->id[i];
     rc = 0;
     goto free_cfg_mem;
 }
    }

    if (link->prod_id[2]) {
 station_addr = link->prod_id[2];
 if (cvt_ascii_address(dev, station_addr) == 0) {
  rc = 0;
  goto free_cfg_mem;
 }
    }

    rc = -1;
free_cfg_mem:
    kfree(cfg_mem);
    return rc;
}
