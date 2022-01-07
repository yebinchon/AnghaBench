
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bfad_im_scsi_transport_template ;
 scalar_t__ bfad_im_scsi_vport_transport_template ;
 int fc_release_transport (scalar_t__) ;

void
bfad_im_module_exit(void)
{
 if (bfad_im_scsi_transport_template)
  fc_release_transport(bfad_im_scsi_transport_template);

 if (bfad_im_scsi_vport_transport_template)
  fc_release_transport(bfad_im_scsi_vport_transport_template);
}
