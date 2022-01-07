
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rio_mport {int host_deviceid; } ;


 int RIO_HOST_DID_LOCK_CSR ;
 int next_destid ;
 int rio_local_read_config_32 (struct rio_mport*,int ,int*) ;
 int rio_local_set_device_id (struct rio_mport*,int) ;
 int rio_local_write_config_32 (struct rio_mport*,int ,int) ;

__attribute__((used)) static int rio_enum_host(struct rio_mport *port)
{
 u32 result;


 rio_local_write_config_32(port, RIO_HOST_DID_LOCK_CSR,
      port->host_deviceid);

 rio_local_read_config_32(port, RIO_HOST_DID_LOCK_CSR, &result);
 if ((result & 0xffff) != port->host_deviceid)
  return -1;


 rio_local_set_device_id(port, port->host_deviceid);

 if (next_destid == port->host_deviceid)
  next_destid++;

 return 0;
}
