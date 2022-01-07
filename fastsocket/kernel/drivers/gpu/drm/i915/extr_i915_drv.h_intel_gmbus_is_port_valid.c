
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int GMBUS_PORT_DPD ;
 unsigned int GMBUS_PORT_SSC ;

extern inline bool intel_gmbus_is_port_valid(unsigned port)
{
 return (port >= GMBUS_PORT_SSC && port <= GMBUS_PORT_DPD);
}
