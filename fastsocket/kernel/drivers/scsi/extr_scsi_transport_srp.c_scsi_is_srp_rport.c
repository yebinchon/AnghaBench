
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ release; } ;


 scalar_t__ srp_rport_release ;

__attribute__((used)) static int scsi_is_srp_rport(const struct device *dev)
{
 return dev->release == srp_rport_release;
}
