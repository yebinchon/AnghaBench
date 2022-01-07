
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hcb {int dummy; } ;


 int sym_reset_scsi_bus (struct sym_hcb*,int) ;

__attribute__((used)) static void sym_start_reset(struct sym_hcb *np)
{
 sym_reset_scsi_bus(np, 1);
}
