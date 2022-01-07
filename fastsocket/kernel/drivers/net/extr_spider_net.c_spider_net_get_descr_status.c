
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spider_net_hw_descr {int dmac_cmd_status; } ;


 int SPIDER_NET_DESCR_IND_PROC_MASK ;

__attribute__((used)) static inline int
spider_net_get_descr_status(struct spider_net_hw_descr *hwdescr)
{
 return hwdescr->dmac_cmd_status & SPIDER_NET_DESCR_IND_PROC_MASK;
}
