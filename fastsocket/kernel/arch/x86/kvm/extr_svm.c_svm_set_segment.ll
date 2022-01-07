; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_set_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_set_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.vcpu_svm = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vmcb_seg = type { i32, i32, i32, i32 }

@SVM_SELECTOR_TYPE_MASK = common dso_local global i32 0, align 4
@SVM_SELECTOR_S_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_DPL_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_P_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_AVL_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_L_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_DB_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_G_SHIFT = common dso_local global i32 0, align 4
@VCPU_SREG_CS = common dso_local global i32 0, align 4
@VMCB_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_segment*, i32)* @svm_set_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_set_segment(%struct.kvm_vcpu* %0, %struct.kvm_segment* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_segment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu_svm*, align 8
  %8 = alloca %struct.vmcb_seg*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %9)
  store %struct.vcpu_svm* %10, %struct.vcpu_svm** %7, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.vmcb_seg* @svm_seg(%struct.kvm_vcpu* %11, i32 %12)
  store %struct.vmcb_seg* %13, %struct.vmcb_seg** %8, align 8
  %14 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %14, i32 0, i32 11
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %18 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %23 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %28 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %35 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %114

36:                                               ; preds = %3
  %37 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %38 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @SVM_SELECTOR_TYPE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %43 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = load i32, i32* @SVM_SELECTOR_S_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %51 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 3
  %58 = load i32, i32* @SVM_SELECTOR_DPL_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %61 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %65 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 1
  %68 = load i32, i32* @SVM_SELECTOR_P_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %71 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %75 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, 1
  %78 = load i32, i32* @SVM_SELECTOR_AVL_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %81 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  %84 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %85 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 1
  %88 = load i32, i32* @SVM_SELECTOR_L_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %91 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %95 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, 1
  %98 = load i32, i32* @SVM_SELECTOR_DB_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %101 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %105 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 1
  %108 = load i32, i32* @SVM_SELECTOR_G_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = load %struct.vmcb_seg*, %struct.vmcb_seg** %8, align 8
  %111 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %36, %33
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @VCPU_SREG_CS, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %134

118:                                              ; preds = %114
  %119 = load %struct.vcpu_svm*, %struct.vcpu_svm** %7, align 8
  %120 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @SVM_SELECTOR_DPL_SHIFT, align 4
  %127 = ashr i32 %125, %126
  %128 = and i32 %127, 3
  %129 = load %struct.vcpu_svm*, %struct.vcpu_svm** %7, align 8
  %130 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  store i32 %128, i32* %133, align 4
  br label %134

134:                                              ; preds = %118, %114
  %135 = load %struct.vcpu_svm*, %struct.vcpu_svm** %7, align 8
  %136 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %135, i32 0, i32 0
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = load i32, i32* @VMCB_SEG, align 4
  %139 = call i32 @mark_dirty(%struct.TYPE_6__* %137, i32 %138)
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local %struct.vmcb_seg* @svm_seg(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
