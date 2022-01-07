; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_inject_apic_timer_irqs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_inject_apic_timer_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@APIC_LVTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_inject_apic_timer_irqs(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  store %struct.kvm_lapic* %7, %struct.kvm_lapic** %3, align 8
  %8 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %9 = icmp ne %struct.kvm_lapic* %8, null
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %10
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %18 = load i32, i32* @APIC_LVTT, align 4
  %19 = call i64 @kvm_apic_local_deliver(%struct.kvm_lapic* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @atomic_dec(i32* %24)
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26, %10, %1
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @kvm_apic_local_deliver(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
