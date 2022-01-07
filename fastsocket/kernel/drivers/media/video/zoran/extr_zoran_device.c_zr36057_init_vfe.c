
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct zoran {int dummy; } ;


 int PCIPCI_TRITON ;
 int ZR36057_VDCR ;
 int ZR36057_VDCR_Triton ;
 int ZR36057_VFESPFR ;
 int ZR36057_VFESPFR_ExtFl ;
 int ZR36057_VFESPFR_LittleEndian ;
 int ZR36057_VFESPFR_TopField ;
 int ZR36057_VFESPFR_VCLKPol ;
 int btread (int ) ;
 int btwrite (int ,int ) ;
 int pci_pci_problems ;

__attribute__((used)) static void
zr36057_init_vfe (struct zoran *zr)
{
 u32 reg;

 reg = btread(ZR36057_VFESPFR);
 reg |= ZR36057_VFESPFR_LittleEndian;
 reg &= ~ZR36057_VFESPFR_VCLKPol;
 reg |= ZR36057_VFESPFR_ExtFl;
 reg |= ZR36057_VFESPFR_TopField;
 btwrite(reg, ZR36057_VFESPFR);
 reg = btread(ZR36057_VDCR);
 if (pci_pci_problems & PCIPCI_TRITON)

  reg &= ~ZR36057_VDCR_Triton;
 else
  reg |= ZR36057_VDCR_Triton;
 btwrite(reg, ZR36057_VDCR);
}
