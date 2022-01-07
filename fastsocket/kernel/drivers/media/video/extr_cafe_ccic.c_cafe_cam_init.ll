; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_cam_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cafe_ccic.c_cafe_cam_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cafe_camera = type { i64, i64, i32, i32 }
%struct.v4l2_dbg_chip_ident = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@S_NOTREADY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Cam init with device in funky state %d\00", align 1
@V4L2_IDENT_NONE = common dso_local global i64 0, align 8
@V4L2_CHIP_MATCH_I2C_ADDR = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@g_chip_ident = common dso_local global i32 0, align 4
@V4L2_IDENT_OV7670 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported sensor type 0x%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cafe_camera*)* @cafe_cam_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cafe_cam_init(%struct.cafe_camera* %0) #0 {
  %2 = alloca %struct.cafe_camera*, align 8
  %3 = alloca %struct.v4l2_dbg_chip_ident, align 8
  %4 = alloca i32, align 4
  store %struct.cafe_camera* %0, %struct.cafe_camera** %2, align 8
  %5 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %6 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %5, i32 0, i32 2
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %9 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @S_NOTREADY, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %15 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %16 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @cam_warn(%struct.cafe_camera* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %21 = call i32 @__cafe_cam_reset(%struct.cafe_camera* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %65

25:                                               ; preds = %19
  %26 = load i64, i64* @V4L2_IDENT_NONE, align 8
  %27 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %3, i32 0, i32 0
  store i64 %26, i64* %27, align 8
  %28 = load i32, i32* @V4L2_CHIP_MATCH_I2C_ADDR, align 4
  %29 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %32 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %3, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %37 = load i32, i32* @core, align 4
  %38 = load i32, i32* @g_chip_ident, align 4
  %39 = call i32 @sensor_call(%struct.cafe_camera* %36, i32 %37, i32 %38, %struct.v4l2_dbg_chip_ident* %3)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %25
  br label %65

43:                                               ; preds = %25
  %44 = getelementptr inbounds %struct.v4l2_dbg_chip_ident, %struct.v4l2_dbg_chip_ident* %3, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %47 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %49 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_IDENT_OV7670, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %55 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %56 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @cam_err(%struct.cafe_camera* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  %62 = load i64, i64* @S_IDLE, align 8
  %63 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %64 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %53, %42, %24
  %66 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %67 = call i32 @cafe_ctlr_power_down(%struct.cafe_camera* %66)
  %68 = load %struct.cafe_camera*, %struct.cafe_camera** %2, align 8
  %69 = getelementptr inbounds %struct.cafe_camera, %struct.cafe_camera* %68, i32 0, i32 2
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cam_warn(%struct.cafe_camera*, i8*, i64) #1

declare dso_local i32 @__cafe_cam_reset(%struct.cafe_camera*) #1

declare dso_local i32 @sensor_call(%struct.cafe_camera*, i32, i32, %struct.v4l2_dbg_chip_ident*) #1

declare dso_local i32 @cam_err(%struct.cafe_camera*, i8*, i64) #1

declare dso_local i32 @cafe_ctlr_power_down(%struct.cafe_camera*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
