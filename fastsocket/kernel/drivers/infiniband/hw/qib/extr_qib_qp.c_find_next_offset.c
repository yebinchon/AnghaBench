
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qpn_map {int page; } ;
struct qib_qpn_table {int mask; } ;


 int BITS_PER_PAGE ;
 unsigned int find_next_zero_bit (int ,int ,unsigned int) ;

__attribute__((used)) static inline unsigned find_next_offset(struct qib_qpn_table *qpt,
     struct qpn_map *map, unsigned off,
     unsigned n)
{
 if (qpt->mask) {
  off++;
  if (((off & qpt->mask) >> 1) >= n)
   off = (off | qpt->mask) + 2;
 } else
  off = find_next_zero_bit(map->page, BITS_PER_PAGE, off);
 return off;
}
