; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_test_platform_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_pxa_camera.c_test_platform_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32 }

@PXA_CAMERA_MASTER = common dso_local global i32 0, align 4
@SOCAM_MASTER = common dso_local global i64 0, align 8
@SOCAM_SLAVE = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_DATA_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@SOCAM_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@PXA_CAMERA_DATAWIDTH_10 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_10 = common dso_local global i64 0, align 8
@PXA_CAMERA_DATAWIDTH_9 = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_9 = common dso_local global i64 0, align 8
@PXA_CAMERA_DATAWIDTH_8 = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_8 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_camera_dev*, i8, i64*)* @test_platform_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_platform_param(%struct.pxa_camera_dev* %0, i8 zeroext %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pxa_camera_dev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64*, align 8
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64* %2, i64** %7, align 8
  %8 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %5, align 8
  %9 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PXA_CAMERA_MASTER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @SOCAM_MASTER, align 8
  br label %18

16:                                               ; preds = %3
  %17 = load i64, i64* @SOCAM_SLAVE, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %23 = or i64 %21, %22
  %24 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %25 = or i64 %23, %24
  %26 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %27 = or i64 %25, %26
  %28 = load i64, i64* @SOCAM_DATA_ACTIVE_HIGH, align 8
  %29 = or i64 %27, %28
  %30 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %33 = or i64 %31, %32
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  %35 = load i8, i8* %6, align 1
  %36 = zext i8 %35 to i32
  switch i32 %36, label %82 [
    i32 10, label %37
    i32 9, label %52
    i32 8, label %67
  ]

37:                                               ; preds = %18
  %38 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %5, align 8
  %39 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PXA_CAMERA_DATAWIDTH_10, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %86

47:                                               ; preds = %37
  %48 = load i64, i64* @SOCAM_DATAWIDTH_10, align 8
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %49, align 8
  %51 = or i64 %50, %48
  store i64 %51, i64* %49, align 8
  br label %85

52:                                               ; preds = %18
  %53 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %5, align 8
  %54 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PXA_CAMERA_DATAWIDTH_9, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %86

62:                                               ; preds = %52
  %63 = load i64, i64* @SOCAM_DATAWIDTH_9, align 8
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %64, align 8
  %66 = or i64 %65, %63
  store i64 %66, i64* %64, align 8
  br label %85

67:                                               ; preds = %18
  %68 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %5, align 8
  %69 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PXA_CAMERA_DATAWIDTH_8, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %86

77:                                               ; preds = %67
  %78 = load i64, i64* @SOCAM_DATAWIDTH_8, align 8
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* %79, align 8
  %81 = or i64 %80, %78
  store i64 %81, i64* %79, align 8
  br label %85

82:                                               ; preds = %18
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %77, %62, %47
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %82, %74, %59, %44
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
