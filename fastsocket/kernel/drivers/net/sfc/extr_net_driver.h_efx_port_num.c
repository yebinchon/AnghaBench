
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {unsigned int port_num; } ;



__attribute__((used)) static inline unsigned int efx_port_num(struct efx_nic *efx)
{
 return efx->port_num;
}
