; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_apic_set_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_apic_set_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }
%struct.kvm_lapic_irq = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_apic_set_irq(%struct.kvm_vcpu* %0, %struct.kvm_lapic_irq* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_lapic_irq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_lapic*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_lapic_irq* %1, %struct.kvm_lapic_irq** %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.kvm_lapic*, %struct.kvm_lapic** %9, align 8
  store %struct.kvm_lapic* %10, %struct.kvm_lapic** %6, align 8
  %11 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %12 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %4, align 8
  %22 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__apic_accept_irq(%struct.kvm_lapic* %11, i32 %14, i32 %17, i32 %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.kvm_lapic*, %struct.kvm_lapic** %6, align 8
  %26 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kvm_vcpu_is_bsp(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load %struct.kvm_lapic_irq*, %struct.kvm_lapic_irq** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %30, %2
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @__apic_accept_irq(%struct.kvm_lapic*, i32, i32, i32, i32) #1

declare dso_local i32 @kvm_vcpu_is_bsp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
