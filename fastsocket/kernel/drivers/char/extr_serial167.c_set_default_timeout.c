
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cyclades_port {unsigned long default_timeout; } ;



__attribute__((used)) static int set_default_timeout(struct cyclades_port *info, unsigned long value)
{
 info->default_timeout = value & 0xff;
 return 0;
}
