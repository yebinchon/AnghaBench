
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct mem_ctl_info {int dummy; } ;
struct mce {int status; } ;


 int EC (int) ;
 scalar_t__ F10_NBSL_EXT_ERR_ECC ;
 scalar_t__ NBSL_PP_OBS ;
 scalar_t__ PP (int ) ;
 scalar_t__ XEC (int,int) ;
 int amd64_handle_ce (struct mem_ctl_info*,struct mce*) ;
 int amd64_handle_ue (struct mem_ctl_info*,struct mce*) ;

__attribute__((used)) static inline void __amd64_decode_bus_error(struct mem_ctl_info *mci,
         struct mce *m)
{
 u16 ec = EC(m->status);
 u8 xec = XEC(m->status, 0x1f);
 u8 ecc_type = (m->status >> 45) & 0x3;


 if (PP(ec) == NBSL_PP_OBS)
  return;


 if (xec && xec != F10_NBSL_EXT_ERR_ECC)
  return;

 if (ecc_type == 2)
  amd64_handle_ce(mci, m);
 else if (ecc_type == 1)
  amd64_handle_ue(mci, m);
}
