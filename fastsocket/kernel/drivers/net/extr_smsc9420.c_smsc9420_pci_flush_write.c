
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smsc9420_pdata {int dummy; } ;


 int ID_REV ;
 int smsc9420_reg_read (struct smsc9420_pdata*,int ) ;

__attribute__((used)) static inline void smsc9420_pci_flush_write(struct smsc9420_pdata *pd)
{

 smsc9420_reg_read(pd, ID_REV);
}
