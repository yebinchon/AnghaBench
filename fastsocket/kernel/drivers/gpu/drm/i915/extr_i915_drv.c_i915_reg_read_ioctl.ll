; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i915_reg_read_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_i915_drv.c_i915_reg_read_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.register_whitelist = type { i64, i32, i32 }
%struct.drm_device = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_i915_reg_read = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }

@whitelist = common dso_local global %struct.register_whitelist* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_reg_read_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca %struct.drm_i915_reg_read*, align 8
  %10 = alloca %struct.register_whitelist*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %13, align 8
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.drm_i915_reg_read*
  store %struct.drm_i915_reg_read* %16, %struct.drm_i915_reg_read** %9, align 8
  %17 = load %struct.register_whitelist*, %struct.register_whitelist** @whitelist, align 8
  store %struct.register_whitelist* %17, %struct.register_whitelist** %10, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %44, %3
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.register_whitelist*, %struct.register_whitelist** @whitelist, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.register_whitelist* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %18
  %24 = load %struct.register_whitelist*, %struct.register_whitelist** %10, align 8
  %25 = getelementptr inbounds %struct.register_whitelist, %struct.register_whitelist* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.drm_i915_reg_read*, %struct.drm_i915_reg_read** %9, align 8
  %28 = getelementptr inbounds %struct.drm_i915_reg_read, %struct.drm_i915_reg_read* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = call %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 1, %35
  %37 = load %struct.register_whitelist*, %struct.register_whitelist** %10, align 8
  %38 = getelementptr inbounds %struct.register_whitelist, %struct.register_whitelist* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %49

43:                                               ; preds = %31, %23
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %11, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %11, align 4
  %47 = load %struct.register_whitelist*, %struct.register_whitelist** %10, align 8
  %48 = getelementptr inbounds %struct.register_whitelist, %struct.register_whitelist* %47, i32 1
  store %struct.register_whitelist* %48, %struct.register_whitelist** %10, align 8
  br label %18

49:                                               ; preds = %42, %18
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.register_whitelist*, %struct.register_whitelist** @whitelist, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.register_whitelist* %51)
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %94

57:                                               ; preds = %49
  %58 = load %struct.register_whitelist*, %struct.register_whitelist** %10, align 8
  %59 = getelementptr inbounds %struct.register_whitelist, %struct.register_whitelist* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %89 [
    i32 8, label %61
    i32 4, label %68
    i32 2, label %75
    i32 1, label %82
  ]

61:                                               ; preds = %57
  %62 = load %struct.drm_i915_reg_read*, %struct.drm_i915_reg_read** %9, align 8
  %63 = getelementptr inbounds %struct.drm_i915_reg_read, %struct.drm_i915_reg_read* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @I915_READ64(i64 %64)
  %66 = load %struct.drm_i915_reg_read*, %struct.drm_i915_reg_read** %9, align 8
  %67 = getelementptr inbounds %struct.drm_i915_reg_read, %struct.drm_i915_reg_read* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  br label %93

68:                                               ; preds = %57
  %69 = load %struct.drm_i915_reg_read*, %struct.drm_i915_reg_read** %9, align 8
  %70 = getelementptr inbounds %struct.drm_i915_reg_read, %struct.drm_i915_reg_read* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @I915_READ(i64 %71)
  %73 = load %struct.drm_i915_reg_read*, %struct.drm_i915_reg_read** %9, align 8
  %74 = getelementptr inbounds %struct.drm_i915_reg_read, %struct.drm_i915_reg_read* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %93

75:                                               ; preds = %57
  %76 = load %struct.drm_i915_reg_read*, %struct.drm_i915_reg_read** %9, align 8
  %77 = getelementptr inbounds %struct.drm_i915_reg_read, %struct.drm_i915_reg_read* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @I915_READ16(i64 %78)
  %80 = load %struct.drm_i915_reg_read*, %struct.drm_i915_reg_read** %9, align 8
  %81 = getelementptr inbounds %struct.drm_i915_reg_read, %struct.drm_i915_reg_read* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  br label %93

82:                                               ; preds = %57
  %83 = load %struct.drm_i915_reg_read*, %struct.drm_i915_reg_read** %9, align 8
  %84 = getelementptr inbounds %struct.drm_i915_reg_read, %struct.drm_i915_reg_read* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @I915_READ8(i64 %85)
  %87 = load %struct.drm_i915_reg_read*, %struct.drm_i915_reg_read** %9, align 8
  %88 = getelementptr inbounds %struct.drm_i915_reg_read, %struct.drm_i915_reg_read* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  br label %93

89:                                               ; preds = %57
  %90 = call i32 @WARN_ON(i32 1)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %82, %75, %68, %61
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %89, %54
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @ARRAY_SIZE(%struct.register_whitelist*) #1

declare dso_local %struct.TYPE_2__* @INTEL_INFO(%struct.drm_device*) #1

declare dso_local i32 @I915_READ64(i64) #1

declare dso_local i32 @I915_READ(i64) #1

declare dso_local i32 @I915_READ16(i64) #1

declare dso_local i32 @I915_READ8(i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
