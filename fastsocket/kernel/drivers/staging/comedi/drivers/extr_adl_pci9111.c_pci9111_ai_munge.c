
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci9111_board {int ai_resolution; } ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {scalar_t__ board_ptr; } ;


 short PCI9111_AI_RESOLUTION_2_CMP_BIT ;
 short PCI9111_AI_RESOLUTION_MASK ;
 int PCI9111_HR_AI_RESOLUTION ;
 short PCI9111_HR_AI_RESOLUTION_2_CMP_BIT ;
 short PCI9111_HR_AI_RESOLUTION_MASK ;

__attribute__((used)) static void pci9111_ai_munge(struct comedi_device *dev,
        struct comedi_subdevice *s, void *data,
        unsigned int num_bytes,
        unsigned int start_chan_index)
{
 unsigned int i, num_samples = num_bytes / sizeof(short);
 short *array = data;
 int resolution =
     ((struct pci9111_board *)dev->board_ptr)->ai_resolution;

 for (i = 0; i < num_samples; i++) {
  if (resolution == PCI9111_HR_AI_RESOLUTION)
   array[i] =
       (array[i] & PCI9111_HR_AI_RESOLUTION_MASK) ^
       PCI9111_HR_AI_RESOLUTION_2_CMP_BIT;
  else
   array[i] =
       ((array[i] >> 4) & PCI9111_AI_RESOLUTION_MASK) ^
       PCI9111_AI_RESOLUTION_2_CMP_BIT;
 }
}
