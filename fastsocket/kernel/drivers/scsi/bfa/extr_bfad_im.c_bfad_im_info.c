
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {char* pci_name; } ;
struct bfad_im_port_s {struct bfad_s* bfad; } ;
struct Scsi_Host {scalar_t__* hostdata; } ;
typedef int bfa_buf ;


 char* BFAD_DRIVER_VERSION ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static const char *
bfad_im_info(struct Scsi_Host *shost)
{
 static char bfa_buf[256];
 struct bfad_im_port_s *im_port =
   (struct bfad_im_port_s *) shost->hostdata[0];
 struct bfad_s *bfad = im_port->bfad;

 memset(bfa_buf, 0, sizeof(bfa_buf));
 snprintf(bfa_buf, sizeof(bfa_buf),
  "Brocade FC/FCOE Adapter, " "hwpath: %s driver: %s",
  bfad->pci_name, BFAD_DRIVER_VERSION);
 return bfa_buf;
}
