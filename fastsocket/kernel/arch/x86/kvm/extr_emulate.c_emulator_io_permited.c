
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct x86_emulate_ops {int dummy; } ;
struct x86_emulate_ctxt {int dummy; } ;


 scalar_t__ emulator_bad_iopl (struct x86_emulate_ctxt*) ;
 int emulator_io_port_access_allowed (struct x86_emulate_ctxt*,struct x86_emulate_ops*,int ,int ) ;

__attribute__((used)) static bool emulator_io_permited(struct x86_emulate_ctxt *ctxt,
     struct x86_emulate_ops *ops,
     u16 port, u16 len)
{
 if (emulator_bad_iopl(ctxt))
  if (!emulator_io_port_access_allowed(ctxt, ops, port, len))
   return 0;
 return 1;
}
