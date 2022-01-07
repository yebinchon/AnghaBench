; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_extra_instdone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_irq.c_i915_get_extra_instdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@I915_NUM_INSTDONE_REG = common dso_local global i32 0, align 4
@INSTDONE = common dso_local global i32 0, align 4
@INSTDONE_I965 = common dso_local global i32 0, align 4
@INSTDONE1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported platform\0A\00", align 1
@GEN7_INSTDONE_1 = common dso_local global i32 0, align 4
@GEN7_SC_INSTDONE = common dso_local global i32 0, align 4
@GEN7_SAMPLER_INSTDONE = common dso_local global i32 0, align 4
@GEN7_ROW_INSTDONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32*)* @i915_get_extra_instdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_get_extra_instdone(%struct.drm_device* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* @I915_NUM_INSTDONE_REG, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = trunc i64 %12 to i32
  %14 = call i32 @memset(i32* %9, i32 0, i32 %13)
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %33 [
    i32 2, label %19
    i32 3, label %19
    i32 4, label %24
    i32 5, label %24
    i32 6, label %24
    i32 7, label %35
  ]

19:                                               ; preds = %2, %2
  %20 = load i32, i32* @INSTDONE, align 4
  %21 = call i32 @I915_READ(i32 %20)
  %22 = load i32*, i32** %4, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  store i32 %21, i32* %23, align 4
  br label %52

24:                                               ; preds = %2, %2, %2
  %25 = load i32, i32* @INSTDONE_I965, align 4
  %26 = call i32 @I915_READ(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @INSTDONE1, align 4
  %30 = call i32 @I915_READ(i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 %30, i32* %32, align 4
  br label %52

33:                                               ; preds = %2
  %34 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %2, %33
  %36 = load i32, i32* @GEN7_INSTDONE_1, align 4
  %37 = call i32 @I915_READ(i32 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @GEN7_SC_INSTDONE, align 4
  %41 = call i32 @I915_READ(i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @GEN7_SAMPLER_INSTDONE, align 4
  %45 = call i32 @I915_READ(i32 %44)
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @GEN7_ROW_INSTDONE, align 4
  %49 = call i32 @I915_READ(i32 %48)
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %35, %24, %19
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
