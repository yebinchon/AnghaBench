; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_ept_update_paging_mode_cr0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_ept_update_paging_mode_cr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@X86_CR0_PG = common dso_local global i64 0, align 8
@CPU_BASED_VM_EXEC_CONTROL = common dso_local global i32 0, align 4
@CPU_BASED_CR3_LOAD_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR3_STORE_EXITING = common dso_local global i32 0, align 4
@X86_CR0_WP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, %struct.kvm_vcpu*)* @ept_update_paging_mode_cr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ept_update_paging_mode_cr0(i64* %0, i64 %1, %struct.kvm_vcpu* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @X86_CR0_PG, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %13 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %14 = call i32 @vmcs_read32(i32 %13)
  %15 = load i32, i32* @CPU_BASED_CR3_LOAD_EXITING, align 4
  %16 = load i32, i32* @CPU_BASED_CR3_STORE_EXITING, align 4
  %17 = or i32 %15, %16
  %18 = or i32 %14, %17
  %19 = call i32 @vmcs_write32(i32 %12, i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %26 = call i32 @kvm_read_cr4(%struct.kvm_vcpu* %25)
  %27 = call i32 @vmx_set_cr4(%struct.kvm_vcpu* %24, i32 %26)
  br label %51

28:                                               ; preds = %3
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %30 = call i32 @is_paging(%struct.kvm_vcpu* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %50, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %34 = load i32, i32* @CPU_BASED_VM_EXEC_CONTROL, align 4
  %35 = call i32 @vmcs_read32(i32 %34)
  %36 = load i32, i32* @CPU_BASED_CR3_LOAD_EXITING, align 4
  %37 = load i32, i32* @CPU_BASED_CR3_STORE_EXITING, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %35, %39
  %41 = call i32 @vmcs_write32(i32 %33, i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %48 = call i32 @kvm_read_cr4(%struct.kvm_vcpu* %47)
  %49 = call i32 @vmx_set_cr4(%struct.kvm_vcpu* %46, i32 %48)
  br label %50

50:                                               ; preds = %32, %28
  br label %51

51:                                               ; preds = %50, %11
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @X86_CR0_WP, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* @X86_CR0_WP, align 8
  %58 = xor i64 %57, -1
  %59 = load i64*, i64** %4, align 8
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %60, %58
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %56, %51
  ret void
}

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i32 @vmx_set_cr4(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_read_cr4(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
