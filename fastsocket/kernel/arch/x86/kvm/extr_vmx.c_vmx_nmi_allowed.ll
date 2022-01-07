; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_nmi_allowed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_nmi_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.TYPE_2__ = type { i64 }

@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@GUEST_INTR_STATE_MOV_SS = common dso_local global i32 0, align 4
@GUEST_INTR_STATE_STI = common dso_local global i32 0, align 4
@GUEST_INTR_STATE_NMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @vmx_nmi_allowed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_nmi_allowed(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %4 = call i32 (...) @cpu_has_virtual_nmis()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.TYPE_2__* @to_vmx(%struct.kvm_vcpu* %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %25

13:                                               ; preds = %6, %1
  %14 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %15 = call i32 @vmcs_read32(i32 %14)
  %16 = load i32, i32* @GUEST_INTR_STATE_MOV_SS, align 4
  %17 = load i32, i32* @GUEST_INTR_STATE_STI, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GUEST_INTR_STATE_NMI, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %15, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %13, %12
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @cpu_has_virtual_nmis(...) #1

declare dso_local %struct.TYPE_2__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_read32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
