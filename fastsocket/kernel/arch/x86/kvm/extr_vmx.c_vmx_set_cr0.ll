; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_cr0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_cr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.vcpu_vmx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@enable_unrestricted_guest = common dso_local global i64 0, align 8
@KVM_GUEST_CR0_MASK_UNRESTRICTED_GUEST = common dso_local global i64 0, align 8
@KVM_VM_CR0_ALWAYS_ON_UNRESTRICTED_GUEST = common dso_local global i64 0, align 8
@KVM_GUEST_CR0_MASK = common dso_local global i64 0, align 8
@KVM_VM_CR0_ALWAYS_ON = common dso_local global i64 0, align 8
@X86_CR0_PE = common dso_local global i64 0, align 8
@enable_ept = common dso_local global i64 0, align 8
@X86_CR0_TS = common dso_local global i64 0, align 8
@CR0_READ_SHADOW = common dso_local global i32 0, align 4
@GUEST_CR0 = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@X86_CR0_PG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64)* @vmx_set_cr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_set_cr0(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vcpu_vmx*, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %5, align 8
  %9 = load i64, i64* @enable_unrestricted_guest, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @KVM_GUEST_CR0_MASK_UNRESTRICTED_GUEST, align 8
  %14 = xor i64 %13, -1
  %15 = and i64 %12, %14
  %16 = load i64, i64* @KVM_VM_CR0_ALWAYS_ON_UNRESTRICTED_GUEST, align 8
  %17 = or i64 %15, %16
  store i64 %17, i64* %6, align 8
  br label %25

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @KVM_GUEST_CR0_MASK, align 8
  %21 = xor i64 %20, -1
  %22 = and i64 %19, %21
  %23 = load i64, i64* @KVM_VM_CR0_ALWAYS_ON, align 8
  %24 = or i64 %22, %23
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %18, %11
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %27 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @X86_CR0_PE, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %38 = call i32 @enter_pmode(%struct.kvm_vcpu* %37)
  br label %39

39:                                               ; preds = %36, %31, %25
  %40 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %41 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %39
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* @X86_CR0_PE, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = call i32 @enter_rmode(%struct.kvm_vcpu* %51)
  br label %53

53:                                               ; preds = %50, %45, %39
  %54 = load i64, i64* @enable_ept, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = call i32 @ept_update_paging_mode_cr0(i64* %6, i64 %57, %struct.kvm_vcpu* %58)
  br label %60

60:                                               ; preds = %56, %53
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = load i64, i64* @X86_CR0_TS, align 8
  %67 = load i64, i64* %6, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* @CR0_READ_SHADOW, align 4
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @vmcs_writel(i32 %70, i64 %71)
  %73 = load i32, i32* @GUEST_CR0, align 4
  %74 = load i64, i64* %6, align 8
  %75 = call i32 @vmcs_writel(i32 %73, i64 %74)
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i64 %76, i64* %79, align 8
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @enter_pmode(%struct.kvm_vcpu*) #1

declare dso_local i32 @enter_rmode(%struct.kvm_vcpu*) #1

declare dso_local i32 @ept_update_paging_mode_cr0(i64*, i64, %struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
