
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {scalar_t__ addr; } ;
struct h_epas {TYPE_2__ user; TYPE_1__ kernel; } ;


 int PAGE_MASK ;
 int PAGE_SIZE ;
 scalar_t__ ioremap (int,int ) ;

__attribute__((used)) static inline void hcp_epas_ctor(struct h_epas *epas, u64 paddr_kernel,
     u64 paddr_user)
{

 epas->kernel.addr = ioremap((paddr_kernel & PAGE_MASK), PAGE_SIZE) +
       (paddr_kernel & ~PAGE_MASK);
 epas->user.addr = paddr_user;
}
