; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_test_platform_param.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mx3_camera.c_test_platform_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx3_camera_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@SOCAM_MASTER = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_HSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_VSYNC_ACTIVE_LOW = common dso_local global i64 0, align 8
@SOCAM_PCLK_SAMPLE_RISING = common dso_local global i64 0, align 8
@SOCAM_PCLK_SAMPLE_FALLING = common dso_local global i64 0, align 8
@SOCAM_DATA_ACTIVE_HIGH = common dso_local global i64 0, align 8
@SOCAM_DATA_ACTIVE_LOW = common dso_local global i64 0, align 8
@MX3_CAMERA_DATAWIDTH_15 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SOCAM_DATAWIDTH_15 = common dso_local global i64 0, align 8
@SOCAM_DATAWIDTH_10 = common dso_local global i64 0, align 8
@SOCAM_DATAWIDTH_8 = common dso_local global i64 0, align 8
@SOCAM_DATAWIDTH_4 = common dso_local global i64 0, align 8
@MX3_CAMERA_DATAWIDTH_10 = common dso_local global i32 0, align 4
@MX3_CAMERA_DATAWIDTH_8 = common dso_local global i32 0, align 4
@MX3_CAMERA_DATAWIDTH_4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported bus width %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx3_camera_dev*, i8, i64*)* @test_platform_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_platform_param(%struct.mx3_camera_dev* %0, i8 zeroext %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mx3_camera_dev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64*, align 8
  store %struct.mx3_camera_dev* %0, %struct.mx3_camera_dev** %5, align 8
  store i8 %1, i8* %6, align 1
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* @SOCAM_MASTER, align 8
  %9 = load i64, i64* @SOCAM_HSYNC_ACTIVE_HIGH, align 8
  %10 = or i64 %8, %9
  %11 = load i64, i64* @SOCAM_HSYNC_ACTIVE_LOW, align 8
  %12 = or i64 %10, %11
  %13 = load i64, i64* @SOCAM_VSYNC_ACTIVE_HIGH, align 8
  %14 = or i64 %12, %13
  %15 = load i64, i64* @SOCAM_VSYNC_ACTIVE_LOW, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @SOCAM_PCLK_SAMPLE_RISING, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @SOCAM_PCLK_SAMPLE_FALLING, align 8
  %20 = or i64 %18, %19
  %21 = load i64, i64* @SOCAM_DATA_ACTIVE_HIGH, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @SOCAM_DATA_ACTIVE_LOW, align 8
  %24 = or i64 %22, %23
  %25 = load i64*, i64** %7, align 8
  store i64 %24, i64* %25, align 8
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  switch i32 %27, label %100 [
    i32 15, label %28
    i32 10, label %49
    i32 8, label %68
    i32 4, label %85
  ]

28:                                               ; preds = %3
  %29 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %5, align 8
  %30 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MX3_CAMERA_DATAWIDTH_15, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %111

38:                                               ; preds = %28
  %39 = load i64, i64* @SOCAM_DATAWIDTH_15, align 8
  %40 = load i64, i64* @SOCAM_DATAWIDTH_10, align 8
  %41 = or i64 %39, %40
  %42 = load i64, i64* @SOCAM_DATAWIDTH_8, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* @SOCAM_DATAWIDTH_4, align 8
  %45 = or i64 %43, %44
  %46 = load i64*, i64** %7, align 8
  %47 = load i64, i64* %46, align 8
  %48 = or i64 %47, %45
  store i64 %48, i64* %46, align 8
  br label %110

49:                                               ; preds = %3
  %50 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %5, align 8
  %51 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MX3_CAMERA_DATAWIDTH_10, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %111

59:                                               ; preds = %49
  %60 = load i64, i64* @SOCAM_DATAWIDTH_10, align 8
  %61 = load i64, i64* @SOCAM_DATAWIDTH_8, align 8
  %62 = or i64 %60, %61
  %63 = load i64, i64* @SOCAM_DATAWIDTH_4, align 8
  %64 = or i64 %62, %63
  %65 = load i64*, i64** %7, align 8
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %64
  store i64 %67, i64* %65, align 8
  br label %110

68:                                               ; preds = %3
  %69 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %5, align 8
  %70 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MX3_CAMERA_DATAWIDTH_8, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %111

78:                                               ; preds = %68
  %79 = load i64, i64* @SOCAM_DATAWIDTH_8, align 8
  %80 = load i64, i64* @SOCAM_DATAWIDTH_4, align 8
  %81 = or i64 %79, %80
  %82 = load i64*, i64** %7, align 8
  %83 = load i64, i64* %82, align 8
  %84 = or i64 %83, %81
  store i64 %84, i64* %82, align 8
  br label %110

85:                                               ; preds = %3
  %86 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %5, align 8
  %87 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MX3_CAMERA_DATAWIDTH_4, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %111

95:                                               ; preds = %85
  %96 = load i64, i64* @SOCAM_DATAWIDTH_4, align 8
  %97 = load i64*, i64** %7, align 8
  %98 = load i64, i64* %97, align 8
  %99 = or i64 %98, %96
  store i64 %99, i64* %97, align 8
  br label %110

100:                                              ; preds = %3
  %101 = load %struct.mx3_camera_dev*, %struct.mx3_camera_dev** %5, align 8
  %102 = getelementptr inbounds %struct.mx3_camera_dev, %struct.mx3_camera_dev* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8, i8* %6, align 1
  %107 = call i32 @dev_warn(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8 zeroext %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %111

110:                                              ; preds = %95, %78, %59, %38
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %110, %100, %92, %75, %56, %35
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @dev_warn(i32, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
