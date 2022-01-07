; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen7_get_stolen_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_gen7_get_stolen_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gen7_get_stolen_size.stolen_decoder = internal constant [14 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 32, i32 48, i32 64, i32 128, i32 256, i32 96, i32 160, i32 224, i32 352], align 16
@IVB_GMCH_GMS_SHIFT = common dso_local global i64 0, align 8
@IVB_GMCH_GMS_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @gen7_get_stolen_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gen7_get_stolen_size(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* @IVB_GMCH_GMS_SHIFT, align 8
  %4 = load i64, i64* %2, align 8
  %5 = lshr i64 %4, %3
  store i64 %5, i64* %2, align 8
  %6 = load i64, i64* @IVB_GMCH_GMS_MASK, align 8
  %7 = load i64, i64* %2, align 8
  %8 = and i64 %7, %6
  store i64 %8, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds [14 x i32], [14 x i32]* @gen7_get_stolen_size.stolen_decoder, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = shl i32 %11, 20
  %13 = sext i32 %12 to i64
  ret i64 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
