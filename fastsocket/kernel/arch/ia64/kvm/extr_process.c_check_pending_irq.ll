; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_check_pending_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_process.c_check_pending_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pt_regs = type { i32 }

@NULL_VECTOR = common dso_local global i32 0, align 4
@IA64_PSR_I = common dso_local global i64 0, align 8
@IRQ_NO_MASKED = common dso_local global i32 0, align 4
@IA64_PSR_RI = common dso_local global i64 0, align 8
@IRQ_MASKED_BY_INSVC = common dso_local global i32 0, align 4
@vhpi = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_pending_irq(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_pt_regs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = call %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu* %9)
  store %struct.kvm_pt_regs* %10, %struct.kvm_pt_regs** %8, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = call i32 @highest_pending_irq(%struct.kvm_vcpu* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NULL_VECTOR, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = load i32, i32* @NULL_VECTOR, align 4
  %19 = call i32 @update_vhpi(%struct.kvm_vcpu* %17, i32 %18)
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = call i32 @highest_inservice_irq(%struct.kvm_vcpu* %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @VCPU(%struct.kvm_vcpu* %23, i64 %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @irq_masked(%struct.kvm_vcpu* %26, i32 %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @IA64_PSR_I, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %20
  %35 = load i32, i32* @IRQ_NO_MASKED, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @IA64_PSR_RI, align 8
  %41 = and i64 %39, %40
  store i64 %41, i64* %6, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @update_vhpi(%struct.kvm_vcpu* %42, i32 %43)
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.kvm_pt_regs*, %struct.kvm_pt_regs** %8, align 8
  %47 = call i32 @reflect_interruption(i32 0, i64 %45, i32 0, i32 12, %struct.kvm_pt_regs* %46)
  br label %67

48:                                               ; preds = %34, %20
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @IRQ_MASKED_BY_INSVC, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %54 = load i64, i64* @vhpi, align 8
  %55 = call i64 @VCPU(%struct.kvm_vcpu* %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %59 = load i32, i32* @NULL_VECTOR, align 4
  %60 = call i32 @update_vhpi(%struct.kvm_vcpu* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  br label %66

62:                                               ; preds = %48
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @update_vhpi(%struct.kvm_vcpu* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %61
  br label %67

67:                                               ; preds = %16, %66, %38
  ret void
}

declare dso_local %struct.kvm_pt_regs* @vcpu_regs(%struct.kvm_vcpu*) #1

declare dso_local i32 @highest_pending_irq(%struct.kvm_vcpu*) #1

declare dso_local i32 @update_vhpi(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @highest_inservice_irq(%struct.kvm_vcpu*) #1

declare dso_local i64 @VCPU(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @irq_masked(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @reflect_interruption(i32, i64, i32, i32, %struct.kvm_pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
