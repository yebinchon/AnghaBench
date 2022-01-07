
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sym_ccb {int cmd; } ;


 int printf (char*) ;
 int spi_print_msg (int *) ;
 int sym_print_addr (int ,char*,...) ;

__attribute__((used)) static void sym_print_msg(struct sym_ccb *cp, char *label, u_char *msg)
{
 if (label)
  sym_print_addr(cp->cmd, "%s: ", label);
 else
  sym_print_addr(cp->cmd, "");

 spi_print_msg(msg);
 printf("\n");
}
