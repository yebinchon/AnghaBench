; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_i915_read_blc_pwm_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_panel.c_i915_read_blc_pwm_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@BLC_PWM_PCH_CTL2 = common dso_local global i32 0, align 4
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BLC_PWM_CTL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_device*)* @i915_read_blc_pwm_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i915_read_blc_pwm_ctl(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %5 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %6 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %5, i32 0, i32 0
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  store %struct.drm_i915_private* %7, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @HAS_PCH_SPLIT(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load i32, i32* @BLC_PWM_PCH_CTL2, align 4
  %15 = call i64 @I915_READ(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %13
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 %22, i64* %25, align 8
  br label %38

26:                                               ; preds = %13
  %27 = load i64, i64* %4, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i32, i32* @BLC_PWM_PCH_CTL2, align 4
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @I915_WRITE(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %29, %26
  br label %38

38:                                               ; preds = %37, %21
  br label %90

39:                                               ; preds = %1
  %40 = load i32, i32* @BLC_PWM_CTL, align 4
  %41 = call i64 @I915_READ(i32 %40)
  store i64 %41, i64* %4, align 8
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load i64, i64* %4, align 8
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %50 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  %52 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %53 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %52)
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sge i32 %55, 4
  br i1 %56, label %57, label %63

57:                                               ; preds = %47
  %58 = load i32, i32* @BLC_PWM_CTL2, align 4
  %59 = call i64 @I915_READ(i32 %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %47
  br label %89

64:                                               ; preds = %39
  %65 = load i64, i64* %4, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %64
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %69 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %4, align 8
  %72 = load i32, i32* @BLC_PWM_CTL, align 4
  %73 = load i64, i64* %4, align 8
  %74 = call i32 @I915_WRITE(i32 %72, i64 %73)
  %75 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %76 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device* %75)
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %78, 4
  br i1 %79, label %80, label %87

80:                                               ; preds = %67
  %81 = load i32, i32* @BLC_PWM_CTL2, align 4
  %82 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %83 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @I915_WRITE(i32 %81, i64 %85)
  br label %87

87:                                               ; preds = %80, %67
  br label %88

88:                                               ; preds = %87, %64
  br label %89

89:                                               ; preds = %88, %63
  br label %90

90:                                               ; preds = %89, %38
  %91 = load i64, i64* %4, align 8
  ret i64 %91
}

declare dso_local i64 @HAS_PCH_SPLIT(i32) #1

declare dso_local i64 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i64) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
