; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_x2apic_msr_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_lapic.c_kvm_x2apic_msr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }

@APIC_BASE_MSR = common dso_local global i32 0, align 4
@APIC_ICR2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_x2apic_msr_read(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_lapic*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.kvm_lapic*, %struct.kvm_lapic** %14, align 8
  store %struct.kvm_lapic* %15, %struct.kvm_lapic** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @APIC_BASE_MSR, align 4
  %18 = sub nsw i32 %16, %17
  %19 = shl i32 %18, 4
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @irqchip_in_kernel(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %27 = call i32 @apic_x2apic_mode(%struct.kvm_lapic* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25, %3
  store i32 1, i32* %4, align 4
  br label %49

30:                                               ; preds = %25
  %31 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @apic_reg_read(%struct.kvm_lapic* %31, i32 %32, i32 4, i32* %10)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %49

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 2096
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  %41 = load i32, i32* @APIC_ICR2, align 4
  %42 = call i64 @apic_reg_read(%struct.kvm_lapic* %40, i32 %41, i32 4, i32* %11)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 %44, 32
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %45, %46
  %48 = load i32*, i32** %7, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %35, %29
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @irqchip_in_kernel(i32) #1

declare dso_local i32 @apic_x2apic_mode(%struct.kvm_lapic*) #1

declare dso_local i64 @apic_reg_read(%struct.kvm_lapic*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
