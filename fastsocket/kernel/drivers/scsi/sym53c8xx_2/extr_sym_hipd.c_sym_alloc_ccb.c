
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sym_hcb {scalar_t__ actccbs; int dummy_ccbq; int free_ccbq; struct sym_ccb** ccbh; } ;
struct TYPE_7__ {void* addr; } ;
struct TYPE_5__ {void* restart; void* start; } ;
struct TYPE_6__ {TYPE_1__ go; } ;
struct TYPE_8__ {TYPE_3__ smsg_ext; TYPE_2__ head; } ;
struct sym_ccb {int link2_ccbq; int link_ccbq; TYPE_4__ phys; struct sym_ccb* link_ccbh; int ccb_ba; } ;


 int CCB_HASH_CODE (int ) ;
 int HCB_BA (struct sym_hcb*,int ) ;
 int SCRIPTA_BA (struct sym_hcb*,int ) ;
 int SCRIPTB_BA (struct sym_hcb*,int ) ;
 scalar_t__ SYM_CONF_MAX_START ;
 int bad_i_t_l ;
 void* cpu_to_scr (int ) ;
 int idle ;
 int * msgin ;
 struct sym_ccb* sym_calloc_dma (int,char*) ;
 int sym_insque_head (int *,int *) ;
 int sym_mfree_dma (struct sym_ccb*,int,char*) ;
 int vtobus (struct sym_ccb*) ;

__attribute__((used)) static struct sym_ccb *sym_alloc_ccb(struct sym_hcb *np)
{
 struct sym_ccb *cp = ((void*)0);
 int hcode;





 if (np->actccbs >= SYM_CONF_MAX_START)
  return ((void*)0);




 cp = sym_calloc_dma(sizeof(struct sym_ccb), "CCB");
 if (!cp)
  goto out_free;




 np->actccbs++;




 cp->ccb_ba = vtobus(cp);




 hcode = CCB_HASH_CODE(cp->ccb_ba);
 cp->link_ccbh = np->ccbh[hcode];
 np->ccbh[hcode] = cp;




 cp->phys.head.go.start = cpu_to_scr(SCRIPTA_BA(np, idle));
 cp->phys.head.go.restart = cpu_to_scr(SCRIPTB_BA(np, bad_i_t_l));




 cp->phys.smsg_ext.addr = cpu_to_scr(HCB_BA(np, msgin[2]));




 sym_insque_head(&cp->link_ccbq, &np->free_ccbq);







 return cp;
out_free:
 if (cp)
  sym_mfree_dma(cp, sizeof(*cp), "CCB");
 return ((void*)0);
}
