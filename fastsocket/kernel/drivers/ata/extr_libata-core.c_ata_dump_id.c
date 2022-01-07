
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int DPRINTK (char*,int const,int const,...) ;

__attribute__((used)) static inline void ata_dump_id(const u16 *id)
{
 DPRINTK("49==0x%04x  "
  "53==0x%04x  "
  "63==0x%04x  "
  "64==0x%04x  "
  "75==0x%04x  \n",
  id[49],
  id[53],
  id[63],
  id[64],
  id[75]);
 DPRINTK("80==0x%04x  "
  "81==0x%04x  "
  "82==0x%04x  "
  "83==0x%04x  "
  "84==0x%04x  \n",
  id[80],
  id[81],
  id[82],
  id[83],
  id[84]);
 DPRINTK("88==0x%04x  "
  "93==0x%04x\n",
  id[88],
  id[93]);
}
