
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct scsi_cmnd {scalar_t__* cmnd; int cmd_len; int result; } ;
struct ata_device {scalar_t__ class; int cdb_len; } ;
typedef int * ata_xlat_func_t ;


 scalar_t__ ATA_16 ;
 scalar_t__ ATA_DEV_ATA ;
 int COMMAND_SIZE (scalar_t__) ;
 int DID_ERROR ;
 int DPRINTK (char*,int,scalar_t__,int) ;
 int * ata_get_xlat_func (struct ata_device*,scalar_t__) ;
 int ata_scsi_simulate (struct ata_device*,struct scsi_cmnd*,void (*) (struct scsi_cmnd*)) ;
 int ata_scsi_translate (struct ata_device*,struct scsi_cmnd*,void (*) (struct scsi_cmnd*),int *) ;
 int atapi_passthru16 ;
 int * atapi_xlat ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int __ata_scsi_queuecmd(struct scsi_cmnd *scmd,
          void (*done)(struct scsi_cmnd *),
          struct ata_device *dev)
{
 u8 scsi_op = scmd->cmnd[0];
 ata_xlat_func_t xlat_func;
 int rc = 0;

 if (dev->class == ATA_DEV_ATA) {
  if (unlikely(!scmd->cmd_len || scmd->cmd_len > dev->cdb_len))
   goto bad_cdb_len;

  xlat_func = ata_get_xlat_func(dev, scsi_op);
 } else {
  if (unlikely(!scmd->cmd_len))
   goto bad_cdb_len;

  xlat_func = ((void*)0);
  if (likely((scsi_op != ATA_16) || !atapi_passthru16)) {

   int len = COMMAND_SIZE(scsi_op);
   if (unlikely(len > scmd->cmd_len || len > dev->cdb_len))
    goto bad_cdb_len;

   xlat_func = atapi_xlat;
  } else {

   if (unlikely(scmd->cmd_len > 16))
    goto bad_cdb_len;

   xlat_func = ata_get_xlat_func(dev, scsi_op);
  }
 }

 if (xlat_func)
  rc = ata_scsi_translate(dev, scmd, done, xlat_func);
 else
  ata_scsi_simulate(dev, scmd, done);

 return rc;

 bad_cdb_len:
 DPRINTK("bad CDB len=%u, scsi_op=0x%02x, max=%u\n",
  scmd->cmd_len, scsi_op, dev->cdb_len);
 scmd->result = DID_ERROR << 16;
 done(scmd);
 return 0;
}
