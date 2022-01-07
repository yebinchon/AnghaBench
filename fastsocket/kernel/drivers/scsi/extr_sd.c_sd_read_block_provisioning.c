
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {scalar_t__ lbpme; int lbpvpd; unsigned char lbpu; unsigned char lbpws; unsigned char lbpws10; int device; } ;


 int GFP_KERNEL ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int const,int ) ;
 scalar_t__ scsi_get_vpd_page (int ,int,unsigned char*,int const) ;

__attribute__((used)) static void sd_read_block_provisioning(struct scsi_disk *sdkp)
{
 unsigned char *buffer;
 const int vpd_len = 8;

 if (sdkp->lbpme == 0)
  return;

 buffer = kmalloc(vpd_len, GFP_KERNEL);

 if (!buffer || scsi_get_vpd_page(sdkp->device, 0xb2, buffer, vpd_len))
  goto out;

 sdkp->lbpvpd = 1;
 sdkp->lbpu = (buffer[5] >> 7) & 1;
 sdkp->lbpws = (buffer[5] >> 6) & 1;
 sdkp->lbpws10 = (buffer[5] >> 5) & 1;

 out:
 kfree(buffer);
}
