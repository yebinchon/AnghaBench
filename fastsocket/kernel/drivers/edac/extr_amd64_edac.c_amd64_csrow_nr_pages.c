
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct amd64_pvt {int dbam1; int dbam0; int channel_count; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dbam_to_cs ) (struct amd64_pvt*,scalar_t__,int) ;} ;


 int PAGE_SHIFT ;
 int debugf0 (char*,int,int) ;
 int stub1 (struct amd64_pvt*,scalar_t__,int) ;

__attribute__((used)) static u32 amd64_csrow_nr_pages(struct amd64_pvt *pvt, u8 dct, int csrow_nr)
{
 u32 cs_mode, nr_pages;
 u32 dbam = dct ? pvt->dbam1 : pvt->dbam0;
 cs_mode = (dbam >> ((csrow_nr / 2) * 4)) & 0xF;

 nr_pages = pvt->ops->dbam_to_cs(pvt, dct, cs_mode) << (20 - PAGE_SHIFT);

 debugf0("  (csrow=%d) DBAM map index= %d\n", csrow_nr, cs_mode);
 debugf0("    nr_pages= %u  channel-count = %d\n",
  nr_pages, pvt->channel_count);

 return nr_pages;
}
