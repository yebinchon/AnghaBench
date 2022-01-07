
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_16__ {int TupleDataMax; int Attributes; int DesiredTuple; scalar_t__ TupleOffset; int * TupleData; } ;
typedef TYPE_5__ tuple_t ;
struct serial_info {int multi; scalar_t__ ndev; int * node; TYPE_8__* quirk; int prodid; int manfid; } ;
struct TYPE_13__ {int * rmask; int base; } ;
struct TYPE_15__ {int nwin; TYPE_3__* win; } ;
struct TYPE_17__ {TYPE_4__ io; } ;
struct TYPE_18__ {TYPE_2__ config; TYPE_6__ cftable_entry; } ;
struct serial_cfg_mem {int * buf; TYPE_7__ parse; TYPE_5__ tuple; } ;
struct TYPE_12__ {int Present; int ConfigBase; } ;
struct pcmcia_device {scalar_t__ func_id; int * dev_node; scalar_t__ has_func_id; int card_id; int manf_id; TYPE_1__ conf; struct serial_info* priv; } ;
typedef TYPE_6__ cistpl_cftable_entry_t ;
typedef TYPE_7__ cisparse_t ;
typedef int cisdata_t ;
struct TYPE_19__ {int multi; scalar_t__ (* post ) (struct pcmcia_device*) ;int prodid; int manfid; } ;
struct TYPE_14__ {int len; } ;


 int ARRAY_SIZE (TYPE_8__*) ;
 int CISTPL_CFTABLE_ENTRY ;
 int CISTPL_CONFIG ;
 int CISTPL_FUNCID ;
 scalar_t__ CISTPL_FUNCID_MULTI ;
 scalar_t__ CISTPL_FUNCID_SERIAL ;
 int CISTPL_LONGLINK_MFC ;
 int CISTPL_MANFID ;
 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int ENODEV ;
 int GFP_KERNEL ;
 int ParseTuple ;
 int TUPLE_RETURN_COMMON ;
 int TUPLE_RETURN_LINK ;
 int cs_error (struct pcmcia_device*,int,int) ;
 int first_tuple (struct pcmcia_device*,TYPE_5__*,TYPE_7__*) ;
 int kfree (struct serial_cfg_mem*) ;
 struct serial_cfg_mem* kmalloc (int,int ) ;
 int multi_config (struct pcmcia_device*) ;
 TYPE_8__* quirks ;
 int serial_remove (struct pcmcia_device*) ;
 int simple_config (struct pcmcia_device*) ;
 scalar_t__ stub1 (struct pcmcia_device*) ;

__attribute__((used)) static int serial_config(struct pcmcia_device * link)
{
 struct serial_info *info = link->priv;
 struct serial_cfg_mem *cfg_mem;
 tuple_t *tuple;
 u_char *buf;
 cisparse_t *parse;
 cistpl_cftable_entry_t *cf;
 int i, last_ret, last_fn;

 DEBUG(0, "serial_config(0x%p)\n", link);

 cfg_mem = kmalloc(sizeof(struct serial_cfg_mem), GFP_KERNEL);
 if (!cfg_mem)
  goto failed;

 tuple = &cfg_mem->tuple;
 parse = &cfg_mem->parse;
 cf = &parse->cftable_entry;
 buf = cfg_mem->buf;

 tuple->TupleData = (cisdata_t *) buf;
 tuple->TupleOffset = 0;
 tuple->TupleDataMax = 255;
 tuple->Attributes = 0;


 tuple->DesiredTuple = CISTPL_CONFIG;
 last_ret = first_tuple(link, tuple, parse);
 if (last_ret != 0) {
  last_fn = ParseTuple;
  goto cs_failed;
 }
 link->conf.ConfigBase = parse->config.base;
 link->conf.Present = parse->config.rmask[0];


 tuple->DesiredTuple = CISTPL_LONGLINK_MFC;
 tuple->Attributes = TUPLE_RETURN_COMMON | TUPLE_RETURN_LINK;
 info->multi = (first_tuple(link, tuple, parse) == 0);


 tuple->DesiredTuple = CISTPL_MANFID;
 info->manfid = link->manf_id;
 info->prodid = link->card_id;

 for (i = 0; i < ARRAY_SIZE(quirks); i++)
  if ((quirks[i].manfid == ~0 ||
       quirks[i].manfid == info->manfid) &&
      (quirks[i].prodid == ~0 ||
       quirks[i].prodid == info->prodid)) {
   info->quirk = &quirks[i];
   break;
  }



 tuple->DesiredTuple = CISTPL_FUNCID;
 if ((info->multi == 0) &&
     (link->has_func_id) &&
     ((link->func_id == CISTPL_FUNCID_MULTI) ||
      (link->func_id == CISTPL_FUNCID_SERIAL))) {
  tuple->DesiredTuple = CISTPL_CFTABLE_ENTRY;
  if (first_tuple(link, tuple, parse) == 0) {
   if ((cf->io.nwin == 1) && (cf->io.win[0].len % 8 == 0))
    info->multi = cf->io.win[0].len >> 3;
   if ((cf->io.nwin == 2) && (cf->io.win[0].len == 8) &&
       (cf->io.win[1].len == 8))
    info->multi = 2;
  }
 }




 if (info->quirk && info->quirk->multi != -1)
  info->multi = info->quirk->multi;

 if (info->multi > 1)
  multi_config(link);
 else
  simple_config(link);

 if (info->ndev == 0)
  goto failed;





 if (info->quirk && info->quirk->post)
  if (info->quirk->post(link))
   goto failed;

 link->dev_node = &info->node[0];
 kfree(cfg_mem);
 return 0;

cs_failed:
 cs_error(link, last_fn, last_ret);
failed:
 serial_remove(link);
 kfree(cfg_mem);
 return -ENODEV;
}
