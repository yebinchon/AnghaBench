; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_pre_svm_run.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_pre_svm_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_cpu_data = type { i64 }
%struct.vcpu_svm = type { i64 }

@svm_data = common dso_local global %struct.svm_cpu_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*)* @pre_svm_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pre_svm_run(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.svm_cpu_data*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %5 = call i32 (...) @raw_smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %7 = ptrtoint %struct.svm_cpu_data* %6 to i32
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.svm_cpu_data* @per_cpu(i32 %7, i32 %8)
  store %struct.svm_cpu_data* %9, %struct.svm_cpu_data** %4, align 8
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %14 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %19 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %20 = call i32 @new_asid(%struct.vcpu_svm* %18, %struct.svm_cpu_data* %19)
  br label %21

21:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.svm_cpu_data* @per_cpu(i32, i32) #1

declare dso_local i32 @new_asid(%struct.vcpu_svm*, %struct.svm_cpu_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
