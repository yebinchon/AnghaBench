
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int signal_exits; int itlb_virt_miss_exits; int itlb_real_miss_exits; int mmio_exits; int dtlb_virt_miss_exits; int dtlb_real_miss_exits; int syscall_exits; int isi_exits; int dsi_exits; int dcr_exits; int emulated_inst_exits; int dec_exits; int ext_intr_exits; } ;
struct kvm_vcpu {TYPE_1__ stat; } ;
__attribute__((used)) static inline void kvmppc_account_exit_stat(struct kvm_vcpu *vcpu, int type)
{






 switch (type) {
 case 134:
  vcpu->stat.ext_intr_exits++;
  break;
 case 139:
  vcpu->stat.dec_exits++;
  break;
 case 135:
  vcpu->stat.emulated_inst_exits++;
  break;
 case 140:
  vcpu->stat.dcr_exits++;
  break;
 case 138:
  vcpu->stat.dsi_exits++;
  break;
 case 133:
  vcpu->stat.isi_exits++;
  break;
 case 128:
  vcpu->stat.syscall_exits++;
  break;
 case 137:
  vcpu->stat.dtlb_real_miss_exits++;
  break;
 case 136:
  vcpu->stat.dtlb_virt_miss_exits++;
  break;
 case 130:
  vcpu->stat.mmio_exits++;
  break;
 case 132:
  vcpu->stat.itlb_real_miss_exits++;
  break;
 case 131:
  vcpu->stat.itlb_virt_miss_exits++;
  break;
 case 129:
  vcpu->stat.signal_exits++;
  break;
 }
}
