
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mapped_device {int uevent_seq; } ;


 int atomic_add_return (int,int *) ;

uint32_t dm_next_uevent_seq(struct mapped_device *md)
{
 return atomic_add_return(1, &md->uevent_seq);
}
