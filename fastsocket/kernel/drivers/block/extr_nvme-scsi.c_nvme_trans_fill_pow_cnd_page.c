
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sg_io_hdr {int dummy; } ;
struct nvme_ns {int dummy; } ;


 int MODE_PAGE_POWER_CONDITION ;
 int MODE_PAGE_POW_CND_LEN ;
 int MODE_PAGE_POW_CND_LEN_FIELD ;
 int SNTI_INTERNAL_ERROR ;
 int SNTI_TRANSLATION_SUCCESS ;

__attribute__((used)) static int nvme_trans_fill_pow_cnd_page(struct nvme_ns *ns,
     struct sg_io_hdr *hdr, u8 *resp,
     int len)
{
 int res = SNTI_TRANSLATION_SUCCESS;

 if (len < MODE_PAGE_POW_CND_LEN)
  return SNTI_INTERNAL_ERROR;

 resp[0] = MODE_PAGE_POWER_CONDITION;
 resp[1] = MODE_PAGE_POW_CND_LEN_FIELD;


 return res;
}
