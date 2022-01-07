
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qpn_map {int dummy; } ;
struct qib_qpn_table {struct qpn_map* map; } ;


 int BITS_PER_PAGE ;

__attribute__((used)) static inline unsigned mk_qpn(struct qib_qpn_table *qpt,
         struct qpn_map *map, unsigned off)
{
 return (map - qpt->map) * BITS_PER_PAGE + off;
}
