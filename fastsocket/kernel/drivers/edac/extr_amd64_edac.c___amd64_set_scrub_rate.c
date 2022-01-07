
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ scrubval; scalar_t__ bandwidth; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int SCRCTRL ;
 int pci_write_bits32 (struct pci_dev*,int ,scalar_t__,int) ;
 TYPE_1__* scrubrates ;

__attribute__((used)) static int __amd64_set_scrub_rate(struct pci_dev *ctl, u32 new_bw, u32 min_rate)
{
 u32 scrubval;
 int i;







 for (i = 0; i < ARRAY_SIZE(scrubrates); i++) {




  if (scrubrates[i].scrubval < min_rate)
   continue;

  if (scrubrates[i].bandwidth <= new_bw)
   break;






 }

 scrubval = scrubrates[i].scrubval;

 pci_write_bits32(ctl, SCRCTRL, scrubval, 0x001F);

 if (scrubval)
  return scrubrates[i].bandwidth;

 return 0;
}
