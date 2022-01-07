; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_put_pch_pll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_put_pch_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.intel_pch_pll* }
%struct.intel_pch_pll = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"bad PCH PLL refcount\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*)* @intel_put_pch_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_put_pch_pll(%struct.intel_crtc* %0) #0 {
  %2 = alloca %struct.intel_crtc*, align 8
  %3 = alloca %struct.intel_pch_pll*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %2, align 8
  %4 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %4, i32 0, i32 0
  %6 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %5, align 8
  store %struct.intel_pch_pll* %6, %struct.intel_pch_pll** %3, align 8
  %7 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %3, align 8
  %8 = icmp eq %struct.intel_pch_pll* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  %11 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %3, align 8
  %12 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %24

17:                                               ; preds = %10
  %18 = load %struct.intel_pch_pll*, %struct.intel_pch_pll** %3, align 8
  %19 = getelementptr inbounds %struct.intel_pch_pll, %struct.intel_pch_pll* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %2, align 8
  %23 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %22, i32 0, i32 0
  store %struct.intel_pch_pll* null, %struct.intel_pch_pll** %23, align 8
  br label %24

24:                                               ; preds = %17, %15, %9
  ret void
}

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
