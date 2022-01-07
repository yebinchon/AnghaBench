
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idset {int num_id; int bitmap; } ;


 int test_bit (int,int ) ;

__attribute__((used)) static inline int idset_contains(struct idset *set, int ssid, int id)
{
 return test_bit(ssid * set->num_id + id, set->bitmap);
}
