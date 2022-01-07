
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ni_65xx_port_offset ;

__attribute__((used)) static inline unsigned Port_Select(unsigned port)
{
 return 0x41 + port * ni_65xx_port_offset;
}
