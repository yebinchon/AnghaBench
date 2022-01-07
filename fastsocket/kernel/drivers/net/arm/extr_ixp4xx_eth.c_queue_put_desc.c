
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct desc {int dummy; } ;


 int BUG_ON (int) ;
 int debug_desc (int,struct desc*) ;
 int qmgr_put_entry (unsigned int,int) ;

__attribute__((used)) static inline void queue_put_desc(unsigned int queue, u32 phys,
      struct desc *desc)
{
 debug_desc(phys, desc);
 BUG_ON(phys & 0x1F);
 qmgr_put_entry(queue, phys);


}
