
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;



 int DID_OK ;


 int EBADE ;
 int EIO ;
 int ENOLINK ;
 int EREMOTEIO ;
 int host_byte (int) ;
 int set_host_byte (struct scsi_cmnd*,int ) ;

__attribute__((used)) static int __scsi_error_from_host_byte(struct scsi_cmnd *cmd, int result)
{
 int error = 0;

 switch(host_byte(result)) {
 case 128:
  error = -ENOLINK;
  break;
 case 129:
  set_host_byte(cmd, DID_OK);
  error = -EREMOTEIO;
  break;
 case 130:
  set_host_byte(cmd, DID_OK);
  error = -EBADE;
  break;
 default:
  error = -EIO;
  break;
 }

 return error;
}
