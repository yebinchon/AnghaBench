; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_nmi_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_nmi_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32, i64 }

@GUEST_INTERRUPTIBILITY_INFO = common dso_local global i32 0, align 4
@GUEST_INTR_STATE_NMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @vmx_set_nmi_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_set_nmi_mask(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %5, align 8
  %8 = call i32 (...) @cpu_has_virtual_nmis()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %2
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %19 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %21 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %16, %10
  br label %35

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %28 = load i32, i32* @GUEST_INTR_STATE_NMI, align 4
  %29 = call i32 @vmcs_set_bits(i32 %27, i32 %28)
  br label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @GUEST_INTERRUPTIBILITY_INFO, align 4
  %32 = load i32, i32* @GUEST_INTR_STATE_NMI, align 4
  %33 = call i32 @vmcs_clear_bits(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %22
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @cpu_has_virtual_nmis(...) #1

declare dso_local i32 @vmcs_set_bits(i32, i32) #1

declare dso_local i32 @vmcs_clear_bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
