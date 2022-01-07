; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_rmode_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_handle_rmode_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EMULATE_DONE = common dso_local global i64 0, align 8
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@VM_EXIT_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_SW_BP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i64)* @handle_rmode_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_rmode_exception(%struct.kvm_vcpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 132
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 129
  br i1 %12, label %13, label %23

13:                                               ; preds = %10, %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %18 = call i64 @emulate_instruction(%struct.kvm_vcpu* %17, i32 0)
  %19 = load i64, i64* @EMULATE_DONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %60

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %13, %10
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %59 [
    i32 135, label %25
    i32 137, label %39
    i32 134, label %55
    i32 130, label %55
    i32 136, label %55
    i32 128, label %55
    i32 133, label %55
    i32 129, label %55
    i32 132, label %55
    i32 131, label %55
  ]

25:                                               ; preds = %23
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %30 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %60

35:                                               ; preds = %25
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %36, i32 %37)
  store i32 1, i32* %4, align 4
  br label %60

39:                                               ; preds = %23
  %40 = load i32, i32* @VM_EXIT_INSTRUCTION_LEN, align 4
  %41 = call i32 @vmcs_read32(i32 %40)
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %43 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @KVM_GUESTDBG_USE_SW_BP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %60

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %23, %23, %23, %23, %23, %23, %23, %23, %54
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %56, i32 %57)
  store i32 1, i32* %4, align 4
  br label %60

59:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %55, %53, %35, %34, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @emulate_instruction(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
