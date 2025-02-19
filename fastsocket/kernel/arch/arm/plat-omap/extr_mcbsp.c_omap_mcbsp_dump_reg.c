
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct omap_mcbsp {int dev; int io_base; int id; } ;


 int DRR1 ;
 int DRR2 ;
 int DXR1 ;
 int DXR2 ;
 int OMAP_MCBSP_READ (int ,int ) ;
 int PCR0 ;
 int RCR1 ;
 int RCR2 ;
 int SPCR1 ;
 int SPCR2 ;
 int SRGR1 ;
 int SRGR2 ;
 int XCR1 ;
 int XCR2 ;
 int dev_dbg (int ,char*,...) ;
 struct omap_mcbsp* id_to_mcbsp_ptr (int ) ;

__attribute__((used)) static void omap_mcbsp_dump_reg(u8 id)
{
 struct omap_mcbsp *mcbsp = id_to_mcbsp_ptr(id);

 dev_dbg(mcbsp->dev, "**** McBSP%d regs ****\n", mcbsp->id);
 dev_dbg(mcbsp->dev, "DRR2:  0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, DRR2));
 dev_dbg(mcbsp->dev, "DRR1:  0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, DRR1));
 dev_dbg(mcbsp->dev, "DXR2:  0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, DXR2));
 dev_dbg(mcbsp->dev, "DXR1:  0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, DXR1));
 dev_dbg(mcbsp->dev, "SPCR2: 0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, SPCR2));
 dev_dbg(mcbsp->dev, "SPCR1: 0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, SPCR1));
 dev_dbg(mcbsp->dev, "RCR2:  0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, RCR2));
 dev_dbg(mcbsp->dev, "RCR1:  0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, RCR1));
 dev_dbg(mcbsp->dev, "XCR2:  0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, XCR2));
 dev_dbg(mcbsp->dev, "XCR1:  0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, XCR1));
 dev_dbg(mcbsp->dev, "SRGR2: 0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, SRGR2));
 dev_dbg(mcbsp->dev, "SRGR1: 0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, SRGR1));
 dev_dbg(mcbsp->dev, "PCR0:  0x%04x\n",
   OMAP_MCBSP_READ(mcbsp->io_base, PCR0));
 dev_dbg(mcbsp->dev, "***********************\n");
}
