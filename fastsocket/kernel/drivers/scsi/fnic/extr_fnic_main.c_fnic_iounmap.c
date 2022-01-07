
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vaddr; } ;
struct fnic {TYPE_1__ bar0; } ;


 int iounmap (scalar_t__) ;

__attribute__((used)) static void fnic_iounmap(struct fnic *fnic)
{
 if (fnic->bar0.vaddr)
  iounmap(fnic->bar0.vaddr);
}
