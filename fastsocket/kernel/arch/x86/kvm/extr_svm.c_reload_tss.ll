; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_reload_tss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_reload_tss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svm_cpu_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.kvm_vcpu = type { i32 }

@svm_data = common dso_local global %struct.svm_cpu_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @reload_tss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reload_tss(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.svm_cpu_data*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = call i32 (...) @raw_smp_processor_id()
  store i32 %5, i32* %3, align 4
  %6 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %7 = ptrtoint %struct.svm_cpu_data* %6 to i32
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.svm_cpu_data* @per_cpu(i32 %7, i32 %8)
  store %struct.svm_cpu_data* %9, %struct.svm_cpu_data** %4, align 8
  %10 = load %struct.svm_cpu_data*, %struct.svm_cpu_data** %4, align 8
  %11 = getelementptr inbounds %struct.svm_cpu_data, %struct.svm_cpu_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 9, i32* %13, align 4
  %14 = call i32 (...) @load_TR_desc()
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local %struct.svm_cpu_data* @per_cpu(i32, i32) #1

declare dso_local i32 @load_TR_desc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
