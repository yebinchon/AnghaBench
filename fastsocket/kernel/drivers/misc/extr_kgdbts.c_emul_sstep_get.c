
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_needs_sstep_emulation ;
 int break_helper (char*,int *,int ) ;
 int eprintk (char*) ;
 int fill_get_buf (char*) ;
 int sstep_addr ;
 int sstep_state ;
 int v2printk (char*) ;

__attribute__((used)) static void emul_sstep_get(char *arg)
{
 if (!arch_needs_sstep_emulation) {
  fill_get_buf(arg);
  return;
 }
 switch (sstep_state) {
 case 0:
  v2printk("Emulate single step\n");

  fill_get_buf("g");
  break;
 case 1:

  break_helper("Z0", ((void*)0), sstep_addr);
  break;
 case 2:

  fill_get_buf("c");
  break;
 case 3:

  break_helper("z0", ((void*)0), sstep_addr);
  break;
 default:
  eprintk("kgdbts: ERROR failed sstep get emulation\n");
 }
 sstep_state++;
}
