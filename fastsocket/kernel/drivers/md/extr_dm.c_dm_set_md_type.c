
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {unsigned int type; } ;



void dm_set_md_type(struct mapped_device *md, unsigned type)
{
 md->type = type;
}
