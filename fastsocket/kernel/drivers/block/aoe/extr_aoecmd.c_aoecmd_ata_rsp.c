
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct frame {int flags; TYPE_1__* t; } ;
struct aoedev {int lock; } ;
struct aoe_hdr {int minor; int tag; int major; int dst; int src; } ;
typedef int ebuf ;
struct TYPE_2__ {int nout_probes; int nout; } ;


 int FFL_PROBE ;
 int aoechr_error (char*) ;
 int aoecmd_work (struct aoedev*) ;
 struct aoedev* aoedev_by_aoeaddr (int,int,int ) ;
 int aoedev_put (struct aoedev*) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int calc_rttavg (struct aoedev*,TYPE_1__*,int ) ;
 int get_unaligned (int *) ;
 int get_unaligned_be16 (int *) ;
 int get_unaligned_be32 (int *) ;
 struct frame* getframe (struct aoedev*,int ) ;
 struct frame* getframe_deferred (struct aoedev*,int ) ;
 int jiffies ;
 int ktcomplete (struct frame*,struct sk_buff*) ;
 int snprintf (char*,int,char*,...) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;
 int tsince (int ) ;
 int tsince_hr (struct frame*) ;

struct sk_buff *
aoecmd_ata_rsp(struct sk_buff *skb)
{
 struct aoedev *d;
 struct aoe_hdr *h;
 struct frame *f;
 u32 n;
 ulong flags;
 char ebuf[128];
 u16 aoemajor;

 h = (struct aoe_hdr *) skb->data;
 aoemajor = be16_to_cpu(get_unaligned(&h->major));
 d = aoedev_by_aoeaddr(aoemajor, h->minor, 0);
 if (d == ((void*)0)) {
  snprintf(ebuf, sizeof ebuf, "aoecmd_ata_rsp: ata response "
   "for unknown device %d.%d\n",
   aoemajor, h->minor);
  aoechr_error(ebuf);
  return skb;
 }

 spin_lock_irqsave(&d->lock, flags);

 n = be32_to_cpu(get_unaligned(&h->tag));
 f = getframe(d, n);
 if (f) {
  calc_rttavg(d, f->t, tsince_hr(f));
  f->t->nout--;
  if (f->flags & FFL_PROBE)
   f->t->nout_probes--;
 } else {
  f = getframe_deferred(d, n);
  if (f) {
   calc_rttavg(d, ((void*)0), tsince_hr(f));
  } else {
   calc_rttavg(d, ((void*)0), tsince(n));
   spin_unlock_irqrestore(&d->lock, flags);
   aoedev_put(d);
   snprintf(ebuf, sizeof(ebuf),
     "%15s e%d.%d    tag=%08x@%08lx s=%pm d=%pm\n",
     "unexpected rsp",
     get_unaligned_be16(&h->major),
     h->minor,
     get_unaligned_be32(&h->tag),
     jiffies,
     h->src,
     h->dst);
   aoechr_error(ebuf);
   return skb;
  }
 }
 aoecmd_work(d);

 spin_unlock_irqrestore(&d->lock, flags);

 ktcomplete(f, skb);





 return ((void*)0);
}
