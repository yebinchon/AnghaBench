
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_device {int lun; int id; int channel; } ;
struct scsi_cmnd {int * cmnd; struct scsi_device* device; } ;
struct ata_port {int print_id; } ;


 int DPRINTK (char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void ata_scsi_dump_cdb(struct ata_port *ap,
         struct scsi_cmnd *cmd)
{
}
