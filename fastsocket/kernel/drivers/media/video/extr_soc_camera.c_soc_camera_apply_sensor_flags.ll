; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_apply_sensor_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_apply_sensor_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_link = type { i32 }

@SOCAM_SENSOR_INVERT_HSYNC = common dso_local global i32 0, align 4
@SOCAM_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_SENSOR_INVERT_VSYNC = common dso_local global i32 0, align 4
@SOCAM_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_SENSOR_INVERT_PCLK = common dso_local global i32 0, align 4
@SOCAM_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@SOCAM_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @soc_camera_apply_sensor_flags(%struct.soc_camera_link* %0, i64 %1) #0 {
  %3 = alloca %struct.soc_camera_link*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.soc_camera_link* %0, %struct.soc_camera_link** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.soc_camera_link*, %struct.soc_camera_link** %3, align 8
  %7 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SOCAM_SENSOR_INVERT_HSYNC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %15 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %16 = or i64 %14, %15
  %17 = and i64 %13, %16
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %12
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21, %12
  %26 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %27 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* %4, align 8
  %30 = xor i64 %29, %28
  store i64 %30, i64* %4, align 8
  br label %31

31:                                               ; preds = %25, %21
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.soc_camera_link*, %struct.soc_camera_link** %3, align 8
  %34 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @SOCAM_SENSOR_INVERT_VSYNC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %32
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %42 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %43 = or i64 %41, %42
  %44 = and i64 %40, %43
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %48, %39
  %53 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %54 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %55 = or i64 %53, %54
  %56 = load i64, i64* %4, align 8
  %57 = xor i64 %56, %55
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %52, %48
  br label %59

59:                                               ; preds = %58, %32
  %60 = load %struct.soc_camera_link*, %struct.soc_camera_link** %3, align 8
  %61 = getelementptr inbounds %struct.soc_camera_link, %struct.soc_camera_link* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SOCAM_SENSOR_INVERT_PCLK, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %59
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %69 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %70 = or i64 %68, %69
  %71 = and i64 %67, %70
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %79, label %75

75:                                               ; preds = %66
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %75, %66
  %80 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %81 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %82 = or i64 %80, %81
  %83 = load i64, i64* %4, align 8
  %84 = xor i64 %83, %82
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %79, %75
  br label %86

86:                                               ; preds = %85, %59
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
