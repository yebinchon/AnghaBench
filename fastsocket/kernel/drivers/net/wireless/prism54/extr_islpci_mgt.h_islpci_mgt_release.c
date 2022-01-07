
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct islpci_mgmtframe {int dummy; } ;


 int kfree (struct islpci_mgmtframe*) ;

__attribute__((used)) static inline void
islpci_mgt_release(struct islpci_mgmtframe *frame)
{
        kfree(frame);
}
