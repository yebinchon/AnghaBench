
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int len; int data_len; int truesize; int dev; } ;
struct frame {int bcnt; int bv_off; int bv; TYPE_1__* buf; int lba; scalar_t__ waited_total; scalar_t__ waited; int tag; struct aoetgt* t; struct sk_buff* skb; } ;
struct aoetgt {TYPE_2__* ifp; int rpkts; int wpkts; TYPE_3__* d; int nout; } ;
struct aoe_hdr {int dummy; } ;
struct aoe_atahdr {int scnt; int lba3; char cmdstat; int aflags; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int nd; } ;
struct TYPE_4__ {int bio; int sector; } ;


 int AOEAFL_EXT ;
 int AOEAFL_WRITE ;
 char ATA_CMD_PIO_READ ;
 int DEVFL_EXT ;
 scalar_t__ WRITE ;
 int aoehdr_atainit (TYPE_3__*,struct aoetgt*,struct aoe_hdr*) ;
 scalar_t__ bio_data_dir (int ) ;
 int fhash (struct frame*) ;
 int memset (struct aoe_hdr*,int ,int) ;
 int put_lba (struct aoe_atahdr*,int ) ;
 int skb_fillup (struct sk_buff*,int ,int ,int) ;
 scalar_t__ skb_mac_header (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void
ata_rw_frameinit(struct frame *f)
{
 struct aoetgt *t;
 struct aoe_hdr *h;
 struct aoe_atahdr *ah;
 struct sk_buff *skb;
 char writebit, extbit;

 skb = f->skb;
 h = (struct aoe_hdr *) skb_mac_header(skb);
 ah = (struct aoe_atahdr *) (h + 1);
 skb_put(skb, sizeof(*h) + sizeof(*ah));
 memset(h, 0, skb->len);

 writebit = 0x10;
 extbit = 0x4;

 t = f->t;
 f->tag = aoehdr_atainit(t->d, t, h);
 fhash(f);
 t->nout++;
 f->waited = 0;
 f->waited_total = 0;
 if (f->buf)
  f->lba = f->buf->sector;


 ah->scnt = f->bcnt >> 9;
 put_lba(ah, f->lba);
 if (t->d->flags & DEVFL_EXT) {
  ah->aflags |= AOEAFL_EXT;
 } else {
  extbit = 0;
  ah->lba3 &= 0x0f;
  ah->lba3 |= 0xe0;
 }
 if (f->buf && bio_data_dir(f->buf->bio) == WRITE) {
  skb_fillup(skb, f->bv, f->bv_off, f->bcnt);
  ah->aflags |= AOEAFL_WRITE;
  skb->len += f->bcnt;
  skb->data_len = f->bcnt;
  skb->truesize += f->bcnt;
  t->wpkts++;
 } else {
  t->rpkts++;
  writebit = 0;
 }

 ah->cmdstat = ATA_CMD_PIO_READ | writebit | extbit;
 skb->dev = t->ifp->nd;
}
