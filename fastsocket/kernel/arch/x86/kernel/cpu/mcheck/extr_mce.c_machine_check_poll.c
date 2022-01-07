
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce {int bank; int status; scalar_t__ tsc; scalar_t__ addr; scalar_t__ misc; } ;
typedef int mce_banks_t ;
typedef enum mcp_flags { ____Placeholder_mcp_flags } mcp_flags ;
struct TYPE_2__ {int ctl; } ;


 int MCI_STATUS_S ;
 int MCI_STATUS_UC ;
 int MCI_STATUS_VAL ;
 int MCP_DONTLOG ;
 int MCP_TIMESTAMP ;
 int MCP_UC ;
 int MSR_IA32_MCx_STATUS (int) ;
 int banks ;
 int barrier () ;
 TYPE_1__* mce_banks ;
 int mce_dont_log_ce ;
 int mce_gather_info (struct mce*,int *) ;
 int mce_log (struct mce*) ;
 int mce_poll_count ;
 scalar_t__ mce_quirk (int,struct mce*) ;
 int mce_rdmsrl (int ) ;
 int mce_read_aux (struct mce*,int) ;
 scalar_t__ mce_ser ;
 int mce_wrmsrl (int ,int ) ;
 int percpu_inc (int ) ;
 int sync_core () ;
 int test_bit (int,int ) ;

void machine_check_poll(enum mcp_flags flags, mce_banks_t *b)
{
 struct mce m;
 int i;

 percpu_inc(mce_poll_count);

 mce_gather_info(&m, ((void*)0));

 for (i = 0; i < banks; i++) {
  if (!mce_banks[i].ctl || !test_bit(i, *b))
   continue;

  m.misc = 0;
  m.addr = 0;
  m.bank = i;
  m.tsc = 0;

  barrier();
  m.status = mce_rdmsrl(MSR_IA32_MCx_STATUS(i));
  if (!(m.status & MCI_STATUS_VAL))
   continue;

  if (mce_quirk(i, &m))
   continue;







  if (!(flags & MCP_UC) &&
      (m.status & (mce_ser ? MCI_STATUS_S : MCI_STATUS_UC)))
   continue;

  mce_read_aux(&m, i);

  if (!(flags & MCP_TIMESTAMP))
   m.tsc = 0;




  if (!(flags & MCP_DONTLOG) && !mce_dont_log_ce)
   mce_log(&m);




  mce_wrmsrl(MSR_IA32_MCx_STATUS(i), 0);
 }






 sync_core();
}
