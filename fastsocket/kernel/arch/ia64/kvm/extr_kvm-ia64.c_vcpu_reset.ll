; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_vcpu_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_vcpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @vcpu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_reset(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @local_irq_save(i64 %5)
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i32 @kvm_insert_vmm_mapping(%struct.kvm_vcpu* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @local_irq_restore(i64 %9)
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = call i32 @kvm_arch_vcpu_uninit(%struct.kvm_vcpu* %18)
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %21 = call i32 @kvm_arch_vcpu_init(%struct.kvm_vcpu* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %28

25:                                               ; preds = %14
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = call i32 @kvm_purge_vmm_mapping(%struct.kvm_vcpu* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %24, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @kvm_insert_vmm_mapping(%struct.kvm_vcpu*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @kvm_arch_vcpu_uninit(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_arch_vcpu_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_purge_vmm_mapping(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
