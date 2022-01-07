
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_device {int minor; } ;
struct comedi_devconfig {int* options; } ;
struct BondedDevice {int minor; int subdev; int nchans; int chanid_offset; int subdev_type; void* dev; } ;
typedef int file ;
typedef int devs_opened ;
typedef int buf ;
typedef int bdev ;
struct TYPE_2__ {int ndevs; int nchans; scalar_t__* name; struct BondedDevice** devs; struct BondedDevice** chanIdDevMap; } ;


 int COMEDI_NDEVCONFOPTS ;
 int COMEDI_NUM_BOARD_MINORS ;
 int COMEDI_SUBD_DIO ;
 int ERROR (char*,...) ;
 int GFP_KERNEL ;
 int MAX_BOARD_NAME ;
 struct BondedDevice** Realloc (struct BondedDevice**,int,int) ;
 int comedi_find_subdevice_by_type (void*,int ,int) ;
 int comedi_get_n_channels (void*,int) ;
 void* comedi_open (char*) ;
 TYPE_1__* devpriv ;
 struct BondedDevice* kmalloc (int,int ) ;
 int memset (void**,int ,int) ;
 int snprintf (char*,int,char*,int,...) ;
 int strlen (scalar_t__*) ;
 int strncat (scalar_t__*,char*,int) ;

__attribute__((used)) static int doDevConfig(struct comedi_device *dev, struct comedi_devconfig *it)
{
 int i;
 void *devs_opened[COMEDI_NUM_BOARD_MINORS];

 memset(devs_opened, 0, sizeof(devs_opened));
 devpriv->name[0] = 0;;


 for (i = 0; i < COMEDI_NDEVCONFOPTS && (!i || it->options[i]); ++i) {
  char file[] = "/dev/comediXXXXXX";
  int minor = it->options[i];
  void *d;
  int sdev = -1, nchans, tmp;
  struct BondedDevice *bdev = ((void*)0);

  if (minor < 0 || minor > COMEDI_NUM_BOARD_MINORS) {
   ERROR("Minor %d is invalid!\n", minor);
   return 0;
  }
  if (minor == dev->minor) {
   ERROR("Cannot bond this driver to itself!\n");
   return 0;
  }
  if (devs_opened[minor]) {
   ERROR("Minor %d specified more than once!\n", minor);
   return 0;
  }

  snprintf(file, sizeof(file), "/dev/comedi%u", minor);
  file[sizeof(file) - 1] = 0;

  d = devs_opened[minor] = comedi_open(file);

  if (!d) {
   ERROR("Minor %u could not be opened\n", minor);
   return 0;
  }


  while ((sdev = comedi_find_subdevice_by_type(d, COMEDI_SUBD_DIO,
            sdev + 1)) > -1) {
   nchans = comedi_get_n_channels(d, sdev);
   if (nchans <= 0) {
    ERROR("comedi_get_n_channels() returned %d "
          "on minor %u subdev %d!\n",
          nchans, minor, sdev);
    return 0;
   }
   bdev = kmalloc(sizeof(*bdev), GFP_KERNEL);
   if (!bdev) {
    ERROR("Out of memory.\n");
    return 0;
   }
   bdev->dev = d;
   bdev->minor = minor;
   bdev->subdev = sdev;
   bdev->subdev_type = COMEDI_SUBD_DIO;
   bdev->nchans = nchans;
   bdev->chanid_offset = devpriv->nchans;


   while (nchans--)
    devpriv->chanIdDevMap[devpriv->nchans++] = bdev;





   tmp = devpriv->ndevs * sizeof(bdev);
   devpriv->devs =
       Realloc(devpriv->devs,
        ++devpriv->ndevs * sizeof(bdev), tmp);
   if (!devpriv->devs) {
    ERROR("Could not allocate memory. "
          "Out of memory?");
    return 0;
   }

   devpriv->devs[devpriv->ndevs - 1] = bdev;
   {

    char buf[20];
    int left =
        MAX_BOARD_NAME - strlen(devpriv->name) - 1;
    snprintf(buf, sizeof(buf), "%d:%d ", dev->minor,
      bdev->subdev);
    buf[sizeof(buf) - 1] = 0;
    strncat(devpriv->name, buf, left);
   }

  }
 }

 if (!devpriv->nchans) {
  ERROR("No channels found!\n");
  return 0;
 }

 return 1;
}
