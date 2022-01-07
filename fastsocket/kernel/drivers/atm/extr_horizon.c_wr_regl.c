
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ iobase; } ;
typedef TYPE_1__ hrz_dev ;


 int cpu_to_le32 (int ) ;
 int outl (int ,scalar_t__) ;

__attribute__((used)) static inline void wr_regl (const hrz_dev * dev, unsigned char reg, u32 data) {
  outl (cpu_to_le32 (data), dev->iobase + reg);
}
