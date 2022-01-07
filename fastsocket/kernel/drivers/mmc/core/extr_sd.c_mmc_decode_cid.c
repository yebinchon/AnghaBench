
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mmc_cid {int dummy; } ;
struct TYPE_2__ {int year; void* month; void* serial; void* fwrev; void* hwrev; void** prod_name; void* oemid; void* manfid; } ;
struct mmc_card {TYPE_1__ cid; int * raw_cid; } ;


 void* UNSTUFF_BITS (int *,int,int) ;
 int memset (TYPE_1__*,int ,int) ;

void mmc_decode_cid(struct mmc_card *card)
{
 u32 *resp = card->raw_cid;

 memset(&card->cid, 0, sizeof(struct mmc_cid));





 card->cid.manfid = UNSTUFF_BITS(resp, 120, 8);
 card->cid.oemid = UNSTUFF_BITS(resp, 104, 16);
 card->cid.prod_name[0] = UNSTUFF_BITS(resp, 96, 8);
 card->cid.prod_name[1] = UNSTUFF_BITS(resp, 88, 8);
 card->cid.prod_name[2] = UNSTUFF_BITS(resp, 80, 8);
 card->cid.prod_name[3] = UNSTUFF_BITS(resp, 72, 8);
 card->cid.prod_name[4] = UNSTUFF_BITS(resp, 64, 8);
 card->cid.hwrev = UNSTUFF_BITS(resp, 60, 4);
 card->cid.fwrev = UNSTUFF_BITS(resp, 56, 4);
 card->cid.serial = UNSTUFF_BITS(resp, 24, 32);
 card->cid.year = UNSTUFF_BITS(resp, 12, 8);
 card->cid.month = UNSTUFF_BITS(resp, 8, 4);

 card->cid.year += 2000;
}
