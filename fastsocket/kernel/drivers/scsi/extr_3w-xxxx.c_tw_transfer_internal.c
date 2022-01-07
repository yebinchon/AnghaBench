
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * srb; } ;
typedef TYPE_1__ TW_Device_Extension ;


 int scsi_sg_copy_from_buffer (int ,void*,unsigned int) ;

__attribute__((used)) static void tw_transfer_internal(TW_Device_Extension *tw_dev, int request_id,
     void *data, unsigned int len)
{
 scsi_sg_copy_from_buffer(tw_dev->srb[request_id], data, len);
}
