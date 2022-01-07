
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4v_error_entry {int err_attrs; int err_cpu; int err_size; int err_raddr; int err_type; int err_stick; int err_handle; } ;
struct pt_regs {int dummy; } ;
typedef int atomic_t ;


 int SUN4V_ERR_ATTRS_FPU_REGISTERS ;
 int SUN4V_ERR_ATTRS_INT_REGISTERS ;
 int SUN4V_ERR_ATTRS_MEMORY ;
 int SUN4V_ERR_ATTRS_PIO ;
 int SUN4V_ERR_ATTRS_PRIV_MODE ;
 int SUN4V_ERR_ATTRS_PROCESSOR ;
 int SUN4V_ERR_ATTRS_RES_QUEUE_FULL ;
 int SUN4V_ERR_ATTRS_USER_MODE ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int printk (char*,char const*,int,...) ;
 int show_regs (struct pt_regs*) ;
 int sun4v_err_type_to_str (int ) ;
 int wmb () ;

__attribute__((used)) static void sun4v_log_error(struct pt_regs *regs, struct sun4v_error_entry *ent, int cpu, const char *pfx, atomic_t *ocnt)
{
 int cnt;

 printk("%s: Reporting on cpu %d\n", pfx, cpu);
 printk("%s: err_handle[%llx] err_stick[%llx] err_type[%08x:%s]\n",
        pfx,
        ent->err_handle, ent->err_stick,
        ent->err_type,
        sun4v_err_type_to_str(ent->err_type));
 printk("%s: err_attrs[%08x:%s %s %s %s %s %s %s %s]\n",
        pfx,
        ent->err_attrs,
        ((ent->err_attrs & SUN4V_ERR_ATTRS_PROCESSOR) ?
  "processor" : ""),
        ((ent->err_attrs & SUN4V_ERR_ATTRS_MEMORY) ?
  "memory" : ""),
        ((ent->err_attrs & SUN4V_ERR_ATTRS_PIO) ?
  "pio" : ""),
        ((ent->err_attrs & SUN4V_ERR_ATTRS_INT_REGISTERS) ?
  "integer-regs" : ""),
        ((ent->err_attrs & SUN4V_ERR_ATTRS_FPU_REGISTERS) ?
  "fpu-regs" : ""),
        ((ent->err_attrs & SUN4V_ERR_ATTRS_USER_MODE) ?
  "user" : ""),
        ((ent->err_attrs & SUN4V_ERR_ATTRS_PRIV_MODE) ?
  "privileged" : ""),
        ((ent->err_attrs & SUN4V_ERR_ATTRS_RES_QUEUE_FULL) ?
  "queue-full" : ""));
 printk("%s: err_raddr[%016llx] err_size[%u] err_cpu[%u]\n",
        pfx,
        ent->err_raddr, ent->err_size, ent->err_cpu);

 show_regs(regs);

 if ((cnt = atomic_read(ocnt)) != 0) {
  atomic_set(ocnt, 0);
  wmb();
  printk("%s: Queue overflowed %d times.\n",
         pfx, cnt);
 }
}
