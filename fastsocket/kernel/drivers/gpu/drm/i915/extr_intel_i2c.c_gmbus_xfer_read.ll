; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_xfer_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_xfer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@GMBUS1 = common dso_local global i64 0, align 8
@GMBUS_CYCLE_WAIT = common dso_local global i32 0, align 4
@GMBUS_BYTE_COUNT_SHIFT = common dso_local global i32 0, align 4
@GMBUS_SLAVE_ADDR_SHIFT = common dso_local global i32 0, align 4
@GMBUS_SLAVE_READ = common dso_local global i32 0, align 4
@GMBUS_SW_RDY = common dso_local global i32 0, align 4
@GMBUS_HW_RDY = common dso_local global i32 0, align 4
@GMBUS_HW_RDY_EN = common dso_local global i32 0, align 4
@GMBUS3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i2c_msg*, i32)* @gmbus_xfer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_xfer_read(%struct.drm_i915_private* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %10, align 8
  %23 = load i64, i64* @GMBUS1, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @GMBUS_CYCLE_WAIT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @GMBUS_BYTE_COUNT_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GMBUS_SLAVE_ADDR_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %33, %38
  %40 = load i32, i32* @GMBUS_SLAVE_READ, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @GMBUS_SW_RDY, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @I915_WRITE(i64 %26, i32 %43)
  br label %45

45:                                               ; preds = %80, %3
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %50 = load i32, i32* @GMBUS_HW_RDY, align 4
  %51 = load i32, i32* @GMBUS_HW_RDY_EN, align 4
  %52 = call i32 @gmbus_wait_hw_status(%struct.drm_i915_private* %49, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %4, align 4
  br label %82

57:                                               ; preds = %48
  %58 = load i64, i64* @GMBUS3, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %58, %60
  %62 = call i32 @I915_READ(i64 %61)
  store i32 %62, i32* %12, align 4
  br label %63

63:                                               ; preds = %78, %57
  %64 = load i32, i32* %12, align 4
  %65 = and i32 %64, 255
  %66 = load i32*, i32** %10, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %10, align 8
  store i32 %65, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = ashr i32 %68, 8
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = icmp slt i32 %76, 4
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i1 [ false, %70 ], [ %77, %74 ]
  br i1 %79, label %63, label %80

80:                                               ; preds = %78
  br label %45

81:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %55
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i32 @gmbus_wait_hw_status(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @I915_READ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
