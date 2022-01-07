
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svm_cpu_data {TYPE_1__* tss_desc; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int type; } ;


 int load_TR_desc () ;
 struct svm_cpu_data* per_cpu (int ,int) ;
 int raw_smp_processor_id () ;
 struct svm_cpu_data* svm_data ;

__attribute__((used)) static void reload_tss(struct kvm_vcpu *vcpu)
{
 int cpu = raw_smp_processor_id();

 struct svm_cpu_data *svm_data = per_cpu(svm_data, cpu);
 svm_data->tss_desc->type = 9;
 load_TR_desc();
}
