; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_invalid_guest_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_invalid_guest_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@EMULATE_DO_MMIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"emulation failure\00", align 1
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @handle_invalid_guest_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_invalid_guest_state(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %5)
  store %struct.vcpu_vmx* %6, %struct.vcpu_vmx** %3, align 8
  %7 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %7, i32* %4, align 4
  %8 = call i32 (...) @local_irq_enable()
  %9 = call i32 (...) @preempt_enable()
  br label %10

10:                                               ; preds = %39, %1
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = call i32 @guest_state_valid(%struct.kvm_vcpu* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %40

15:                                               ; preds = %10
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = call i32 @emulate_instruction(%struct.kvm_vcpu* %16, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EMULATE_DO_MMIO, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %40

22:                                               ; preds = %15
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EMULATE_DONE, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %28 = call i32 @kvm_report_emulation_failure(%struct.kvm_vcpu* %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %40

29:                                               ; preds = %22
  %30 = load i32, i32* @current, align 4
  %31 = call i64 @signal_pending(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %40

34:                                               ; preds = %29
  %35 = call i64 (...) @need_resched()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @schedule()
  br label %39

39:                                               ; preds = %37, %34
  br label %10

40:                                               ; preds = %33, %26, %21, %10
  %41 = call i32 (...) @preempt_disable()
  %42 = call i32 (...) @local_irq_disable()
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @guest_state_valid(%struct.kvm_vcpu*) #1

declare dso_local i32 @emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_report_emulation_failure(%struct.kvm_vcpu*, i8*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_irq_disable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
