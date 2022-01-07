
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int holders; } ;


 int atomic_dec (int *) ;

void dm_put(struct mapped_device *md)
{
 atomic_dec(&md->holders);
}
