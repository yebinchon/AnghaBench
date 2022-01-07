
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pf_vf_bulletin_content {int length; int crc; int version; } ;
struct bnx2x {int dummy; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_2__ {scalar_t__ mapping; } ;


 struct pf_vf_bulletin_content* BP_VF_BULLETIN (struct bnx2x*,int) ;
 TYPE_1__* BP_VF_BULLETIN_DMA (struct bnx2x*) ;
 int BULLETIN_CONTENT_SIZE ;
 int U64_HI (scalar_t__) ;
 int U64_LO (scalar_t__) ;
 scalar_t__ VF_ACQUIRED ;
 scalar_t__ VF_ENABLED ;
 int abs_vfid ;
 int bnx2x_copy32_vf_dmae (struct bnx2x*,int,scalar_t__,scalar_t__,int ,int ,int) ;
 int bnx2x_crc_vf_bulletin (struct bnx2x*,struct pf_vf_bulletin_content*) ;
 scalar_t__ bnx2x_vf (struct bnx2x*,int,int ) ;
 int bulletin_map ;
 int state ;

int bnx2x_post_vf_bulletin(struct bnx2x *bp, int vf)
{
 struct pf_vf_bulletin_content *bulletin = BP_VF_BULLETIN(bp, vf);
 dma_addr_t pf_addr = BP_VF_BULLETIN_DMA(bp)->mapping +
  vf * BULLETIN_CONTENT_SIZE;
 dma_addr_t vf_addr = bnx2x_vf(bp, vf, bulletin_map);
 int rc;


 if (bnx2x_vf(bp, vf, state) != VF_ENABLED &&
     bnx2x_vf(bp, vf, state) != VF_ACQUIRED)
  return 0;


 bulletin->version++;
 bulletin->length = BULLETIN_CONTENT_SIZE;
 bulletin->crc = bnx2x_crc_vf_bulletin(bp, bulletin);


 rc = bnx2x_copy32_vf_dmae(bp, 0, pf_addr,
      bnx2x_vf(bp, vf, abs_vfid), U64_HI(vf_addr),
      U64_LO(vf_addr), bulletin->length / 4);
 return rc;
}
