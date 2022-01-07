
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ccb {int cmd; } ;


 int PRINT_ADDR (int ,char*,char*) ;
 int printk (char*) ;
 int spi_print_msg (int *) ;

__attribute__((used)) static void ncr_print_msg(struct ccb *cp, char *label, u_char *msg)
{
 PRINT_ADDR(cp->cmd, "%s: ", label);

 spi_print_msg(msg);
 printk("\n");
}
