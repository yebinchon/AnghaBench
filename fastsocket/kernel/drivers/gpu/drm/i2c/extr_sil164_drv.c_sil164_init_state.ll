; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_init_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.sil164_encoder_params = type { i32, i32, i64, i64, i64, i64 }

@SIL164_CONTROL0 = common dso_local global i32 0, align 4
@SIL164_CONTROL0_HSYNC_ON = common dso_local global i32 0, align 4
@SIL164_CONTROL0_VSYNC_ON = common dso_local global i32 0, align 4
@SIL164_CONTROL0_EDGE_RISING = common dso_local global i32 0, align 4
@SIL164_CONTROL0_INPUT_24BIT = common dso_local global i32 0, align 4
@SIL164_CONTROL0_DUAL_EDGE = common dso_local global i32 0, align 4
@SIL164_DETECT = common dso_local global i32 0, align 4
@SIL164_DETECT_INTR_STAT = common dso_local global i32 0, align 4
@SIL164_DETECT_OUT_MODE_RECEIVER = common dso_local global i32 0, align 4
@SIL164_CONTROL1 = common dso_local global i32 0, align 4
@SIL164_CONTROL1_DESKEW_ENABLE = common dso_local global i32 0, align 4
@SIL164_CONTROL1_DESKEW_INCR_SHIFT = common dso_local global i32 0, align 4
@SIL164_CONTROL2 = common dso_local global i32 0, align 4
@SIL164_CONTROL2_SYNC_CONT = common dso_local global i32 0, align 4
@SIL164_CONTROL2_FILTER_ENABLE = common dso_local global i32 0, align 4
@SIL164_CONTROL2_FILTER_SETTING_SHIFT = common dso_local global i32 0, align 4
@SIL164_PLLZONE = common dso_local global i32 0, align 4
@SIL164_DUALLINK = common dso_local global i32 0, align 4
@SIL164_DUALLINK_ENABLE = common dso_local global i32 0, align 4
@SIL164_DUALLINK_SKEW_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, %struct.sil164_encoder_params*, i32)* @sil164_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil164_init_state(%struct.i2c_client* %0, %struct.sil164_encoder_params* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.sil164_encoder_params*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.sil164_encoder_params* %1, %struct.sil164_encoder_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = load i32, i32* @SIL164_CONTROL0, align 4
  %9 = load i32, i32* @SIL164_CONTROL0_HSYNC_ON, align 4
  %10 = load i32, i32* @SIL164_CONTROL0_VSYNC_ON, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.sil164_encoder_params*, %struct.sil164_encoder_params** %5, align 8
  %13 = getelementptr inbounds %struct.sil164_encoder_params, %struct.sil164_encoder_params* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @SIL164_CONTROL0_EDGE_RISING, align 4
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = or i32 %11, %20
  %22 = load %struct.sil164_encoder_params*, %struct.sil164_encoder_params** %5, align 8
  %23 = getelementptr inbounds %struct.sil164_encoder_params, %struct.sil164_encoder_params* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @SIL164_CONTROL0_INPUT_24BIT, align 4
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %21, %30
  %32 = load %struct.sil164_encoder_params*, %struct.sil164_encoder_params** %5, align 8
  %33 = getelementptr inbounds %struct.sil164_encoder_params, %struct.sil164_encoder_params* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @SIL164_CONTROL0_DUAL_EDGE, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = or i32 %31, %40
  %42 = call i32 @sil164_write(%struct.i2c_client* %7, i32 %8, i32 %41)
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32, i32* @SIL164_DETECT, align 4
  %45 = load i32, i32* @SIL164_DETECT_INTR_STAT, align 4
  %46 = load i32, i32* @SIL164_DETECT_OUT_MODE_RECEIVER, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @sil164_write(%struct.i2c_client* %43, i32 %44, i32 %47)
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i32, i32* @SIL164_CONTROL1, align 4
  %51 = load %struct.sil164_encoder_params*, %struct.sil164_encoder_params** %5, align 8
  %52 = getelementptr inbounds %struct.sil164_encoder_params, %struct.sil164_encoder_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %39
  %56 = load i32, i32* @SIL164_CONTROL1_DESKEW_ENABLE, align 4
  br label %58

57:                                               ; preds = %39
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load %struct.sil164_encoder_params*, %struct.sil164_encoder_params** %5, align 8
  %61 = getelementptr inbounds %struct.sil164_encoder_params, %struct.sil164_encoder_params* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 4
  %64 = and i32 %63, 7
  %65 = load i32, i32* @SIL164_CONTROL1_DESKEW_INCR_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %59, %66
  %68 = call i32 @sil164_write(%struct.i2c_client* %49, i32 %50, i32 %67)
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = load i32, i32* @SIL164_CONTROL2, align 4
  %71 = load i32, i32* @SIL164_CONTROL2_SYNC_CONT, align 4
  %72 = load %struct.sil164_encoder_params*, %struct.sil164_encoder_params** %5, align 8
  %73 = getelementptr inbounds %struct.sil164_encoder_params, %struct.sil164_encoder_params* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %58
  br label %79

77:                                               ; preds = %58
  %78 = load i32, i32* @SIL164_CONTROL2_FILTER_ENABLE, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 0, %76 ], [ %78, %77 ]
  %81 = or i32 %71, %80
  %82 = load i32, i32* @SIL164_CONTROL2_FILTER_SETTING_SHIFT, align 4
  %83 = shl i32 4, %82
  %84 = or i32 %81, %83
  %85 = call i32 @sil164_write(%struct.i2c_client* %69, i32 %70, i32 %84)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = load i32, i32* @SIL164_PLLZONE, align 4
  %88 = call i32 @sil164_write(%struct.i2c_client* %86, i32 %87, i32 0)
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %79
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load i32, i32* @SIL164_DUALLINK, align 4
  %94 = load i32, i32* @SIL164_DUALLINK_ENABLE, align 4
  %95 = load %struct.sil164_encoder_params*, %struct.sil164_encoder_params** %5, align 8
  %96 = getelementptr inbounds %struct.sil164_encoder_params, %struct.sil164_encoder_params* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 4
  %99 = and i32 %98, 7
  %100 = load i32, i32* @SIL164_DUALLINK_SKEW_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = or i32 %94, %101
  %103 = call i32 @sil164_write(%struct.i2c_client* %92, i32 %93, i32 %102)
  br label %108

104:                                              ; preds = %79
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = load i32, i32* @SIL164_DUALLINK, align 4
  %107 = call i32 @sil164_write(%struct.i2c_client* %105, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %104, %91
  ret void
}

declare dso_local i32 @sil164_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
