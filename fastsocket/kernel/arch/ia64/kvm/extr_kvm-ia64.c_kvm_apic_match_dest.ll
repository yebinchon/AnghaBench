; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_apic_match_dest.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_kvm-ia64.c_kvm_apic_match_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_apic_match_dest(%struct.kvm_vcpu* %0, %struct.kvm_lapic* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.kvm_lapic*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store %struct.kvm_lapic* %1, %struct.kvm_lapic** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %14, align 8
  store %struct.kvm_lapic* %15, %struct.kvm_lapic** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load %struct.kvm_lapic*, %struct.kvm_lapic** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @kvm_apic_match_physical_addr(%struct.kvm_lapic* %19, i32 %20)
  br label %26

22:                                               ; preds = %5
  %23 = load %struct.kvm_lapic*, %struct.kvm_lapic** %11, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @kvm_apic_match_logical_addr(%struct.kvm_lapic* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i32 [ %21, %18 ], [ %25, %22 ]
  ret i32 %27
}

declare dso_local i32 @kvm_apic_match_physical_addr(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_apic_match_logical_addr(%struct.kvm_lapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
