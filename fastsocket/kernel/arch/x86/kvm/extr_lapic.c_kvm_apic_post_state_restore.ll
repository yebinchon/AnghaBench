; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_apic_post_state_restore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_apic_post_state_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32, i32, i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MSR_IA32_APICBASE_BASE = common dso_local global i32 0, align 4
@APIC_ISR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_apic_post_state_restore(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  store %struct.kvm_lapic* %7, %struct.kvm_lapic** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MSR_IA32_APICBASE_BASE, align 4
  %13 = and i32 %11, %12
  %14 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %15 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = call i32 @kvm_apic_set_version(%struct.kvm_vcpu* %16)
  %18 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %19 = call i32 @apic_update_ppr(%struct.kvm_lapic* %18)
  %20 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %21 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @hrtimer_cancel(i32* %22)
  %24 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %25 = call i32 @update_divide_count(%struct.kvm_lapic* %24)
  %26 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %27 = call i32 @start_apic_timer(%struct.kvm_lapic* %26)
  %28 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @APIC_ISR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @count_vectors(i64 %34)
  %36 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %37 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 8
  ret void
}

declare dso_local i32 @kvm_apic_set_version(%struct.kvm_vcpu*) #1

declare dso_local i32 @apic_update_ppr(%struct.kvm_lapic*) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @update_divide_count(%struct.kvm_lapic*) #1

declare dso_local i32 @start_apic_timer(%struct.kvm_lapic*) #1

declare dso_local i32 @count_vectors(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
