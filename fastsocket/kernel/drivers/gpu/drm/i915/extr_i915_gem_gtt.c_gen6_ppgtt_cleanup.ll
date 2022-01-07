; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_ppgtt_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_ppgtt_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_hw_ppgtt = type { i32, %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_hw_ppgtt*)* @gen6_ppgtt_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_ppgtt_cleanup(%struct.i915_hw_ppgtt* %0) #0 {
  %2 = alloca %struct.i915_hw_ppgtt*, align 8
  %3 = alloca i32, align 4
  store %struct.i915_hw_ppgtt* %0, %struct.i915_hw_ppgtt** %2, align 8
  %4 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %2, align 8
  %5 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %4, i32 0, i32 2
  %6 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %5, align 8
  %7 = icmp ne %struct.i915_hw_ppgtt* %6, null
  br i1 %7, label %8, label %33

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %29, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %2, align 8
  %12 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %2, align 8
  %17 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %2, align 8
  %22 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %21, i32 0, i32 2
  %23 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %23, i64 %25
  %27 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %28 = call i32 @pci_unmap_page(i32 %20, %struct.i915_hw_ppgtt* byval(%struct.i915_hw_ppgtt) align 8 %26, i32 4096, i32 %27)
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %9

32:                                               ; preds = %9
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %2, align 8
  %35 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %34, i32 0, i32 2
  %36 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %35, align 8
  %37 = call i32 @kfree(%struct.i915_hw_ppgtt* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %52, %33
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %2, align 8
  %41 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %2, align 8
  %46 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %45, i32 0, i32 1
  %47 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %47, i64 %49
  %51 = call i32 @__free_page(%struct.i915_hw_ppgtt* byval(%struct.i915_hw_ppgtt) align 8 %50)
  br label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %2, align 8
  %57 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %56, i32 0, i32 1
  %58 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %57, align 8
  %59 = call i32 @kfree(%struct.i915_hw_ppgtt* %58)
  %60 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %2, align 8
  %61 = call i32 @kfree(%struct.i915_hw_ppgtt* %60)
  ret void
}

declare dso_local i32 @pci_unmap_page(i32, %struct.i915_hw_ppgtt* byval(%struct.i915_hw_ppgtt) align 8, i32, i32) #1

declare dso_local i32 @kfree(%struct.i915_hw_ppgtt*) #1

declare dso_local i32 @__free_page(%struct.i915_hw_ppgtt* byval(%struct.i915_hw_ppgtt) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
