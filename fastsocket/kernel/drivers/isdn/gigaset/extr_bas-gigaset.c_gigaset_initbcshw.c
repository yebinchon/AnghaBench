
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isowbuf_t {int dummy; } ;
struct TYPE_4__ {struct bas_bc_state* bas; } ;
struct bc_state {TYPE_2__ hw; } ;
struct bas_bc_state {int rcvd_tasklet; scalar_t__ stolen0s; scalar_t__ shared0s; scalar_t__ aborts; scalar_t__ runts; scalar_t__ giants; scalar_t__ frameerrs; scalar_t__ fcserrs; scalar_t__ alignerrs; scalar_t__ goodbytes; scalar_t__ inbits; scalar_t__ inbyte; scalar_t__ seqlen; scalar_t__ isoinlost; int loststatus; int * isoindone; int ** isoinurbs; int isoinlock; int sent_tasklet; void* isooutbuf; scalar_t__ numsub; int * isooutovfl; int isooutfree; int isooutdone; TYPE_1__* isoouturbs; int isooutlock; int corrbytes; scalar_t__ running; } ;
struct TYPE_3__ {struct bc_state* bcs; int * urb; } ;


 int BAS_INURBS ;
 int BAS_OUTURBS ;
 int EINPROGRESS ;
 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int kfree (struct bas_bc_state*) ;
 void* kmalloc (int,int ) ;
 int pr_err (char*) ;
 int read_iso_tasklet ;
 int spin_lock_init (int *) ;
 int tasklet_init (int *,int *,unsigned long) ;
 int write_iso_tasklet ;

__attribute__((used)) static int gigaset_initbcshw(struct bc_state *bcs)
{
 int i;
 struct bas_bc_state *ubc;

 bcs->hw.bas = ubc = kmalloc(sizeof(struct bas_bc_state), GFP_KERNEL);
 if (!ubc) {
  pr_err("out of memory\n");
  return 0;
 }

 ubc->running = 0;
 atomic_set(&ubc->corrbytes, 0);
 spin_lock_init(&ubc->isooutlock);
 for (i = 0; i < BAS_OUTURBS; ++i) {
  ubc->isoouturbs[i].urb = ((void*)0);
  ubc->isoouturbs[i].bcs = bcs;
 }
 ubc->isooutdone = ubc->isooutfree = ubc->isooutovfl = ((void*)0);
 ubc->numsub = 0;
 if (!(ubc->isooutbuf = kmalloc(sizeof(struct isowbuf_t), GFP_KERNEL))) {
  pr_err("out of memory\n");
  kfree(ubc);
  bcs->hw.bas = ((void*)0);
  return 0;
 }
 tasklet_init(&ubc->sent_tasklet,
       &write_iso_tasklet, (unsigned long) bcs);

 spin_lock_init(&ubc->isoinlock);
 for (i = 0; i < BAS_INURBS; ++i)
  ubc->isoinurbs[i] = ((void*)0);
 ubc->isoindone = ((void*)0);
 ubc->loststatus = -EINPROGRESS;
 ubc->isoinlost = 0;
 ubc->seqlen = 0;
 ubc->inbyte = 0;
 ubc->inbits = 0;
 ubc->goodbytes = 0;
 ubc->alignerrs = 0;
 ubc->fcserrs = 0;
 ubc->frameerrs = 0;
 ubc->giants = 0;
 ubc->runts = 0;
 ubc->aborts = 0;
 ubc->shared0s = 0;
 ubc->stolen0s = 0;
 tasklet_init(&ubc->rcvd_tasklet,
       &read_iso_tasklet, (unsigned long) bcs);
 return 1;
}
