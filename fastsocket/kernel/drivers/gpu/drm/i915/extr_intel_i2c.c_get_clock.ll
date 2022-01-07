; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_get_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_get_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gmbus = type { i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@GPIO_CLOCK_DIR_MASK = common dso_local global i32 0, align 4
@GPIO_CLOCK_VAL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @get_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_clock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.intel_gmbus*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.intel_gmbus*
  store %struct.intel_gmbus* %7, %struct.intel_gmbus** %3, align 8
  %8 = load %struct.intel_gmbus*, %struct.intel_gmbus** %3, align 8
  %9 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %8, i32 0, i32 1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.intel_gmbus*, %struct.intel_gmbus** %3, align 8
  %12 = call i32 @get_reserved(%struct.intel_gmbus* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.intel_gmbus*, %struct.intel_gmbus** %3, align 8
  %14 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @GPIO_CLOCK_DIR_MASK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @I915_WRITE_NOTRACE(i32 %15, i32 %18)
  %20 = load %struct.intel_gmbus*, %struct.intel_gmbus** %3, align 8
  %21 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @I915_WRITE_NOTRACE(i32 %22, i32 %23)
  %25 = load %struct.intel_gmbus*, %struct.intel_gmbus** %3, align 8
  %26 = getelementptr inbounds %struct.intel_gmbus, %struct.intel_gmbus* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @I915_READ_NOTRACE(i32 %27)
  %29 = load i32, i32* @GPIO_CLOCK_VAL_IN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i32 @get_reserved(%struct.intel_gmbus*) #1

declare dso_local i32 @I915_WRITE_NOTRACE(i32, i32) #1

declare dso_local i32 @I915_READ_NOTRACE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
