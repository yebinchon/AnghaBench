
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sk_buff {int len; int data; } ;
struct sbmacdma {int sbdma_dscrcnt; struct sbdmadscr* sbdma_addptr; struct sbdmadscr* sbdma_dscrtable; struct sk_buff** sbdma_ctxtable; struct sbdmadscr* sbdma_remptr; } ;
struct sbdmadscr {int dscr_a; int dscr_b; } ;


 int ENOSPC ;
 int K_DMA_ETHTX_APPENDCRC_APPENDPAD ;
 int M_DMA_DSCRA_INTERRUPT ;
 int M_DMA_ETHTX_SOP ;
 int NUMCACHEBLKS (int) ;
 struct sbdmadscr* SBDMA_NEXTBUF (struct sbmacdma*,int ) ;
 int SMP_CACHE_BYTES ;
 int V_DMA_DSCRA_A_SIZE (int) ;
 int V_DMA_DSCRB_OPTIONS (int ) ;
 int V_DMA_DSCRB_PKT_SIZE (int) ;
 int __raw_writeq (int,int ) ;
 int sbdma_addptr ;
 int virt_to_phys (int ) ;

__attribute__((used)) static int sbdma_add_txbuffer(struct sbmacdma *d, struct sk_buff *sb)
{
 struct sbdmadscr *dsc;
 struct sbdmadscr *nextdsc;
 uint64_t phys;
 uint64_t ncb;
 int length;



 dsc = d->sbdma_addptr;
 nextdsc = SBDMA_NEXTBUF(d,sbdma_addptr);







 if (nextdsc == d->sbdma_remptr) {
  return -ENOSPC;
 }







 length = sb->len;
 phys = virt_to_phys(sb->data);
 ncb = NUMCACHEBLKS(length+(phys & (SMP_CACHE_BYTES - 1)));

 dsc->dscr_a = phys |
  V_DMA_DSCRA_A_SIZE(ncb) |

  M_DMA_DSCRA_INTERRUPT |

  M_DMA_ETHTX_SOP;



 dsc->dscr_b = V_DMA_DSCRB_OPTIONS(K_DMA_ETHTX_APPENDCRC_APPENDPAD) |
  V_DMA_DSCRB_PKT_SIZE(length);





 d->sbdma_ctxtable[dsc-d->sbdma_dscrtable] = sb;





 d->sbdma_addptr = nextdsc;





 __raw_writeq(1, d->sbdma_dscrcnt);

 return 0;
}
