
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {scalar_t__ iobase; } ;
typedef TYPE_1__ hrz_dev ;


 int cpu_to_le16 (int ) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static inline void wr_regw (const hrz_dev * dev, unsigned char reg, u16 data) {
  outw (cpu_to_le16 (data), dev->iobase + reg);
}
