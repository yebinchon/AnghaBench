
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_target_port {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;



__attribute__((used)) static inline struct srp_target_port *host_to_target(struct Scsi_Host *host)
{
 return (struct srp_target_port *) host->hostdata;
}
