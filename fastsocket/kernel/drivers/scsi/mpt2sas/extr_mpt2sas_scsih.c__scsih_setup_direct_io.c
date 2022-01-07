
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct scsi_cmnd {scalar_t__* cmnd; } ;
struct _raid_device {scalar_t__ block_exponent; scalar_t__ max_lba; scalar_t__ stripe_sz; scalar_t__ stripe_exponent; scalar_t__ num_pds; int * pd_handle; } ;
struct MPT2SAS_ADAPTER {int dummy; } ;
typedef int __be64 ;
typedef int __be32 ;
struct TYPE_4__ {scalar_t__* CDB32; } ;
struct TYPE_5__ {void* DevHandle; TYPE_1__ CDB; } ;
typedef TYPE_2__ Mpi2SCSIIORequest_t ;


 scalar_t__ READ_10 ;
 scalar_t__ READ_16 ;
 scalar_t__ WRITE_10 ;
 scalar_t__ WRITE_16 ;
 int _scsih_scsi_direct_io_set (struct MPT2SAS_ADAPTER*,int ,int) ;
 scalar_t__ be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 int cpu_to_be32 (scalar_t__) ;
 int cpu_to_be64 (scalar_t__) ;
 void* cpu_to_le16 (int ) ;
 scalar_t__ scsi_bufflen (struct scsi_cmnd*) ;

__attribute__((used)) static void
_scsih_setup_direct_io(struct MPT2SAS_ADAPTER *ioc, struct scsi_cmnd *scmd,
 struct _raid_device *raid_device, Mpi2SCSIIORequest_t *mpi_request,
 u16 smid)
{
 u32 v_lba, p_lba, stripe_off, stripe_unit, column, io_size;
 u32 stripe_sz, stripe_exp;
 u8 num_pds, *cdb_ptr, i;
 u8 cdb0 = scmd->cmnd[0];
 u64 v_llba;




 if (cdb0 == READ_16 || cdb0 == READ_10 ||
     cdb0 == WRITE_16 || cdb0 == WRITE_10) {
  cdb_ptr = mpi_request->CDB.CDB32;

  if ((cdb0 < READ_16) || !(cdb_ptr[2] | cdb_ptr[3] | cdb_ptr[4]
   | cdb_ptr[5])) {
   io_size = scsi_bufflen(scmd) >>
       raid_device->block_exponent;
   i = (cdb0 < READ_16) ? 2 : 6;

   v_lba = be32_to_cpu(*(__be32 *)(&cdb_ptr[i]));

   if (((u64)v_lba + (u64)io_size - 1) <=
       (u32)raid_device->max_lba) {
    stripe_sz = raid_device->stripe_sz;
    stripe_exp = raid_device->stripe_exponent;
    stripe_off = v_lba & (stripe_sz - 1);


    if ((stripe_off + io_size) <= stripe_sz) {
     num_pds = raid_device->num_pds;
     p_lba = v_lba >> stripe_exp;
     stripe_unit = p_lba / num_pds;
     column = p_lba % num_pds;
     p_lba = (stripe_unit << stripe_exp) +
         stripe_off;
     mpi_request->DevHandle =
      cpu_to_le16(raid_device->
          pd_handle[column]);
     (*(__be32 *)(&cdb_ptr[i])) =
      cpu_to_be32(p_lba);



     _scsih_scsi_direct_io_set(ioc, smid, 1);
    }
   }
  } else {
   io_size = scsi_bufflen(scmd) >>
       raid_device->block_exponent;

   v_llba = be64_to_cpu(*(__be64 *)(&cdb_ptr[2]));

   if ((v_llba + (u64)io_size - 1) <=
       raid_device->max_lba) {
    stripe_sz = raid_device->stripe_sz;
    stripe_exp = raid_device->stripe_exponent;
    stripe_off = (u32) (v_llba & (stripe_sz - 1));


    if ((stripe_off + io_size) <= stripe_sz) {
     num_pds = raid_device->num_pds;
     p_lba = (u32)(v_llba >> stripe_exp);
     stripe_unit = p_lba / num_pds;
     column = p_lba % num_pds;
     p_lba = (stripe_unit << stripe_exp) +
         stripe_off;
     mpi_request->DevHandle =
      cpu_to_le16(raid_device->
          pd_handle[column]);
     (*(__be64 *)(&cdb_ptr[2])) =
         cpu_to_be64((u64)p_lba);



     _scsih_scsi_direct_io_set(ioc, smid, 1);
    }
   }
  }
 }
}
