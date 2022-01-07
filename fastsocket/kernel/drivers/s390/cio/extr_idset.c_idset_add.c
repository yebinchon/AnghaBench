
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int num_id; int bitmap; } ;


 int set_bit (int,int ) ;

__attribute__((used)) static inline void idset_add(struct idset *set, int ssid, int id)
{
 set_bit(ssid * set->num_id + id, set->bitmap);
}
