; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_inject_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_inject_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_12__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }

@VM_ENTRY_INTR_INFO_FIELD = common dso_local global i32 0, align 4
@INTR_TYPE_SOFT_INTR = common dso_local global i32 0, align 4
@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@VM_ENTRY_INSTRUCTION_LEN = common dso_local global i32 0, align 4
@INTR_TYPE_EXT_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_inject_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_inject_irq(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %3, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @trace_kvm_inj_virq(i32 %13)
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %21 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %1
  %26 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %27 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %32 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i32 %30, i32* %34, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = call i64 @kvm_rip_read(%struct.kvm_vcpu* %35)
  %37 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %38 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  store i64 %36, i64* %40, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %25
  %48 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %49 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %55 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %53
  store i64 %59, i64* %57, align 8
  br label %60

60:                                               ; preds = %47, %25
  %61 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @INTR_TYPE_SOFT_INTR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @vmcs_write32(i32 %61, i32 %66)
  %68 = load i32, i32* @VM_ENTRY_INSTRUCTION_LEN, align 4
  %69 = call i32 @vmcs_write32(i32 %68, i32 1)
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %71 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %72 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, 1
  %77 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %70, i64 %76)
  br label %109

78:                                               ; preds = %1
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %81 = or i32 %79, %80
  store i32 %81, i32* %4, align 4
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %78
  %89 = load i32, i32* @INTR_TYPE_SOFT_INTR, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* @VM_ENTRY_INSTRUCTION_LEN, align 4
  %93 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %94 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @vmcs_write32(i32 %92, i32 %97)
  br label %103

99:                                               ; preds = %78
  %100 = load i32, i32* @INTR_TYPE_EXT_INTR, align 4
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %88
  %104 = load i32, i32* @VM_ENTRY_INTR_INFO_FIELD, align 4
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @vmcs_write32(i32 %104, i32 %105)
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %108 = call i32 @vmx_clear_hlt(%struct.kvm_vcpu* %107)
  br label %109

109:                                              ; preds = %103, %60
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_inj_virq(i32) #1

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
