
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rio_mport {int sys_size; } ;


 int RIO_DID_CSR ;
 int RIO_GET_DID (int ,int ) ;
 int rio_local_read_config_32 (struct rio_mport*,int ,int *) ;

u16 rio_local_get_device_id(struct rio_mport *port)
{
 u32 result;

 rio_local_read_config_32(port, RIO_DID_CSR, &result);

 return (RIO_GET_DID(port->sys_size, result));
}
