
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lanai_vcc {int vci; int * vbase; } ;
typedef enum lanai_vcc_offset { ____Placeholder_lanai_vcc_offset } lanai_vcc_offset ;


 int APRINTK (int ,char*) ;
 int RWDEBUG (char*,int ,int,int ) ;
 int readl (int *) ;

__attribute__((used)) static inline u32 cardvcc_read(const struct lanai_vcc *lvcc,
 enum lanai_vcc_offset offset)
{
 u32 val;
 APRINTK(lvcc->vbase != ((void*)0), "cardvcc_read: unbound vcc!\n");
 val= readl(lvcc->vbase + offset);
 RWDEBUG("VR vci=%04d 0x%02X = 0x%08X\n",
     lvcc->vci, (int) offset, val);
 return val;
}
