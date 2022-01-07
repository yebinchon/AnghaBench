
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vcpu_svm {scalar_t__ asid_generation; } ;
struct svm_cpu_data {scalar_t__ asid_generation; } ;


 int new_asid (struct vcpu_svm*,struct svm_cpu_data*) ;
 struct svm_cpu_data* per_cpu (int ,int) ;
 int raw_smp_processor_id () ;
 struct svm_cpu_data* svm_data ;

__attribute__((used)) static void pre_svm_run(struct vcpu_svm *svm)
{
 int cpu = raw_smp_processor_id();

 struct svm_cpu_data *svm_data = per_cpu(svm_data, cpu);


 if (svm->asid_generation != svm_data->asid_generation)
  new_asid(svm, svm_data);
}
