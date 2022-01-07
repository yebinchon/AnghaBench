
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct rio_mport {int sys_size; } ;


 int RIO_DID_CSR ;
 int RIO_SET_DID (int ,int ) ;
 int rio_mport_write_config_32 (struct rio_mport*,int ,int ,int ,int ) ;

__attribute__((used)) static void rio_set_device_id(struct rio_mport *port, u16 destid, u8 hopcount, u16 did)
{
 rio_mport_write_config_32(port, destid, hopcount, RIO_DID_CSR,
      RIO_SET_DID(port->sys_size, did));
}
