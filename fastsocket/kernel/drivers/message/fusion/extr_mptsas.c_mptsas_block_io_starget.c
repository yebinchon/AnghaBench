
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dummy; } ;


 int mptsas_block_io_sdev ;
 int starget_for_each_device (struct scsi_target*,int *,int ) ;

__attribute__((used)) static void
mptsas_block_io_starget(struct scsi_target *starget)
{
 if (starget)
  starget_for_each_device(starget, ((void*)0), mptsas_block_io_sdev);
}
