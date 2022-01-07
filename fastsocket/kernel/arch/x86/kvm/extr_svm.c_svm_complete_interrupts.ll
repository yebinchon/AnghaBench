; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_complete_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_complete_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i64, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@HF_IRET_MASK = common dso_local global i32 0, align 4
@HF_NMI_MASK = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_VALID = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_VEC_MASK = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_TYPE_MASK = common dso_local global i32 0, align 4
@SVM_EXITINTINFO_VALID_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_svm*)* @svm_complete_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_complete_interrupts(%struct.vcpu_svm* %0) #0 {
  %2 = alloca %struct.vcpu_svm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %2, align 8
  %7 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %8 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %7, i32 0, i32 2
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %14 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @HF_IRET_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %23 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %22, i32 0, i32 1
  %24 = call i64 @kvm_rip_read(%struct.TYPE_13__* %23)
  %25 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %26 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %21
  %30 = load i32, i32* @HF_NMI_MASK, align 4
  %31 = load i32, i32* @HF_IRET_MASK, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %35 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %33
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %29, %21, %1
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %42 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 4
  %45 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %46 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %45, i32 0, i32 1
  %47 = call i32 @kvm_clear_exception_queue(%struct.TYPE_13__* %46)
  %48 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %49 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %48, i32 0, i32 1
  %50 = call i32 @kvm_clear_interrupt_queue(%struct.TYPE_13__* %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SVM_EXITINTINFO_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %40
  br label %108

56:                                               ; preds = %40
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SVM_EXITINTINFO_VEC_MASK, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @SVM_EXITINTINFO_TYPE_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  switch i32 %63, label %107 [
    i32 128, label %64
    i32 130, label %69
    i32 129, label %102
  ]

64:                                               ; preds = %56
  %65 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %66 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  br label %108

69:                                               ; preds = %56
  %70 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %71 = call i32 @is_nested(%struct.vcpu_svm* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %108

74:                                               ; preds = %69
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @kvm_exception_is_soft(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %108

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @SVM_EXITINTINFO_VALID_ERR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %86 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %6, align 4
  %91 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %92 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %91, i32 0, i32 1
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @kvm_queue_exception_e(%struct.TYPE_13__* %92, i32 %93, i32 %94)
  br label %101

96:                                               ; preds = %79
  %97 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %98 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %97, i32 0, i32 1
  %99 = load i32, i32* %3, align 4
  %100 = call i32 @kvm_queue_exception(%struct.TYPE_13__* %98, i32 %99)
  br label %101

101:                                              ; preds = %96, %84
  br label %108

102:                                              ; preds = %56
  %103 = load %struct.vcpu_svm*, %struct.vcpu_svm** %2, align 8
  %104 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %103, i32 0, i32 1
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @kvm_queue_interrupt(%struct.TYPE_13__* %104, i32 %105, i32 0)
  br label %108

107:                                              ; preds = %56
  br label %108

108:                                              ; preds = %55, %107, %102, %101, %78, %73, %64
  ret void
}

declare dso_local i64 @kvm_rip_read(%struct.TYPE_13__*) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.TYPE_13__*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.TYPE_13__*) #1

declare dso_local i32 @is_nested(%struct.vcpu_svm*) #1

declare dso_local i32 @kvm_exception_is_soft(i32) #1

declare dso_local i32 @kvm_queue_exception_e(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @kvm_queue_exception(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @kvm_queue_interrupt(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
