; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_update_db_intercept.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_update_db_intercept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.vcpu_svm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DB_VECTOR = common dso_local global i32 0, align 4
@BP_VECTOR = common dso_local global i32 0, align 4
@KVM_GUESTDBG_ENABLE = common dso_local global i32 0, align 4
@KVM_GUESTDBG_SINGLESTEP = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_HW_BP = common dso_local global i32 0, align 4
@KVM_GUESTDBG_USE_SW_BP = common dso_local global i32 0, align 4
@VMCB_INTERCEPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @update_db_intercept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_db_intercept(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %4)
  store %struct.vcpu_svm* %5, %struct.vcpu_svm** %3, align 8
  %6 = load i32, i32* @DB_VECTOR, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @BP_VECTOR, align 4
  %9 = shl i32 1, %8
  %10 = or i32 %7, %9
  %11 = xor i32 %10, -1
  %12 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %13 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %11
  store i32 %18, i32* %16, align 4
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %1
  %25 = load i32, i32* @DB_VECTOR, align 4
  %26 = shl i32 1, %25
  %27 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %28 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %26
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %24, %1
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @KVM_GUESTDBG_ENABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %34
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @KVM_GUESTDBG_SINGLESTEP, align 4
  %46 = load i32, i32* @KVM_GUESTDBG_USE_HW_BP, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load i32, i32* @DB_VECTOR, align 4
  %52 = shl i32 1, %51
  %53 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %54 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %52
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %50, %41
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @KVM_GUESTDBG_USE_SW_BP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load i32, i32* @BP_VECTOR, align 4
  %69 = shl i32 1, %68
  %70 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %71 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %69
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %67, %60
  br label %81

78:                                               ; preds = %34
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %80 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %77
  %82 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %83 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* @VMCB_INTERCEPTS, align 4
  %86 = call i32 @mark_dirty(%struct.TYPE_6__* %84, i32 %85)
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
