
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mapped_device {int event_nr; } ;


 int atomic_read (int *) ;

uint32_t dm_get_event_nr(struct mapped_device *md)
{
 return atomic_read(&md->event_nr);
}
