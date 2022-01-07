
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ata_link {int ap; } ;


 int ATA_LINK_RESUME_TRIES ;
 int EINVAL ;
 int KERN_ERR ;
 int KERN_WARNING ;
 int SCR_CONTROL ;
 int SCR_ERROR ;
 int ata_link_printk (struct ata_link*,int ,char*,int) ;
 int ata_msleep (int ,int) ;
 int sata_link_debounce (struct ata_link*,unsigned long const*,unsigned long) ;
 int sata_scr_read (struct ata_link*,int ,int*) ;
 int sata_scr_write (struct ata_link*,int ,int) ;

int sata_link_resume(struct ata_link *link, const unsigned long *params,
       unsigned long deadline)
{
 int tries = ATA_LINK_RESUME_TRIES;
 u32 scontrol, serror;
 int rc;

 if ((rc = sata_scr_read(link, SCR_CONTROL, &scontrol)))
  return rc;






 do {
  scontrol = (scontrol & 0x0f0) | 0x300;
  if ((rc = sata_scr_write(link, SCR_CONTROL, scontrol)))
   return rc;





  ata_msleep(link->ap, 200);


  if ((rc = sata_scr_read(link, SCR_CONTROL, &scontrol)))
   return rc;
 } while ((scontrol & 0xf0f) != 0x300 && --tries);

 if ((scontrol & 0xf0f) != 0x300) {
  ata_link_printk(link, KERN_ERR,
    "failed to resume link (SControl %X)\n",
    scontrol);
  return 0;
 }

 if (tries < ATA_LINK_RESUME_TRIES)
  ata_link_printk(link, KERN_WARNING,
    "link resume succeeded after %d retries\n",
    ATA_LINK_RESUME_TRIES - tries);

 if ((rc = sata_link_debounce(link, params, deadline)))
  return rc;


 if (!(rc = sata_scr_read(link, SCR_ERROR, &serror)))
  rc = sata_scr_write(link, SCR_ERROR, serror);

 return rc != -EINVAL ? rc : 0;
}
