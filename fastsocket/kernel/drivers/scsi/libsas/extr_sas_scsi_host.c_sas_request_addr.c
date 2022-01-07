
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct firmware {scalar_t__ size; int data; } ;
struct Scsi_Host {int shost_gendev; } ;


 int ENODEV ;
 scalar_t__ SAS_STRING_ADDR_SIZE ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int sas_parse_addr (int *,int ) ;

int sas_request_addr(struct Scsi_Host *shost, u8 *addr)
{
 int res;
 const struct firmware *fw;

 res = request_firmware(&fw, "sas_addr", &shost->shost_gendev);
 if (res)
  return res;

 if (fw->size < SAS_STRING_ADDR_SIZE) {
  res = -ENODEV;
  goto out;
 }

 sas_parse_addr(addr, fw->data);

out:
 release_firmware(fw);
 return res;
}
