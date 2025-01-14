
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ata_port {int flags; } ;
struct ata_device {int* gscr; int flags; TYPE_1__* link; } ;
struct TYPE_2__ {struct ata_port* ap; } ;


 int ATA_DFLAG_AN ;
 int ATA_FLAG_AN ;
 int EINVAL ;
 int EIO ;
 int KERN_ERR ;
 int KERN_INFO ;
 int SATA_PMP_FEAT_NOTIFY ;
 int SATA_PMP_GSCR_ERROR_EN ;
 size_t SATA_PMP_GSCR_FEAT ;
 size_t SATA_PMP_GSCR_FEAT_EN ;
 int SATA_PMP_MAX_PORTS ;
 int SERR_PHYRDY_CHG ;
 int ata_dev_printk (struct ata_device*,int ,char*,...) ;
 int sata_pmp_gscr_devid (int*) ;
 int sata_pmp_gscr_ports (int*) ;
 int sata_pmp_gscr_rev (int*) ;
 int sata_pmp_gscr_vendor (int*) ;
 int sata_pmp_spec_rev_str (int*) ;
 unsigned int sata_pmp_write (TYPE_1__*,int ,int ) ;

__attribute__((used)) static int sata_pmp_configure(struct ata_device *dev, int print_info)
{
 struct ata_port *ap = dev->link->ap;
 u32 *gscr = dev->gscr;
 unsigned int err_mask = 0;
 const char *reason;
 int nr_ports, rc;

 nr_ports = sata_pmp_gscr_ports(gscr);

 if (nr_ports <= 0 || nr_ports > SATA_PMP_MAX_PORTS) {
  rc = -EINVAL;
  reason = "invalid nr_ports";
  goto fail;
 }

 if ((ap->flags & ATA_FLAG_AN) &&
     (gscr[SATA_PMP_GSCR_FEAT] & SATA_PMP_FEAT_NOTIFY))
  dev->flags |= ATA_DFLAG_AN;


 err_mask = sata_pmp_write(dev->link, SATA_PMP_GSCR_ERROR_EN,
      SERR_PHYRDY_CHG);
 if (err_mask) {
  rc = -EIO;
  reason = "failed to write GSCR_ERROR_EN";
  goto fail;
 }

 if (print_info) {
  ata_dev_printk(dev, KERN_INFO, "Port Multiplier %s, "
          "0x%04x:0x%04x r%d, %d ports, feat 0x%x/0x%x\n",
          sata_pmp_spec_rev_str(gscr),
          sata_pmp_gscr_vendor(gscr),
          sata_pmp_gscr_devid(gscr),
          sata_pmp_gscr_rev(gscr),
          nr_ports, gscr[SATA_PMP_GSCR_FEAT_EN],
          gscr[SATA_PMP_GSCR_FEAT]);

  if (!(dev->flags & ATA_DFLAG_AN))
   ata_dev_printk(dev, KERN_INFO,
    "Asynchronous notification not supported, "
    "hotplug won't\n         work on fan-out "
    "ports. Use warm-plug instead.\n");
 }

 return 0;

 fail:
 ata_dev_printk(dev, KERN_ERR,
         "failed to configure Port Multiplier (%s, Emask=0x%x)\n",
         reason, err_mask);
 return rc;
}
