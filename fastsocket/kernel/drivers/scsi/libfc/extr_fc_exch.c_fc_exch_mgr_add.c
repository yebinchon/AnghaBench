
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int ema_list; } ;
struct fc_exch_mgr_anchor {int (* match ) (struct fc_frame*) ;int ema_list; struct fc_exch_mgr* mp; } ;
struct fc_exch_mgr {int kref; } ;


 int GFP_ATOMIC ;
 struct fc_exch_mgr_anchor* kmalloc (int,int ) ;
 int kref_get (int *) ;
 int list_add_tail (int *,int *) ;

struct fc_exch_mgr_anchor *fc_exch_mgr_add(struct fc_lport *lport,
        struct fc_exch_mgr *mp,
        bool (*match)(struct fc_frame *))
{
 struct fc_exch_mgr_anchor *ema;

 ema = kmalloc(sizeof(*ema), GFP_ATOMIC);
 if (!ema)
  return ema;

 ema->mp = mp;
 ema->match = match;

 list_add_tail(&ema->ema_list, &lport->ema_list);
 kref_get(&mp->kref);
 return ema;
}
