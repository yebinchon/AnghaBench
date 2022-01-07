; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_check_overlay_possible_on_crtc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_check_overlay_possible_on_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_overlay = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.intel_crtc = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIPECONF_DOUBLE_WIDE = common dso_local global i32 0, align 4
@PIPECONF_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_overlay*, %struct.intel_crtc*)* @check_overlay_possible_on_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_overlay_possible_on_crtc(%struct.intel_overlay* %0, %struct.intel_crtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_overlay*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  %6 = alloca i32*, align 8
  store %struct.intel_overlay* %0, %struct.intel_overlay** %4, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %5, align 8
  %7 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %8 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %13 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.intel_overlay*, %struct.intel_overlay** %4, align 8
  %21 = getelementptr inbounds %struct.intel_overlay, %struct.intel_overlay* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = call %struct.TYPE_3__* @INTEL_INFO(%struct.TYPE_4__* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %29 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @PIPECONF(i32 %30)
  %32 = call i32 @I915_READ(i32 %31)
  %33 = load i32, i32* @PIPECONF_DOUBLE_WIDE, align 4
  %34 = load i32, i32* @PIPECONF_ENABLE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @PIPECONF_ENABLE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %43

42:                                               ; preds = %27, %19
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %39, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.TYPE_3__* @INTEL_INFO(%struct.TYPE_4__*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PIPECONF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
