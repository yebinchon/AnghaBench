
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sh_flctl {int erase_ADRCNT; int rw_ADRCNT; scalar_t__ page_size; } ;
struct mtd_info {int dummy; } ;


 int ADRCNT_1 ;
 int CDSRC_E ;
 int DOADR_E ;
 int DOCMD1_E ;
 int DOCMD2_E ;
 int DOSR_E ;
 int FLCMCDR (struct sh_flctl*) ;
 int FLCMDCR (struct sh_flctl*) ;
 int FLCMNCR (struct sh_flctl*) ;
 int SELRW ;
 int SNAND_E ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static void set_cmd_regs(struct mtd_info *mtd, uint32_t cmd, uint32_t flcmcdr_val)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 uint32_t flcmncr_val = readl(FLCMNCR(flctl));
 uint32_t flcmdcr_val, addr_len_bytes = 0;


 if (flctl->page_size)
  flcmncr_val |= SNAND_E;
 else
  flcmncr_val &= ~SNAND_E;


 flcmdcr_val = DOCMD1_E | DOADR_E;


 switch (cmd) {
 case 135:
  addr_len_bytes = flctl->erase_ADRCNT;
  flcmdcr_val |= DOCMD2_E;
  break;
 case 133:
 case 131:
  addr_len_bytes = flctl->rw_ADRCNT;
  flcmdcr_val |= CDSRC_E;
  break;
 case 129:

  flcmdcr_val &= ~DOADR_E;
  break;
 case 134:
  addr_len_bytes = flctl->rw_ADRCNT;
  flcmdcr_val |= DOCMD2_E | CDSRC_E | SELRW;
  break;
 case 132:
  flcmncr_val &= ~SNAND_E;
  addr_len_bytes = ADRCNT_1;
  break;
 case 128:
 case 130:
  flcmncr_val &= ~SNAND_E;
  flcmdcr_val &= ~(DOADR_E | DOSR_E);
  break;
 default:
  break;
 }


 flcmdcr_val |= addr_len_bytes;


 writel(flcmncr_val, FLCMNCR(flctl));
 writel(flcmdcr_val, FLCMDCR(flctl));
 writel(flcmcdr_val, FLCMCDR(flctl));
}
