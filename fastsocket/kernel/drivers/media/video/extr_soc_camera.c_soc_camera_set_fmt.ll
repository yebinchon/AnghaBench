; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_set_fmt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_soc_camera.c_soc_camera_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { i32, i32, %struct.TYPE_14__, i32, %struct.TYPE_12__, i32, %struct.TYPE_11__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.v4l2_format = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32 }
%struct.soc_camera_host = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.soc_camera_device*, %struct.v4l2_format*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_format*)*, i32 (%struct.soc_camera_device*, i64)* }

@.str = private unnamed_addr constant [24 x i8] c"S_FMT(%c%c%c%c, %ux%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Host driver hasn't set up current format correctly!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Attention! Wrong buf-type %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"set width: %d height: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*, %struct.v4l2_format*)* @soc_camera_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_set_fmt(%struct.soc_camera_device* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.soc_camera_device*, align 8
  %5 = alloca %struct.v4l2_format*, align 8
  %6 = alloca %struct.soc_camera_host*, align 8
  %7 = alloca %struct.v4l2_pix_format*, align 8
  %8 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %4, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %5, align 8
  %9 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %10 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.soc_camera_host* @to_soc_camera_host(i32 %12)
  store %struct.soc_camera_host* %13, %struct.soc_camera_host** %6, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %7, align 8
  %17 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %18 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %17, i32 0, i32 2
  %19 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @pixfmtstr(i64 %21)
  %23 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.TYPE_14__*, i8*, i32, i32, ...) @dev_dbg(%struct.TYPE_14__* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 %28)
  %30 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %31 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32 (%struct.soc_camera_device*, %struct.v4l2_format*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_format*)** %33, align 8
  %35 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %37 = call i32 %34(%struct.soc_camera_device* %35, %struct.v4l2_format* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %135

42:                                               ; preds = %2
  %43 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %44 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %43, i32 0, i32 0
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32 (%struct.soc_camera_device*, %struct.v4l2_format*)*, i32 (%struct.soc_camera_device*, %struct.v4l2_format*)** %46, align 8
  %48 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %50 = call i32 %47(%struct.soc_camera_device* %48, %struct.v4l2_format* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %135

55:                                               ; preds = %42
  %56 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %57 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %56, i32 0, i32 6
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = icmp ne %struct.TYPE_11__* %58, null
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %62 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %61, i32 0, i32 6
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %60, %55
  %73 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %74 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %73, i32 0, i32 2
  %75 = call i32 @dev_err(%struct.TYPE_14__* %74, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %135

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %84 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %89 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %94 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %99 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %101 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  store i32 %97, i32* %102, align 8
  %103 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %79
  %109 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %110 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %109, i32 0, i32 2
  %111 = load %struct.v4l2_format*, %struct.v4l2_format** %5, align 8
  %112 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @dev_warn(%struct.TYPE_14__* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %108, %79
  %116 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %117 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %116, i32 0, i32 2
  %118 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %119 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %122 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (%struct.TYPE_14__*, i8*, i32, i32, ...) @dev_dbg(%struct.TYPE_14__* %117, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %123)
  %125 = load %struct.soc_camera_host*, %struct.soc_camera_host** %6, align 8
  %126 = getelementptr inbounds %struct.soc_camera_host, %struct.soc_camera_host* %125, i32 0, i32 0
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 2
  %129 = load i32 (%struct.soc_camera_device*, i64)*, i32 (%struct.soc_camera_device*, i64)** %128, align 8
  %130 = load %struct.soc_camera_device*, %struct.soc_camera_device** %4, align 8
  %131 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %7, align 8
  %132 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 %129(%struct.soc_camera_device* %130, i64 %133)
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %115, %72, %53, %40
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.soc_camera_host* @to_soc_camera_host(i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_14__*, i8*, i32, i32, ...) #1

declare dso_local i32 @pixfmtstr(i64) #1

declare dso_local i32 @dev_err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_14__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
