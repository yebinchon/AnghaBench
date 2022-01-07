
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct srp_internal {TYPE_1__* f; } ;
struct Scsi_Host {int transportt; } ;
struct TYPE_2__ {int (* it_nexus_response ) (struct Scsi_Host*,int ,int) ;} ;


 int stub1 (struct Scsi_Host*,int ,int) ;
 struct srp_internal* to_srp_internal (int ) ;

__attribute__((used)) static int srp_it_nexus_response(struct Scsi_Host *shost, u64 nexus, int result)
{
 struct srp_internal *i = to_srp_internal(shost->transportt);
 return i->f->it_nexus_response(shost, nexus, result);
}
