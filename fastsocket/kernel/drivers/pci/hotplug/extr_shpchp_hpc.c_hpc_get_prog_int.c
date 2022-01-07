
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct slot {struct controller* ctrl; } ;
struct controller {int dummy; } ;


 int PROG_INTERFACE ;
 int shpc_readb (struct controller*,int ) ;

__attribute__((used)) static int hpc_get_prog_int(struct slot *slot, u8 *prog_int)
{
 struct controller *ctrl = slot->ctrl;

 *prog_int = shpc_readb(ctrl, PROG_INTERFACE);

 return 0;
}
