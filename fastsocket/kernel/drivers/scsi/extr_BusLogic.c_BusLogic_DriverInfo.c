
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ hostdata; } ;
struct BusLogic_HostAdapter {char const* FullModelName; } ;



__attribute__((used)) static const char *BusLogic_DriverInfo(struct Scsi_Host *Host)
{
 struct BusLogic_HostAdapter *HostAdapter = (struct BusLogic_HostAdapter *) Host->hostdata;
 return HostAdapter->FullModelName;
}
