
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sh_flctl {scalar_t__ rw_ADRCNT; scalar_t__ page_size; } ;
struct mtd_info {int dummy; } ;


 scalar_t__ ADRCNT2_E ;
 int FLADR (struct sh_flctl*) ;
 int FLADR2 (struct sh_flctl*) ;
 struct sh_flctl* mtd_to_flctl (struct mtd_info*) ;
 int writel (int,int ) ;

__attribute__((used)) static void set_addr(struct mtd_info *mtd, int column, int page_addr)
{
 struct sh_flctl *flctl = mtd_to_flctl(mtd);
 uint32_t addr = 0;

 if (column == -1) {
  addr = page_addr;
 } else if (page_addr != -1) {

  if (flctl->page_size) {
   addr = column & 0x0FFF;
   addr |= (page_addr & 0xff) << 16;
   addr |= ((page_addr >> 8) & 0xff) << 24;

   if (flctl->rw_ADRCNT == ADRCNT2_E) {
    uint32_t addr2;
    addr2 = (page_addr >> 16) & 0xff;
    writel(addr2, FLADR2(flctl));
   }
  } else {
   addr = column;
   addr |= (page_addr & 0xff) << 8;
   addr |= ((page_addr >> 8) & 0xff) << 16;
   addr |= ((page_addr >> 16) & 0xff) << 24;
  }
 }
 writel(addr, FLADR(flctl));
}
