
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2o_scsi_host {TYPE_1__* iop; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {char const* name; } ;



__attribute__((used)) static const char *i2o_scsi_info(struct Scsi_Host *SChost)
{
 struct i2o_scsi_host *hostdata;
 hostdata = (struct i2o_scsi_host *)SChost->hostdata;
 return hostdata->iop->name;
}
