; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_switch_mm_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_vcpu.c_switch_mm_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ia64_psr = type { i32 }

@GUEST_IN_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_mm_mode(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ia64_psr, align 4
  %5 = alloca %struct.ia64_psr, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %4, i32 0, i32 0
  store i32 %1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  %10 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %4, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.ia64_psr, %struct.ia64_psr* %5, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mm_switch_action(i32 %11, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %37 [
    i32 128, label %16
    i32 130, label %25
    i32 129, label %35
    i32 131, label %36
  ]

16:                                               ; preds = %3
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %18 = call i32 @switch_to_physical_rid(%struct.kvm_vcpu* %17)
  %19 = load i32, i32* @GUEST_IN_PHY, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %27 = call i32 @switch_to_virtual_rid(%struct.kvm_vcpu* %26)
  %28 = load i32, i32* @GUEST_IN_PHY, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 4
  br label %38

35:                                               ; preds = %3
  br label %38

36:                                               ; preds = %3
  br label %38

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %36, %35, %25, %16
  ret void
}

declare dso_local i32 @mm_switch_action(i32, i32) #1

declare dso_local i32 @switch_to_physical_rid(%struct.kvm_vcpu*) #1

declare dso_local i32 @switch_to_virtual_rid(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
