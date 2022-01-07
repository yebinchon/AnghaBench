; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_s_routing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_msp3400-driver.c_msp_s_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.msp_state = type { i32, i32, i64, i32, i32 }
%struct.i2c_client = type { i32 }

@MSP_MODE_EXTERN = common dso_local global i32 0, align 4
@MSP_MODE_AM_DETECT = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@OPMODE_AUTOSELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32, i32, i32)* @msp_s_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msp_s_routing(%struct.v4l2_subdev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msp_state*, align 8
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = call %struct.msp_state* @to_state(%struct.v4l2_subdev* %20)
  store %struct.msp_state* %21, %struct.msp_state** %10, align 8
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %23 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %22)
  store %struct.i2c_client* %23, %struct.i2c_client** %11, align 8
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 3
  %26 = and i32 %25, 1
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 7
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 15
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 4
  %33 = and i32 %32, 15
  store i32 %33, i32* %15, align 4
  store i32 1, i32* %19, align 4
  %34 = load %struct.msp_state*, %struct.msp_state** %10, align 8
  %35 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load %struct.msp_state*, %struct.msp_state** %10, align 8
  %41 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %114

46:                                               ; preds = %39, %4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.msp_state*, %struct.msp_state** %10, align 8
  %49 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.msp_state*, %struct.msp_state** %10, align 8
  %52 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  store i32 0, i32* %18, align 4
  br label %53

53:                                               ; preds = %66, %46
  %54 = load i32, i32* %18, align 4
  %55 = icmp slt i32 %54, 5
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %18, align 4
  %59 = mul nsw i32 %58, 4
  %60 = add nsw i32 4, %59
  %61 = ashr i32 %57, %60
  %62 = and i32 %61, 15
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %56
  store i32 0, i32* %19, align 4
  br label %65

65:                                               ; preds = %64, %56
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %18, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %18, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* @MSP_MODE_EXTERN, align 4
  br label %76

74:                                               ; preds = %69
  %75 = load i32, i32* @MSP_MODE_AM_DETECT, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.msp_state*, %struct.msp_state** %10, align 8
  %79 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %81 = load %struct.msp_state*, %struct.msp_state** %10, align 8
  %82 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @msp_set_scart(%struct.i2c_client* %83, i32 %84, i32 0)
  %86 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @msp_set_scart(%struct.i2c_client* %86, i32 %87, i32 1)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @msp_set_scart(%struct.i2c_client* %89, i32 %90, i32 2)
  %92 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %93 = call i32 @msp_set_audmode(%struct.i2c_client* %92)
  %94 = load %struct.msp_state*, %struct.msp_state** %10, align 8
  %95 = getelementptr inbounds %struct.msp_state, %struct.msp_state* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @OPMODE_AUTOSELECT, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 48, i32 187
  store i32 %100, i32* %17, align 4
  %101 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @msp_read_dem(%struct.i2c_client* %101, i32 %102)
  store i32 %103, i32* %16, align 4
  %104 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* %16, align 4
  %107 = and i32 %106, -257
  %108 = load i32, i32* %12, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %107, %109
  %111 = call i32 @msp_write_dem(%struct.i2c_client* %104, i32 %105, i32 %110)
  %112 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %113 = call i32 @msp_wake_thread(%struct.i2c_client* %112)
  store i32 0, i32* %5, align 4
  br label %114

114:                                              ; preds = %76, %45
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local %struct.msp_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @msp_set_scart(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_set_audmode(%struct.i2c_client*) #1

declare dso_local i32 @msp_read_dem(%struct.i2c_client*, i32) #1

declare dso_local i32 @msp_write_dem(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msp_wake_thread(%struct.i2c_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
