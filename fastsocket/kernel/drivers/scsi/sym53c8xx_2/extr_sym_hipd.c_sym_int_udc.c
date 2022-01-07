
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hcb {int dummy; } ;


 int HS_UNEXPECTED ;
 int printf (char*,char*) ;
 char* sym_name (struct sym_hcb*) ;
 int sym_recover_scsi_int (struct sym_hcb*,int ) ;

__attribute__((used)) static void sym_int_udc (struct sym_hcb *np)
{
 printf ("%s: unexpected disconnect\n", sym_name(np));
 sym_recover_scsi_int(np, HS_UNEXPECTED);
}
