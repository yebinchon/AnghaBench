; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_task_switch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_task_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vcpu_vmx = type { i32 }

@VECTORING_INFO_VALID_MASK = common dso_local global i32 0, align 4
@VECTORING_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@TASK_SWITCH_GATE = common dso_local global i32 0, align 4
@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@GUEST_INTR_STATE_NMI = common dso_local global i32 0, align 4
@VECTORING_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@IDT_VECTORING_ERROR_CODE = common dso_local global i32 0, align 4
@GUEST_DR7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_task_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_task_switch(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %12)
  store %struct.vcpu_vmx* %13, %struct.vcpu_vmx** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %15 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VECTORING_INFO_TYPE_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %25 = call i32 @vmcs_readl(i32 %24)
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  %27 = load i64, i64* %5, align 8
  %28 = trunc i64 %27 to i32
  %29 = ashr i32 %28, 30
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @TASK_SWITCH_GATE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %1
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  switch i32 %37, label %66 [
    i32 130, label %38
    i32 132, label %49
    i32 128, label %49
    i32 131, label %52
    i32 129, label %63
  ]

38:                                               ; preds = %36
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = call i32 (...) @cpu_has_virtual_nmis()
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %46 = load i32, i32* @GUEST_INTR_STATE_NMI, align 4
  %47 = call i32 @vmcs_set_bits(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  br label %67

49:                                               ; preds = %36, %36
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = call i32 @kvm_clear_interrupt_queue(%struct.kvm_vcpu* %50)
  br label %67

52:                                               ; preds = %36
  %53 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %54 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VECTORING_INFO_DELIVER_CODE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %52
  store i32 1, i32* %6, align 4
  %60 = load i32, i32* @IDT_VECTORING_ERROR_CODE, align 4
  %61 = call i32 @vmcs_read32(i32 %60)
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %59, %52
  br label %63

63:                                               ; preds = %36, %62
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = call i32 @kvm_clear_exception_queue(%struct.kvm_vcpu* %64)
  br label %67

66:                                               ; preds = %36
  br label %67

67:                                               ; preds = %66, %63, %49, %48
  br label %68

68:                                               ; preds = %67, %33, %1
  %69 = load i64, i64* %5, align 8
  store i64 %69, i64* %8, align 8
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 131
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 132
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 130
  br i1 %80, label %81, label %84

81:                                               ; preds = %78, %68
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = call i32 @skip_emulated_instruction(%struct.kvm_vcpu* %82)
  br label %84

84:                                               ; preds = %81, %78, %75, %72
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @kvm_task_switch(%struct.kvm_vcpu* %85, i64 %86, i32 %87, i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %99

93:                                               ; preds = %84
  %94 = load i32, i32* @GUEST_DR7, align 4
  %95 = load i32, i32* @GUEST_DR7, align 4
  %96 = call i32 @vmcs_readl(i32 %95)
  %97 = and i32 %96, -56
  %98 = call i32 @vmcs_writel(i32 %94, i32 %97)
  store i32 1, i32* %2, align 4
  br label %99

99:                                               ; preds = %93, %92
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_readl(i32) #1

declare dso_local i32 @cpu_has_virtual_nmis(...) #1

declare dso_local i32 @vmcs_set_bits(i32, i32) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @skip_emulated_instruction(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_task_switch(%struct.kvm_vcpu*, i64, i32, i32, i32) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
