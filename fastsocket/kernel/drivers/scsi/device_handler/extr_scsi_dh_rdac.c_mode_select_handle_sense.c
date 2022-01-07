
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_hdr {int sense_key; int asc; int ascq; } ;
struct scsi_device {int dummy; } ;
struct rdac_dh_data {TYPE_1__* ctlr; } ;
struct TYPE_2__ {int index; scalar_t__ array_name; } ;






 int RDAC_LOG (int ,struct scsi_device*,char*,char*,int ,int,int,int) ;
 int RDAC_LOG_FAILOVER ;
 int SCSI_DH_IO ;
 int SCSI_DH_RETRY ;
 int SCSI_SENSE_BUFFERSIZE ;

 struct rdac_dh_data* get_rdac_data (struct scsi_device*) ;
 int scsi_normalize_sense (unsigned char*,int ,struct scsi_sense_hdr*) ;

__attribute__((used)) static int mode_select_handle_sense(struct scsi_device *sdev,
     unsigned char *sensebuf)
{
 struct scsi_sense_hdr sense_hdr;
 int err = SCSI_DH_IO, ret;
 struct rdac_dh_data *h = get_rdac_data(sdev);

 ret = scsi_normalize_sense(sensebuf, SCSI_SENSE_BUFFERSIZE, &sense_hdr);
 if (!ret)
  goto done;

 switch (sense_hdr.sense_key) {
 case 129:
 case 132:
 case 128:
  err = SCSI_DH_RETRY;
  break;
 case 130:
  if (sense_hdr.asc == 0x04 && sense_hdr.ascq == 0x01)



   err = SCSI_DH_RETRY;
  break;
 case 131:
  if (sense_hdr.asc == 0x91 && sense_hdr.ascq == 0x36)



   err = SCSI_DH_RETRY;
  break;
 default:
  break;
 }

 RDAC_LOG(RDAC_LOG_FAILOVER, sdev, "array %s, ctlr %d, "
  "MODE_SELECT returned with sense %02x/%02x/%02x",
  (char *) h->ctlr->array_name, h->ctlr->index,
  sense_hdr.sense_key, sense_hdr.asc, sense_hdr.ascq);

done:
 return err;
}
