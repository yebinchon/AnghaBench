; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_apic_local_deliver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_apic_local_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32 }

@APIC_LVT_MASKED = common dso_local global i32 0, align 4
@APIC_VECTOR_MASK = common dso_local global i32 0, align 4
@APIC_MODE_MASK = common dso_local global i32 0, align 4
@APIC_LVT_LEVEL_TRIGGER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_apic_local_deliver(%struct.kvm_lapic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @apic_get_reg(%struct.kvm_lapic* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %14 = call i64 @apic_hw_enabled(%struct.kvm_lapic* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @APIC_LVT_MASKED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @APIC_VECTOR_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @APIC_MODE_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @APIC_LVT_LEVEL_TRIGGER, align 4
  %30 = and i32 %28, %29
  store i32 %30, i32* %9, align 4
  %31 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @__apic_accept_irq(%struct.kvm_lapic* %31, i32 %32, i32 %33, i32 1, i32 %34)
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %21
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @apic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i64 @apic_hw_enabled(%struct.kvm_lapic*) #1

declare dso_local i32 @__apic_accept_irq(%struct.kvm_lapic*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
