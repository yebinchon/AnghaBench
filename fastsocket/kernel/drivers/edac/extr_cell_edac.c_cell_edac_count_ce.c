
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct mem_ctl_info {int dev; struct csrow_info* csrows; struct cell_edac_priv* pvt_info; } ;
struct csrow_info {scalar_t__ first_page; } ;
struct cell_edac_priv {int chanmask; int node; } ;


 unsigned long PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int dev_dbg (int ,char*,int ,int,int) ;
 int edac_mc_handle_ce (struct mem_ctl_info*,scalar_t__,unsigned long,unsigned long,int ,int,char*) ;

__attribute__((used)) static void cell_edac_count_ce(struct mem_ctl_info *mci, int chan, u64 ar)
{
 struct cell_edac_priv *priv = mci->pvt_info;
 struct csrow_info *csrow = &mci->csrows[0];
 unsigned long address, pfn, offset, syndrome;

 dev_dbg(mci->dev, "ECC CE err on node %d, channel %d, ar = 0x%016llx\n",
  priv->node, chan, ar);


 address = (ar & 0xffffffffe0000000ul) >> 29;
 if (priv->chanmask == 0x3)
  address = (address << 1) | chan;
 pfn = address >> PAGE_SHIFT;
 offset = address & ~PAGE_MASK;
 syndrome = (ar & 0x000000001fe00000ul) >> 21;


 edac_mc_handle_ce(mci, csrow->first_page + pfn, offset,
     syndrome, 0, chan, "");
}
