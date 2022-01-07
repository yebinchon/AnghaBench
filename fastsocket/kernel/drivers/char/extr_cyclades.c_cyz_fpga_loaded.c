
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p9060; } ;
struct cyclades_card {TYPE_1__ ctl_addr; } ;


 int __cyz_fpga_loaded (int ) ;

__attribute__((used)) static inline bool cyz_fpga_loaded(struct cyclades_card *card)
{
 return __cyz_fpga_loaded(card->ctl_addr.p9060);
}
