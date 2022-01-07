
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {unsigned int state; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct BondedDevice {int nchans; int subdev; int dev; } ;
struct TYPE_2__ {unsigned int nchans; unsigned int ndevs; struct BondedDevice** devs; } ;


 int EINVAL ;
 unsigned int LSAMPL_BITS ;
 int comedi_dio_bitfield (int ,int ,unsigned int,unsigned int*) ;
 TYPE_1__* devpriv ;

__attribute__((used)) static int bonding_dio_insn_bits(struct comedi_device *dev,
     struct comedi_subdevice *s,
     struct comedi_insn *insn, unsigned int *data)
{

 unsigned nchans = (sizeof(unsigned int)*8), num_done = 0, i;
 if (insn->n != 2)
  return -EINVAL;

 if (devpriv->nchans < nchans)
  nchans = devpriv->nchans;



 for (i = 0; num_done < nchans && i < devpriv->ndevs; ++i) {
  struct BondedDevice *bdev = devpriv->devs[i];




  unsigned int subdevMask = ((1 << bdev->nchans) - 1);
  unsigned int writeMask, dataBits;


  if (bdev->nchans >= (sizeof(unsigned int)*8))
   subdevMask = (unsigned int)(-1);

  writeMask = (data[0] >> num_done) & subdevMask;
  dataBits = (data[1] >> num_done) & subdevMask;


  if (comedi_dio_bitfield(bdev->dev, bdev->subdev, writeMask,
     &dataBits) != 2)
   return -EINVAL;


  data[1] &= ~(subdevMask << num_done);

  data[1] |= (dataBits & subdevMask) << num_done;

  s->state = data[1];

  num_done += bdev->nchans;
 }

 return insn->n;
}
