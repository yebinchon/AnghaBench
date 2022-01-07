; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_xfer_index_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_xfer_index_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i2c_msg = type { i32, i32* }

@GMBUS_2BYTE_INDEX_EN = common dso_local global i32 0, align 4
@GMBUS_CYCLE_INDEX = common dso_local global i32 0, align 4
@GMBUS_SLAVE_INDEX_SHIFT = common dso_local global i32 0, align 4
@GMBUS5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i2c_msg*)* @gmbus_xfer_index_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_xfer_index_read(%struct.drm_i915_private* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i64 0
  %14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load i32, i32* @GMBUS_2BYTE_INDEX_EN, align 4
  %19 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %19, i64 0
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %18, %24
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %26, i64 0
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = or i32 %25, %32
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %17, %2
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i64 0
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load i32, i32* @GMBUS_CYCLE_INDEX, align 4
  %42 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i64 0
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @GMBUS_SLAVE_INDEX_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = or i32 %41, %49
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %40, %34
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* @GMBUS5, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @I915_WRITE(i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %51
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i64 1
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @gmbus_xfer_read(%struct.drm_i915_private* %62, %struct.i2c_msg* %64, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load i64, i64* @GMBUS5, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = call i32 @I915_WRITE(i64 %73, i32 0)
  br label %75

75:                                               ; preds = %69, %61
  %76 = load i32, i32* %8, align 4
  ret i32 %76
}

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i32 @gmbus_xfer_read(%struct.drm_i915_private*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
