
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_dh_data {scalar_t__ buf; } ;
struct scsi_device {struct scsi_dh_data* scsi_dh_data; } ;
struct clariion_dh_data {int dummy; } ;


 int BUG_ON (int ) ;

__attribute__((used)) static inline struct clariion_dh_data
   *get_clariion_data(struct scsi_device *sdev)
{
 struct scsi_dh_data *scsi_dh_data = sdev->scsi_dh_data;
 BUG_ON(scsi_dh_data == ((void*)0));
 return ((struct clariion_dh_data *) scsi_dh_data->buf);
}
