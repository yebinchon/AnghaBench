; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_lapic_set_tpr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_lapic_set_tpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }

@APIC_TASKPRI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_lapic_set_tpr(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  store %struct.kvm_lapic* %9, %struct.kvm_lapic** %5, align 8
  %10 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %11 = icmp ne %struct.kvm_lapic* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = and i64 %15, 15
  %17 = shl i64 %16, 4
  %18 = load %struct.kvm_lapic*, %struct.kvm_lapic** %5, align 8
  %19 = load i32, i32* @APIC_TASKPRI, align 4
  %20 = call i32 @apic_get_reg(%struct.kvm_lapic* %18, i32 %19)
  %21 = and i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = or i64 %17, %22
  %24 = call i32 @apic_set_tpr(%struct.kvm_lapic* %14, i64 %23)
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @apic_set_tpr(%struct.kvm_lapic*, i64) #1

declare dso_local i32 @apic_get_reg(%struct.kvm_lapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
