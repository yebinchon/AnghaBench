
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lynx {char phy_reg0; int id; } ;
struct hpsb_host {int dummy; } ;
typedef char quadlet_t ;


 int KERN_DEBUG ;
 int PRINT (int ,int ,char*,char) ;
 int cpu_to_be32s (char*) ;
 char get_phy_reg (struct ti_lynx*,int) ;
 int hpsb_disable_irm ;

__attribute__((used)) static quadlet_t generate_own_selfid(struct ti_lynx *lynx,
                                     struct hpsb_host *host)
{
        quadlet_t lsid;
        char phyreg[7];
        int i;

        phyreg[0] = lynx->phy_reg0;
        for (i = 1; i < 7; i++) {
                phyreg[i] = get_phy_reg(lynx, i);
        }




        lsid = 0x80400000 | ((phyreg[0] & 0xfc) << 22);
        lsid |= (phyreg[1] & 0x3f) << 16;
        lsid |= (phyreg[2] & 0xc0) << 8;
 if (!hpsb_disable_irm)
  lsid |= (phyreg[6] & 0x01) << 11;

        lsid |= (phyreg[6] & 0x10) >> 3;

        for (i = 0; i < (phyreg[2] & 0xf); i++) {
                if (phyreg[3 + i] & 0x4) {
                        lsid |= (((phyreg[3 + i] & 0x8) | 0x10) >> 3)
                                << (6 - i*2);
                } else {
                        lsid |= 1 << (6 - i*2);
                }
        }

        cpu_to_be32s(&lsid);
        PRINT(KERN_DEBUG, lynx->id, "generated own selfid 0x%x", lsid);
        return lsid;
}
