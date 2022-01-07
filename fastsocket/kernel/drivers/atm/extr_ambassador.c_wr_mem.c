
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ iobase; int * membase; } ;
typedef TYPE_1__ amb_dev ;
typedef int __be32 ;


 int DBG_FLOW ;
 int DBG_REGS ;
 int PRINTD (int,char*,size_t,int ,int ) ;
 int cpu_to_be32 (int ) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static inline void wr_mem (const amb_dev * dev, size_t addr, u32 data) {
  __be32 be = cpu_to_be32 (data);
  PRINTD (DBG_FLOW|DBG_REGS, "wr: %08zx <- %08x b[%08x]", addr, data, be);



  outl (be, dev->iobase + addr);

}
