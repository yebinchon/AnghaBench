; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_overlay_cmd_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i915/extr_intel_overlay.c_overlay_cmd_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.put_image_params = type { i32 }

@OCMD_ENABLE = common dso_local global i32 0, align 4
@OCMD_BUF_TYPE_FRAME = common dso_local global i32 0, align 4
@OCMD_BUFFER0 = common dso_local global i32 0, align 4
@I915_OVERLAY_YUV_PLANAR = common dso_local global i32 0, align 4
@I915_OVERLAY_DEPTH_MASK = common dso_local global i32 0, align 4
@OCMD_YUV_422_PLANAR = common dso_local global i32 0, align 4
@OCMD_YUV_420_PLANAR = common dso_local global i32 0, align 4
@OCMD_YUV_410_PLANAR = common dso_local global i32 0, align 4
@OCMD_YUV_422_PACKED = common dso_local global i32 0, align 4
@OCMD_YUV_411_PACKED = common dso_local global i32 0, align 4
@I915_OVERLAY_SWAP_MASK = common dso_local global i32 0, align 4
@OCMD_UV_SWAP = common dso_local global i32 0, align 4
@OCMD_Y_SWAP = common dso_local global i32 0, align 4
@OCMD_Y_AND_UV_SWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.put_image_params*)* @overlay_cmd_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @overlay_cmd_reg(%struct.put_image_params* %0) #0 {
  %2 = alloca %struct.put_image_params*, align 8
  %3 = alloca i32, align 4
  store %struct.put_image_params* %0, %struct.put_image_params** %2, align 8
  %4 = load i32, i32* @OCMD_ENABLE, align 4
  %5 = load i32, i32* @OCMD_BUF_TYPE_FRAME, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @OCMD_BUFFER0, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load %struct.put_image_params*, %struct.put_image_params** %2, align 8
  %10 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I915_OVERLAY_YUV_PLANAR, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.put_image_params*, %struct.put_image_params** %2, align 8
  %17 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @I915_OVERLAY_DEPTH_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %33 [
    i32 130, label %21
    i32 131, label %25
    i32 132, label %29
    i32 133, label %29
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* @OCMD_YUV_422_PLANAR, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %15
  %26 = load i32, i32* @OCMD_YUV_420_PLANAR, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %15, %15
  %30 = load i32, i32* @OCMD_YUV_410_PLANAR, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %15, %29, %25, %21
  br label %68

34:                                               ; preds = %1
  %35 = load %struct.put_image_params*, %struct.put_image_params** %2, align 8
  %36 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I915_OVERLAY_DEPTH_MASK, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %48 [
    i32 130, label %40
    i32 132, label %44
  ]

40:                                               ; preds = %34
  %41 = load i32, i32* @OCMD_YUV_422_PACKED, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @OCMD_YUV_411_PACKED, align 4
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %34, %44, %40
  %49 = load %struct.put_image_params*, %struct.put_image_params** %2, align 8
  %50 = getelementptr inbounds %struct.put_image_params, %struct.put_image_params* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I915_OVERLAY_SWAP_MASK, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %67 [
    i32 135, label %54
    i32 134, label %55
    i32 128, label %59
    i32 129, label %63
  ]

54:                                               ; preds = %48
  br label %67

55:                                               ; preds = %48
  %56 = load i32, i32* @OCMD_UV_SWAP, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %67

59:                                               ; preds = %48
  %60 = load i32, i32* @OCMD_Y_SWAP, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %67

63:                                               ; preds = %48
  %64 = load i32, i32* @OCMD_Y_AND_UV_SWAP, align 4
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %48, %63, %59, %55, %54
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
