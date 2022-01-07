; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_get_segment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_get_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_segment = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vmcb_seg = type { i32, i32, i32, i32 }

@SVM_SELECTOR_TYPE_MASK = common dso_local global i32 0, align 4
@SVM_SELECTOR_S_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_DPL_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_P_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_AVL_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_L_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_DB_SHIFT = common dso_local global i32 0, align 4
@SVM_SELECTOR_G_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_segment*, i32)* @svm_get_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_get_segment(%struct.kvm_vcpu* %0, %struct.kvm_segment* %1, i32 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_segment*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vmcb_seg*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_segment* %1, %struct.kvm_segment** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.vmcb_seg* @svm_seg(%struct.kvm_vcpu* %8, i32 %9)
  store %struct.vmcb_seg* %10, %struct.vmcb_seg** %7, align 8
  %11 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %12 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %15 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %14, i32 0, i32 11
  store i32 %13, i32* %15, align 4
  %16 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %17 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %22 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %25 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  %26 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %27 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SVM_SELECTOR_TYPE_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %32 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %34 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SVM_SELECTOR_S_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = and i32 %37, 1
  %39 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %40 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %42 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SVM_SELECTOR_DPL_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = and i32 %45, 3
  %47 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %48 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %50 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @SVM_SELECTOR_P_SHIFT, align 4
  %53 = ashr i32 %51, %52
  %54 = and i32 %53, 1
  %55 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %56 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %58 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SVM_SELECTOR_AVL_SHIFT, align 4
  %61 = ashr i32 %59, %60
  %62 = and i32 %61, 1
  %63 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %64 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %66 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SVM_SELECTOR_L_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = and i32 %69, 1
  %71 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %72 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 4
  %73 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %74 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SVM_SELECTOR_DB_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = and i32 %77, 1
  %79 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %80 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %79, i32 0, i32 7
  store i32 %78, i32* %80, align 4
  %81 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %82 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @SVM_SELECTOR_G_SHIFT, align 4
  %85 = ashr i32 %83, %84
  %86 = and i32 %85, 1
  %87 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %88 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %87, i32 0, i32 8
  store i32 %86, i32* %88, align 4
  %89 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %90 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %3
  %94 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %95 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br label %98

98:                                               ; preds = %93, %3
  %99 = phi i1 [ true, %3 ], [ %97, %93 ]
  %100 = zext i1 %99 to i32
  %101 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %102 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %101, i32 0, i32 9
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %6, align 4
  switch i32 %103, label %137 [
    i32 134, label %104
    i32 128, label %112
    i32 133, label %117
    i32 132, label %117
    i32 131, label %117
    i32 130, label %117
    i32 129, label %128
  ]

104:                                              ; preds = %98
  %105 = load %struct.vmcb_seg*, %struct.vmcb_seg** %7, align 8
  %106 = getelementptr inbounds %struct.vmcb_seg, %struct.vmcb_seg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 1048575
  %109 = zext i1 %108 to i32
  %110 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %111 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 4
  br label %137

112:                                              ; preds = %98
  %113 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %114 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, 2
  store i32 %116, i32* %114, align 4
  br label %137

117:                                              ; preds = %98, %98, %98, %98
  %118 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %119 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %118, i32 0, i32 9
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %127, label %122

122:                                              ; preds = %117
  %123 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %124 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %122, %117
  br label %137

128:                                              ; preds = %98
  %129 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %130 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.kvm_segment*, %struct.kvm_segment** %5, align 8
  %135 = getelementptr inbounds %struct.kvm_segment, %struct.kvm_segment* %134, i32 0, i32 7
  store i32 0, i32* %135, align 4
  br label %136

136:                                              ; preds = %133, %128
  br label %137

137:                                              ; preds = %98, %136, %127, %112, %104
  ret void
}

declare dso_local %struct.vmcb_seg* @svm_seg(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
