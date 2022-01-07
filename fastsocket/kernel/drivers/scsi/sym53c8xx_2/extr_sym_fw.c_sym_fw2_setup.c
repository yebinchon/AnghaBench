
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_hcb {scalar_t__ scriptb0; scalar_t__ scripta0; } ;
struct sym_fw2b_scr {int dummy; } ;
struct sym_fw2a_scr {int data_out; int data_in; } ;
struct sym_fw {int dummy; } ;


 int sym_fw_fill_data (int ,int ) ;
 int sym_fw_setup_bus_addresses (struct sym_hcb*,struct sym_fw*) ;

__attribute__((used)) static void
sym_fw2_setup(struct sym_hcb *np, struct sym_fw *fw)
{
 struct sym_fw2a_scr *scripta0;
 struct sym_fw2b_scr *scriptb0;

 scripta0 = (struct sym_fw2a_scr *) np->scripta0;
 scriptb0 = (struct sym_fw2b_scr *) np->scriptb0;




 sym_fw_fill_data(scripta0->data_in, scripta0->data_out);




 sym_fw_setup_bus_addresses(np, fw);
}
