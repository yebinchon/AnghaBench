; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_pch_pll_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_display.c_intel_pch_pll_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"No PCH PLLs on this hardware, skipping initialisation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @intel_pch_pll_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_pch_pll_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** %3, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %52

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %49, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @_PCH_DPLL(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  store i32 %23, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @_PCH_FP0(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %32, i32* %39, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @_PCH_FP1(i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %41, i32* %48, align 4
  br label %49

49:                                               ; preds = %21
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %15

52:                                               ; preds = %12, %15
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @_PCH_DPLL(i32) #1

declare dso_local i32 @_PCH_FP0(i32) #1

declare dso_local i32 @_PCH_FP1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
