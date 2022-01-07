; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_inject_nmi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_inject_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vcpu_vmx = type { i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@NMI_VECTOR = common dso_local global i32 0, align 4
@VM_ENTRY_INTR_INFO_FIELD = common dso_local global i32 0, align 4
@INTR_TYPE_SOFT_INTR = common dso_local global i32 0, align 4
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@VM_ENTRY_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@INTR_TYPE_NMI_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_inject_nmi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_inject_nmi(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %4)
  store %struct.vcpu_vmx* %5, %struct.vcpu_vmx** %3, align 8
  %6 = call i32 (...) @cpu_has_virtual_nmis()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %10 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %13
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %26 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @NMI_VECTOR, align 4
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i32 %29, i32* %33, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %35 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %34)
  %36 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %37 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 %35, i64* %39, align 8
  %40 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %41 = load i32, i32* @NMI_VECTOR, align 4
  %42 = load i32, i32* @INTR_TYPE_SOFT_INTR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @vmcs_write32(i32 %40, i32 %45)
  %47 = load i32, i32* @VM_ENTRY_INSTRUCTION_LEN, align 4
  %48 = call i32 @vmcs_write32(i32 %47, i32 1)
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %50 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %51 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %54, 1
  %56 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %49, i64 %55)
  br label %67

57:                                               ; preds = %13
  %58 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %59 = load i32, i32* @INTR_TYPE_NMI_INTR, align 4
  %60 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @NMI_VECTOR, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @vmcs_write32(i32 %58, i32 %63)
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %66 = call i32 @vmx_clear_hlt(%struct.kvm_vcpu* %65)
  br label %67

67:                                               ; preds = %57, %24
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @cpu_has_virtual_nmis(...) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vmx_clear_hlt(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
