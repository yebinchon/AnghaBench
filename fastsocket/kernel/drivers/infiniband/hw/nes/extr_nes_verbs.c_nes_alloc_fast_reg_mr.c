
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct nes_vnic {struct nes_device* nesdev; } ;
struct nes_pd {int dummy; } ;
struct ib_mr {int rkey; int lkey; } ;
struct nes_mr {struct ib_mr ibmr; int mode; } ;
struct nes_device {struct nes_adapter* nesadapter; } ;
struct nes_adapter {int max_mr; int allocated_mrs; } ;
struct ib_pd {int device; } ;
typedef int next_stag_index ;


 int E2BIG ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IWNES_MEMREG_TYPE_FMEM ;
 int NES_4K_PBL_CHUNK_SIZE ;
 int NES_DBG_MR ;
 int NES_RESOURCE_FAST_MR ;
 int alloc_fast_reg_mr (struct nes_device*,struct nes_pd*,int,int) ;
 int get_random_bytes (int*,int) ;
 int kfree (struct nes_mr*) ;
 struct nes_mr* kzalloc (int,int ) ;
 int nes_alloc_resource (struct nes_adapter*,int ,int,int*,int*,int ) ;
 int nes_debug (int ,char*,int,int) ;
 int nes_free_resource (struct nes_adapter*,int ,int) ;
 struct nes_pd* to_nespd (struct ib_pd*) ;
 struct nes_vnic* to_nesvnic (int ) ;

__attribute__((used)) static struct ib_mr *nes_alloc_fast_reg_mr(struct ib_pd *ibpd, int max_page_list_len)
{
 struct nes_pd *nespd = to_nespd(ibpd);
 struct nes_vnic *nesvnic = to_nesvnic(ibpd->device);
 struct nes_device *nesdev = nesvnic->nesdev;
 struct nes_adapter *nesadapter = nesdev->nesadapter;

 u32 next_stag_index;
 u8 stag_key = 0;
 u32 driver_key = 0;
 int err = 0;
 u32 stag_index = 0;
 struct nes_mr *nesmr;
 u32 stag;
 int ret;
 struct ib_mr *ibmr;




 if (max_page_list_len > (NES_4K_PBL_CHUNK_SIZE / sizeof(u64)))
  return ERR_PTR(-E2BIG);

 get_random_bytes(&next_stag_index, sizeof(next_stag_index));
 stag_key = (u8)next_stag_index;
 next_stag_index >>= 8;
 next_stag_index %= nesadapter->max_mr;

 err = nes_alloc_resource(nesadapter, nesadapter->allocated_mrs,
     nesadapter->max_mr, &stag_index,
     &next_stag_index, NES_RESOURCE_FAST_MR);
 if (err)
  return ERR_PTR(err);

 nesmr = kzalloc(sizeof(*nesmr), GFP_KERNEL);
 if (!nesmr) {
  nes_free_resource(nesadapter, nesadapter->allocated_mrs, stag_index);
  return ERR_PTR(-ENOMEM);
 }

 stag = stag_index << 8;
 stag |= driver_key;
 stag += (u32)stag_key;

 nes_debug(NES_DBG_MR, "Allocating STag 0x%08X index = 0x%08X\n",
    stag, stag_index);

 ret = alloc_fast_reg_mr(nesdev, nespd, stag, max_page_list_len);

 if (ret == 0) {
  nesmr->ibmr.rkey = stag;
  nesmr->ibmr.lkey = stag;
  nesmr->mode = IWNES_MEMREG_TYPE_FMEM;
  ibmr = &nesmr->ibmr;
 } else {
  kfree(nesmr);
  nes_free_resource(nesadapter, nesadapter->allocated_mrs, stag_index);
  ibmr = ERR_PTR(-ENOMEM);
 }
 return ibmr;
}
