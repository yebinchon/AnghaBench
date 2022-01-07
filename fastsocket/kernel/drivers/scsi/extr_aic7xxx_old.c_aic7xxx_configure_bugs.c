
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aic7xxx_host {int chip; int bugs; int pdev; } ;
 int AHC_BUG_AUTOFLUSH ;
 int AHC_BUG_CACHETHEN ;
 int AHC_BUG_CACHETHEN_DIS ;
 int AHC_BUG_PCI_2_1_RETRY ;
 int AHC_BUG_PCI_MWI ;
 int AHC_BUG_SCBCHAN_UPLOAD ;
 int AHC_BUG_TMODE_WIDEODD ;
 int AHC_CHIPID_MASK ;
 int CACHETHEN ;
 int DSCOMMAND0 ;
 int PCI_COMMAND ;
 unsigned short PCI_COMMAND_INVALIDATE ;
 int aic_inb (struct aic7xxx_host*,int ) ;
 int aic_outb (struct aic7xxx_host*,int,int ) ;
 int pci_read_config_word (int ,int ,unsigned short*) ;
 int pci_write_config_word (int ,int ,unsigned short) ;

__attribute__((used)) static void
aic7xxx_configure_bugs(struct aic7xxx_host *p)
{
  unsigned short tmp_word;

  switch(p->chip & AHC_CHIPID_MASK)
  {
    case 135:
      p->bugs |= AHC_BUG_PCI_2_1_RETRY;

    case 136:
    case 134:
      p->bugs |= AHC_BUG_TMODE_WIDEODD | AHC_BUG_CACHETHEN | AHC_BUG_PCI_MWI;
      break;
    case 133:
      p->bugs |= AHC_BUG_TMODE_WIDEODD | AHC_BUG_PCI_2_1_RETRY |
                 AHC_BUG_CACHETHEN | AHC_BUG_PCI_MWI;
      break;
    case 132:
      p->bugs |= AHC_BUG_AUTOFLUSH | AHC_BUG_CACHETHEN;
      break;
    case 131:
      p->bugs |= AHC_BUG_SCBCHAN_UPLOAD;
      break;
    case 130:
      p->bugs |= AHC_BUG_TMODE_WIDEODD | AHC_BUG_PCI_2_1_RETRY |
                 AHC_BUG_CACHETHEN | AHC_BUG_PCI_MWI;
      break;
    case 129:
      p->bugs |= AHC_BUG_CACHETHEN_DIS;
      break;
    case 128:
      p->bugs |= AHC_BUG_SCBCHAN_UPLOAD;
      break;
    default:

      break;
  }




  pci_read_config_word(p->pdev, PCI_COMMAND, &tmp_word);
  if(p->bugs & AHC_BUG_PCI_MWI)
  {
    tmp_word &= ~PCI_COMMAND_INVALIDATE;
  }
  else
  {
    tmp_word |= PCI_COMMAND_INVALIDATE;
  }
  pci_write_config_word(p->pdev, PCI_COMMAND, tmp_word);

  if(p->bugs & AHC_BUG_CACHETHEN)
  {
    aic_outb(p, aic_inb(p, DSCOMMAND0) & ~CACHETHEN, DSCOMMAND0);
  }
  else if (p->bugs & AHC_BUG_CACHETHEN_DIS)
  {
    aic_outb(p, aic_inb(p, DSCOMMAND0) | CACHETHEN, DSCOMMAND0);
  }

  return;
}
