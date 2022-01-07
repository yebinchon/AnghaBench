
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lanai_vcc {int * vbase; int vci; } ;
typedef enum lanai_vcc_offset { ____Placeholder_lanai_vcc_offset } lanai_vcc_offset ;


 int APRINTK (int,char*,...) ;
 int RWDEBUG (char*,int ,unsigned int,unsigned int) ;
 int writel (int,int *) ;

__attribute__((used)) static inline void cardvcc_write(const struct lanai_vcc *lvcc,
 u32 val, enum lanai_vcc_offset offset)
{
 APRINTK(lvcc->vbase != ((void*)0), "cardvcc_write: unbound vcc!\n");
 APRINTK((val & ~0xFFFF) == 0,
     "cardvcc_write: bad val 0x%X (vci=%d, addr=0x%02X)\n",
     (unsigned int) val, lvcc->vci, (unsigned int) offset);
 RWDEBUG("VW vci=%04d 0x%02X > 0x%08X\n",
     lvcc->vci, (unsigned int) offset, (unsigned int) val);
 writel(val, lvcc->vbase + offset);
}
