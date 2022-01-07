
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge {TYPE_1__** ingr_map; scalar_t__ ingr_start; } ;
struct TYPE_4__ {unsigned int tx_chan; } ;
struct TYPE_3__ {int netdev; } ;


 TYPE_2__* netdev2pinfo (int ) ;

__attribute__((used)) static unsigned int rxq_to_chan(const struct sge *p, unsigned int qid)
{
 qid -= p->ingr_start;
 return netdev2pinfo(p->ingr_map[qid]->netdev)->tx_chan;
}
