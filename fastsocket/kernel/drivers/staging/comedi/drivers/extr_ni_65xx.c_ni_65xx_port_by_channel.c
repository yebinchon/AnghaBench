
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ni_65xx_channels_per_port ;

__attribute__((used)) static inline unsigned ni_65xx_port_by_channel(unsigned channel)
{
 return channel / ni_65xx_channels_per_port;
}
