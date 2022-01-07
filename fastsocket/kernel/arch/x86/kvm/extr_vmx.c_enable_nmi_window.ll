; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_enable_nmi_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_enable_nmi_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@GUEST_INTR_STATE_STI = common dso_local global i32 0, align 4
@CPU_BASED_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@CPU_BASED_VIRTUAL_NMI_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @enable_nmi_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_nmi_window(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = call i32 (...) @cpu_has_virtual_nmis()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i32 @enable_irq_window(%struct.kvm_vcpu* %7)
  br label %27

9:                                                ; preds = %1
  %10 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %11 = call i32 @vmcs_read32(i32 %10)
  %12 = load i32, i32* @GUEST_INTR_STATE_STI, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %9
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = call i32 @enable_irq_window(%struct.kvm_vcpu* %16)
  br label %27

18:                                               ; preds = %9
  %19 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %20 = call i32 @vmcs_read32(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @CPU_BASED_VIRTUAL_NMI_PENDING, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @vmcs_write32(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %15, %6
  ret void
}

declare dso_local i32 @cpu_has_virtual_nmis(...) #1

declare dso_local i32 @enable_irq_window(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
