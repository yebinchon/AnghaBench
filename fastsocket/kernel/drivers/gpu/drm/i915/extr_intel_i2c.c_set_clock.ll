; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_set_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gmbus = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@GPIO_CLOCK_DIR_IN = common dso_local global i32 0, align 4
@GPIO_CLOCK_DIR_MASK = common dso_local global i32 0, align 4
@GPIO_CLOCK_DIR_OUT = common dso_local global i32 0, align 4
@GPIO_CLOCK_VAL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_clock(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_gmbus*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.intel_gmbus*
  store %struct.intel_gmbus* %10, %struct.intel_gmbus** %5, align 8
  %11 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %12 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %11, i32 0, i32 1
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %12, align 8
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %6, align 8
  %14 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %15 = call i32 @get_reserved(%struct.intel_gmbus* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @GPIO_CLOCK_DIR_IN, align 4
  %20 = load i32, i32* @GPIO_CLOCK_DIR_MASK, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %8, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @GPIO_CLOCK_DIR_OUT, align 4
  %24 = load i32, i32* @GPIO_CLOCK_DIR_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GPIO_CLOCK_VAL_MASK, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %30 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @I915_WRITE_NOTRACE(i32 %31, i32 %34)
  %36 = load %struct.intel_gmbus*, %struct.intel_gmbus** %5, align 8
  %37 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @POSTING_READ(i32 %38)
  ret void
}

declare dso_local i32 @get_reserved(%struct.intel_gmbus*) #1

declare dso_local i32 @I915_WRITE_NOTRACE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
