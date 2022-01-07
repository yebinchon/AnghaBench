
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {char const* name; } ;



const char *dm_device_name(struct mapped_device *md)
{
 return md->name;
}
