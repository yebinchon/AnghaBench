; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_msr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_set_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.msr_data = type { i32, i8* }
%struct.vcpu_vmx = type { i8* }
%struct.shared_msr_entry = type { i8* }

@GUEST_SYSENTER_CS = common dso_local global i32 0, align 4
@GUEST_SYSENTER_EIP = common dso_local global i32 0, align 4
@GUEST_SYSENTER_ESP = common dso_local global i32 0, align 4
@vmcs_config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@VM_ENTRY_LOAD_IA32_PAT = common dso_local global i32 0, align 4
@GUEST_IA32_PAT = common dso_local global i32 0, align 4
@GUEST_FS_BASE = common dso_local global i32 0, align 4
@GUEST_GS_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.msr_data*)* @vmx_set_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_set_msr(%struct.kvm_vcpu* %0, %struct.msr_data* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.msr_data*, align 8
  %5 = alloca %struct.vcpu_vmx*, align 8
  %6 = alloca %struct.shared_msr_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.msr_data* %1, %struct.msr_data** %4, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %10)
  store %struct.vcpu_vmx* %11, %struct.vcpu_vmx** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.msr_data*, %struct.msr_data** %4, align 8
  %13 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.msr_data*, %struct.msr_data** %4, align 8
  %16 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %9, align 8
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %55 [
    i32 136, label %19
    i32 132, label %25
    i32 131, label %29
    i32 130, label %33
    i32 129, label %37
    i32 133, label %41
  ]

19:                                               ; preds = %2
  %20 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %21 = call i32 @vmx_load_host_state(%struct.vcpu_vmx* %20)
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load %struct.msr_data*, %struct.msr_data** %4, align 8
  %24 = call i32 @kvm_set_msr_common(%struct.kvm_vcpu* %22, %struct.msr_data* %23)
  store i32 %24, i32* %7, align 4
  br label %71

25:                                               ; preds = %2
  %26 = load i32, i32* @GUEST_SYSENTER_CS, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @vmcs_write32(i32 %26, i8* %27)
  br label %71

29:                                               ; preds = %2
  %30 = load i32, i32* @GUEST_SYSENTER_EIP, align 4
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @vmcs_writel(i32 %30, i8* %31)
  br label %71

33:                                               ; preds = %2
  %34 = load i32, i32* @GUEST_SYSENTER_ESP, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @vmcs_writel(i32 %34, i8* %35)
  br label %71

37:                                               ; preds = %2
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = load %struct.msr_data*, %struct.msr_data** %4, align 8
  %40 = call i32 @kvm_write_tsc(%struct.kvm_vcpu* %38, %struct.msr_data* %39)
  br label %71

41:                                               ; preds = %2
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @vmcs_config, i32 0, i32 0), align 4
  %43 = load i32, i32* @VM_ENTRY_LOAD_IA32_PAT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i32, i32* @GUEST_IA32_PAT, align 4
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @vmcs_write64(i32 %47, i8* %48)
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  br label %71

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %2, %54
  %56 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.shared_msr_entry* @find_msr_entry(%struct.vcpu_vmx* %56, i32 %57)
  store %struct.shared_msr_entry* %58, %struct.shared_msr_entry** %6, align 8
  %59 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %6, align 8
  %60 = icmp ne %struct.shared_msr_entry* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %63 = call i32 @vmx_load_host_state(%struct.vcpu_vmx* %62)
  %64 = load i8*, i8** %9, align 8
  %65 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %6, align 8
  %66 = getelementptr inbounds %struct.shared_msr_entry, %struct.shared_msr_entry* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %71

67:                                               ; preds = %55
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %69 = load %struct.msr_data*, %struct.msr_data** %4, align 8
  %70 = call i32 @kvm_set_msr_common(%struct.kvm_vcpu* %68, %struct.msr_data* %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %67, %61, %46, %37, %33, %29, %25, %19
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_load_host_state(%struct.vcpu_vmx*) #1

declare dso_local i32 @kvm_set_msr_common(%struct.kvm_vcpu*, %struct.msr_data*) #1

declare dso_local i32 @vmcs_write32(i32, i8*) #1

declare dso_local i32 @vmcs_writel(i32, i8*) #1

declare dso_local i32 @kvm_write_tsc(%struct.kvm_vcpu*, %struct.msr_data*) #1

declare dso_local i32 @vmcs_write64(i32, i8*) #1

declare dso_local %struct.shared_msr_entry* @find_msr_entry(%struct.vcpu_vmx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
