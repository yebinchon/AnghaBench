
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_12__ {int ctrl; int send; } ;
struct TYPE_16__ {int Dprotocols; int Bprotocols; int nrbchan; int bchannels; int channelmap; TYPE_1__ D; } ;
struct TYPE_17__ {TYPE_5__ dev; struct w6692_hw* hw; } ;
struct w6692_hw {int fmask; int list; TYPE_7__ dch; TYPE_4__* bc; int addr; int irq; int name; TYPE_3__* pdev; int lock; } ;
struct TYPE_13__ {int nr; int list; int ctrl; int send; } ;
struct TYPE_18__ {int nr; TYPE_2__ ch; struct w6692_hw* hw; } ;
struct TYPE_15__ {TYPE_8__ bch; } ;
struct TYPE_14__ {int dev; } ;


 int Cards ;
 int ISDN_P_B_HDLC ;
 int ISDN_P_B_MASK ;
 int ISDN_P_B_RAW ;
 int ISDN_P_TE_S0 ;
 int MAX_DATA_MEM ;
 int MAX_DFRAME_LEN_L1 ;
 scalar_t__ MISDN_MAX_IDLEN ;
 int W6692_ph_bh ;
 int _set_debug (struct w6692_hw*) ;
 int card_lock ;
 int create_l1 (TYPE_7__*,int ) ;
 int free_irq (int ,struct w6692_hw*) ;
 int init_card (struct w6692_hw*) ;
 int kfree (struct w6692_hw*) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int mISDN_freebchannel (TYPE_8__*) ;
 int mISDN_freedchannel (TYPE_7__*) ;
 int mISDN_initbchannel (TYPE_8__*,int ) ;
 int mISDN_initdchannel (TYPE_7__*,int ,int ) ;
 int mISDN_register_device (TYPE_5__*,int *,int ) ;
 int mISDN_unregister_device (TYPE_5__*) ;
 int pr_notice (char*,int) ;
 int release_region (int ,int) ;
 int set_channelmap (int,int ) ;
 int setup_w6692 (struct w6692_hw*) ;
 int snprintf (int ,scalar_t__,char*,int) ;
 int spin_lock_init (int *) ;
 int w6692_bctrl ;
 int w6692_cnt ;
 int w6692_dctrl ;
 int w6692_l1callback ;
 int w6692_l2l1B ;
 int w6692_l2l1D ;
 int write_lock_irqsave (int *,int ) ;
 int write_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static int
setup_instance(struct w6692_hw *card)
{
 int i, err;
 u_long flags;

 snprintf(card->name, MISDN_MAX_IDLEN - 1, "w6692.%d", w6692_cnt + 1);
 write_lock_irqsave(&card_lock, flags);
 list_add_tail(&card->list, &Cards);
 write_unlock_irqrestore(&card_lock, flags);
 card->fmask = (1 << w6692_cnt);
 _set_debug(card);
 spin_lock_init(&card->lock);
 mISDN_initdchannel(&card->dch, MAX_DFRAME_LEN_L1, W6692_ph_bh);
 card->dch.dev.Dprotocols = (1 << ISDN_P_TE_S0);
 card->dch.dev.D.send = w6692_l2l1D;
 card->dch.dev.D.ctrl = w6692_dctrl;
 card->dch.dev.Bprotocols = (1 << (ISDN_P_B_RAW & ISDN_P_B_MASK)) |
  (1 << (ISDN_P_B_HDLC & ISDN_P_B_MASK));
 card->dch.hw = card;
 card->dch.dev.nrbchan = 2;
 for (i = 0; i < 2; i++) {
  mISDN_initbchannel(&card->bc[i].bch, MAX_DATA_MEM);
  card->bc[i].bch.hw = card;
  card->bc[i].bch.nr = i + 1;
  card->bc[i].bch.ch.nr = i + 1;
  card->bc[i].bch.ch.send = w6692_l2l1B;
  card->bc[i].bch.ch.ctrl = w6692_bctrl;
  set_channelmap(i + 1, card->dch.dev.channelmap);
  list_add(&card->bc[i].bch.ch.list, &card->dch.dev.bchannels);
 }
 err = setup_w6692(card);
 if (err)
  goto error_setup;
 err = mISDN_register_device(&card->dch.dev, &card->pdev->dev,
  card->name);
 if (err)
  goto error_reg;
 err = init_card(card);
 if (err)
  goto error_init;
 err = create_l1(&card->dch, w6692_l1callback);
 if (!err) {
  w6692_cnt++;
  pr_notice("W6692 %d cards installed\n", w6692_cnt);
  return 0;
 }

 free_irq(card->irq, card);
error_init:
 mISDN_unregister_device(&card->dch.dev);
error_reg:
 release_region(card->addr, 256);
error_setup:
 mISDN_freebchannel(&card->bc[1].bch);
 mISDN_freebchannel(&card->bc[0].bch);
 mISDN_freedchannel(&card->dch);
 write_lock_irqsave(&card_lock, flags);
 list_del(&card->list);
 write_unlock_irqrestore(&card_lock, flags);
 kfree(card);
 return err;
}
