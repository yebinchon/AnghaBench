; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_fpu_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_fpu_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GUEST_CR0 = common dso_local global i32 0, align 4
@X86_CR0_TS = common dso_local global i32 0, align 4
@CR0_GUEST_HOST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_fpu_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_fpu_activate(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @GUEST_CR0, align 4
  %12 = load i32, i32* @X86_CR0_TS, align 4
  %13 = call i32 @vmcs_clear_bits(i32 %11, i32 %12)
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = load i32, i32* @X86_CR0_TS, align 4
  %16 = call i64 @kvm_read_cr0_bits(%struct.kvm_vcpu* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = load i32, i32* @GUEST_CR0, align 4
  %20 = load i32, i32* @X86_CR0_TS, align 4
  %21 = call i32 @vmcs_set_bits(i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %24 = call i32 @update_exception_bitmap(%struct.kvm_vcpu* %23)
  %25 = load i32, i32* @X86_CR0_TS, align 4
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @CR0_GUEST_HOST_MASK, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @vmcs_writel(i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %22, %7
  ret void
}

declare dso_local i32 @vmcs_clear_bits(i32, i32) #1

declare dso_local i64 @kvm_read_cr0_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmcs_set_bits(i32, i32) #1

declare dso_local i32 @update_exception_bitmap(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
