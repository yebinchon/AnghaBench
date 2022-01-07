
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
 int be32_to_cpu (int ) ;
 int inl (scalar_t__) ;

__attribute__((used)) static inline u32 rd_mem (const amb_dev * dev, size_t addr) {



  __be32 be = inl (dev->iobase + addr);

  u32 data = be32_to_cpu (be);
  PRINTD (DBG_FLOW|DBG_REGS, "rd: %08zx -> %08x b[%08x]", addr, data, be);
  return data;
}
