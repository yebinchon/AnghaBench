; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_apic_set_eoi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_apic_set_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@APIC_SPIV = common dso_local global i32 0, align 4
@APIC_SPIV_DIRECTED_EOI = common dso_local global i32 0, align 4
@APIC_TMR = common dso_local global i64 0, align 8
@IOAPIC_LEVEL_TRIG = common dso_local global i32 0, align 4
@IOAPIC_EDGE_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*)* @apic_set_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apic_set_eoi(%struct.kvm_lapic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  %6 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %7 = call i32 @apic_find_highest_isr(%struct.kvm_lapic* %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @trace_kvm_eoi(%struct.kvm_lapic* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %18 = call i32 @apic_clear_isr(i32 %16, %struct.kvm_lapic* %17)
  %19 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %20 = call i32 @apic_update_ppr(%struct.kvm_lapic* %19)
  %21 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %22 = load i32, i32* @APIC_SPIV, align 4
  %23 = call i32 @apic_get_reg(%struct.kvm_lapic* %21, i32 %22)
  %24 = load i32, i32* @APIC_SPIV_DIRECTED_EOI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %58, label %27

27:                                               ; preds = %15
  %28 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @kvm_ioapic_handles_vector(i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @APIC_TMR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @apic_test_vector(i32 %37, i64 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @IOAPIC_LEVEL_TRIG, align 4
  store i32 %46, i32* %5, align 4
  br label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @IOAPIC_EDGE_TRIG, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @kvm_ioapic_update_eoi(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %27, %15
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %13
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @apic_find_highest_isr(%struct.kvm_lapic*) #1

declare dso_local i32 @trace_kvm_eoi(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @apic_clear_isr(i32, %struct.kvm_lapic*) #1

declare dso_local i32 @apic_update_ppr(%struct.kvm_lapic*) #1

declare dso_local i32 @apic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i64 @kvm_ioapic_handles_vector(i32, i32) #1

declare dso_local i64 @apic_test_vector(i32, i64) #1

declare dso_local i32 @kvm_ioapic_update_eoi(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
