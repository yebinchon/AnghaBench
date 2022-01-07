
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_ibdev {int qp_table_size; int qp_rnd; } ;


 int jhash_1word (int ,int ) ;

__attribute__((used)) static inline unsigned qpn_hash(struct qib_ibdev *dev, u32 qpn)
{
 return jhash_1word(qpn, dev->qp_rnd) &
  (dev->qp_table_size - 1);
}
