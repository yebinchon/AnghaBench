
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qpn_map {scalar_t__ page; } ;
struct qib_qpn_table {struct qpn_map* map; } ;


 int BITS_PER_PAGE ;
 int BITS_PER_PAGE_MASK ;
 int clear_bit (int,scalar_t__) ;

__attribute__((used)) static void free_qpn(struct qib_qpn_table *qpt, u32 qpn)
{
 struct qpn_map *map;

 map = qpt->map + qpn / BITS_PER_PAGE;
 if (map->page)
  clear_bit(qpn & BITS_PER_PAGE_MASK, map->page);
}
