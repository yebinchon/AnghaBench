
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct rio_mport {int sys_size; } ;


 int RIO_DID_CSR ;
 int RIO_GET_DID (int ,int ) ;
 int rio_mport_read_config_32 (struct rio_mport*,int ,int ,int ,int *) ;

__attribute__((used)) static u16 rio_get_device_id(struct rio_mport *port, u16 destid, u8 hopcount)
{
 u32 result;

 rio_mport_read_config_32(port, destid, hopcount, RIO_DID_CSR, &result);

 return RIO_GET_DID(port->sys_size, result);
}
