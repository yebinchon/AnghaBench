; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_xfer_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_i2c.c_gmbus_xfer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@GMBUS3 = common dso_local global i64 0, align 8
@GMBUS1 = common dso_local global i64 0, align 8
@GMBUS_CYCLE_WAIT = common dso_local global i32 0, align 4
@GMBUS_BYTE_COUNT_SHIFT = common dso_local global i32 0, align 4
@GMBUS_SLAVE_ADDR_SHIFT = common dso_local global i32 0, align 4
@GMBUS_SLAVE_WRITE = common dso_local global i32 0, align 4
@GMBUS_SW_RDY = common dso_local global i32 0, align 4
@GMBUS_HW_RDY = common dso_local global i32 0, align 4
@GMBUS_HW_RDY_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i2c_msg*)* @gmbus_xfer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_xfer_write(%struct.drm_i915_private* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %29, %2
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %41

29:                                               ; preds = %27
  %30 = load i32*, i32** %8, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %8, align 8
  %32 = load i32, i32* %30, align 4
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  %35 = mul nsw i32 8, %33
  %36 = shl i32 %32, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %21

41:                                               ; preds = %27
  %42 = load i64, i64* @GMBUS3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @I915_WRITE(i64 %45, i32 %46)
  %48 = load i64, i64* @GMBUS1, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load i32, i32* @GMBUS_CYCLE_WAIT, align 4
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @GMBUS_BYTE_COUNT_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %52, %57
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GMBUS_SLAVE_ADDR_SHIFT, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %58, %63
  %65 = load i32, i32* @GMBUS_SLAVE_WRITE, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @GMBUS_SW_RDY, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @I915_WRITE(i64 %51, i32 %68)
  br label %70

70:                                               ; preds = %108, %41
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %8, align 8
  %77 = load i32, i32* %75, align 4
  %78 = load i32, i32* %10, align 4
  %79 = mul nsw i32 8, %78
  %80 = shl i32 %77, %79
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  %90 = icmp slt i32 %89, 4
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i1 [ false, %83 ], [ %90, %87 ]
  br i1 %92, label %74, label %93

93:                                               ; preds = %91
  %94 = load i64, i64* @GMBUS3, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @I915_WRITE(i64 %97, i32 %98)
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %101 = load i32, i32* @GMBUS_HW_RDY, align 4
  %102 = load i32, i32* @GMBUS_HW_RDY_EN, align 4
  %103 = call i32 @gmbus_wait_hw_status(%struct.drm_i915_private* %100, i32 %101, i32 %102)
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %3, align 4
  br label %110

108:                                              ; preds = %93
  br label %70

109:                                              ; preds = %70
  store i32 0, i32* %3, align 4
  br label %110

110:                                              ; preds = %109, %106
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @I915_WRITE(i64, i32) #1

declare dso_local i32 @gmbus_wait_hw_status(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
