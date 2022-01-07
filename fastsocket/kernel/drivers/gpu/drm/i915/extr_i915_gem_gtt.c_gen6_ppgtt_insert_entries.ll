; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_ppgtt_insert_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen6_ppgtt_insert_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_hw_ppgtt = type { i32, i32* }
%struct.sg_table = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@I915_PPGTT_PT_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_hw_ppgtt*, %struct.sg_table*, i32, i32)* @gen6_ppgtt_insert_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_ppgtt_insert_entries(%struct.i915_hw_ppgtt* %0, %struct.sg_table* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.i915_hw_ppgtt*, align 8
  %6 = alloca %struct.sg_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.scatterlist*, align 8
  store %struct.i915_hw_ppgtt* %0, %struct.i915_hw_ppgtt** %5, align 8
  store %struct.sg_table* %1, %struct.sg_table** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @I915_PPGTT_PT_ENTRIES, align 4
  %20 = udiv i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @I915_PPGTT_PT_ENTRIES, align 4
  %23 = urem i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %25 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %24, i32 0, i32 1
  %26 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  store %struct.scatterlist* %26, %struct.scatterlist** %17, align 8
  store i32 0, i32* %12, align 4
  %27 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %28 = call i32 @sg_dma_len(%struct.scatterlist* %27)
  %29 = load i32, i32* @PAGE_SHIFT, align 4
  %30 = lshr i32 %28, %29
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %93, %4
  %32 = load i32, i32* %12, align 4
  %33 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %34 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %31
  %38 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %5, align 8
  %39 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @KM_USER0, align 4
  %46 = call i32* @kmap_atomic(i32 %44, i32 %45)
  store i32* %46, i32** %9, align 8
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %90, %37
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @I915_PPGTT_PT_ENTRIES, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  %53 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %54 = call i64 @sg_dma_address(%struct.scatterlist* %53)
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* @PAGE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %54, %58
  store i64 %59, i64* %16, align 8
  %60 = load %struct.i915_hw_ppgtt*, %struct.i915_hw_ppgtt** %5, align 8
  %61 = getelementptr inbounds %struct.i915_hw_ppgtt, %struct.i915_hw_ppgtt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @gen6_pte_encode(i32 %62, i64 %63, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %52
  %75 = load i32, i32* %12, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %12, align 4
  %77 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %78 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %93

82:                                               ; preds = %74
  %83 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %84 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %83)
  store %struct.scatterlist* %84, %struct.scatterlist** %17, align 8
  %85 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %86 = call i32 @sg_dma_len(%struct.scatterlist* %85)
  %87 = load i32, i32* @PAGE_SHIFT, align 4
  %88 = lshr i32 %86, %87
  store i32 %88, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %82, %52
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %48

93:                                               ; preds = %81, %48
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @KM_USER0, align 4
  %96 = call i32 @kunmap_atomic(i32* %94, i32 %95)
  store i32 0, i32* %11, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %31

99:                                               ; preds = %31
  ret void
}

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32* @kmap_atomic(i32, i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @gen6_pte_encode(i32, i64, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @kunmap_atomic(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
