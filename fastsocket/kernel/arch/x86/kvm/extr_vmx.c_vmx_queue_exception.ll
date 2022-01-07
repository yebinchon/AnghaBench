; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_queue_exception.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_queue_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }

@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@VM_ENTRY_EXCEPTION_ERROR_CODE = common dso_local global i32 0, align 4
@INTR_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@INTR_TYPE_SOFT_INTR = common dso_local global i32 0, align 4
@VM_ENTRY_INTR_INFO_FIELD = common dso_local global i32 0, align 4
@VM_ENTRY_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@INTR_TYPE_SOFT_EXCEPTION = common dso_local global i32 0, align 4
@INTR_TYPE_HARD_EXCEPTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32, i32)* @vmx_queue_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_queue_exception(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vcpu_vmx*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %11)
  store %struct.vcpu_vmx* %12, %struct.vcpu_vmx** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* @VM_ENTRY_EXCEPTION_ERROR_CODE, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @vmcs_write32(i32 %19, i32 %20)
  %22 = load i32, i32* @INTR_INFO_DELIVER_CODE_MASK, align 4
  %23 = load i32, i32* %10, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %18, %4
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %27 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %25
  %32 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %33 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %38 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %41)
  %43 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %44 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i64 %42, i64* %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @kvm_exception_is_soft(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %31
  %51 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %52 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %58 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, %56
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %50, %31
  %64 = load i32, i32* @INTR_TYPE_SOFT_INTR, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @vmcs_write32(i32 %67, i32 %68)
  %70 = load i32, i32* @VM_ENTRY_INSTRUCTION_LEN, align 4
  %71 = call i32 @vmcs_write32(i32 %70, i32 1)
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %73 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %74 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %72, i64 %78)
  br label %105

80:                                               ; preds = %25
  %81 = load i32, i32* %6, align 4
  %82 = call i64 @kvm_exception_is_soft(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load i32, i32* @VM_ENTRY_INSTRUCTION_LEN, align 4
  %86 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %9, align 8
  %87 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @vmcs_write32(i32 %85, i32 %90)
  %92 = load i32, i32* @INTR_TYPE_SOFT_EXCEPTION, align 4
  %93 = load i32, i32* %10, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %10, align 4
  br label %99

95:                                               ; preds = %80
  %96 = load i32, i32* @INTR_TYPE_HARD_EXCEPTION, align 4
  %97 = load i32, i32* %10, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %95, %84
  %100 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @vmcs_write32(i32 %100, i32 %101)
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %104 = call i32 @vmx_clear_hlt(%struct.kvm_vcpu* %103)
  br label %105

105:                                              ; preds = %99, %63
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_write32(i32, i32) #1

declare dso_local i64 @kvm_rip_read(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_exception_is_soft(i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @vmx_clear_hlt(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
