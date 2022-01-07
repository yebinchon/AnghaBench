; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tcm825x.c_tcm825x_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.v4l2_int_device = type { %struct.tcm825x_sensor* }
%struct.tcm825x_sensor = type { %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.v4l2_fract, %struct.v4l2_pix_format }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 (...)* }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_pix_format = type { i32, i32, i32 }

@tcm825x_siz_reg = common dso_local global %struct.TYPE_10__** null, align 8
@.str = private unnamed_addr constant [27 x i8] c"configuring image size %d\0A\00", align 1
@RGB565 = common dso_local global i32 0, align 4
@YUV422 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"configuring pixel format %d\0A\00", align 1
@tcm825x_fmt_reg = common dso_local global %struct.TYPE_11__** null, align 8
@HIGH_FPS_MODE_LOWER_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_int_device*)* @tcm825x_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcm825x_configure(%struct.v4l2_int_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_int_device*, align 8
  %4 = alloca %struct.tcm825x_sensor*, align 8
  %5 = alloca %struct.v4l2_pix_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_int_device* %0, %struct.v4l2_int_device** %3, align 8
  %12 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_int_device, %struct.v4l2_int_device* %12, i32 0, i32 0
  %14 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %13, align 8
  store %struct.tcm825x_sensor* %14, %struct.tcm825x_sensor** %4, align 8
  %15 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %16 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %15, i32 0, i32 3
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %5, align 8
  %17 = load %struct.v4l2_int_device*, %struct.v4l2_int_device** %3, align 8
  %18 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @tcm825x_find_size(%struct.v4l2_int_device* %17, i32 %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %26 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %25, i32 0, i32 2
  store %struct.v4l2_fract* %26, %struct.v4l2_fract** %7, align 8
  %27 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %28 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %31 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = call i32 (...) %34()
  %36 = call i32 @tcm825x_write_default_regs(%struct.TYPE_9__* %29, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %1
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %2, align 4
  br label %134

41:                                               ; preds = %1
  %42 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @tcm825x_siz_reg, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %42, i64 %44
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %11, align 4
  %49 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %50 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %56 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @tcm825x_siz_reg, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %58, i64 %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @tcm825x_write_reg_mask(%struct.TYPE_9__* %57, i32 %64, i32 %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %41
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %2, align 4
  br label %134

71:                                               ; preds = %41
  %72 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %75 [
    i32 129, label %76
    i32 128, label %78
  ]

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %71, %75
  %77 = load i32, i32* @RGB565, align 4
  store i32 %77, i32* %8, align 4
  br label %80

78:                                               ; preds = %71
  %79 = load i32, i32* @YUV422, align 4
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %76
  %81 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %82 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %81, i32 0, i32 0
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @dev_dbg(i32* %84, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  %87 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @tcm825x_fmt_reg, align 8
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %87, i64 %89
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %95 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %94, i32 0, i32 0
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @tcm825x_fmt_reg, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %97, i64 %99
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @tcm825x_write_reg_mask(%struct.TYPE_9__* %96, i32 %103, i32 %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %80
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %2, align 4
  br label %134

110:                                              ; preds = %80
  %111 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = sdiv i32 %113, %116
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @HIGH_FPS_MODE_LOWER_LIMIT, align 4
  %120 = icmp sle i32 %118, %119
  br i1 %120, label %121, label %133

121:                                              ; preds = %110
  %122 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %123 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = call i32 @tcm825x_read_reg(%struct.TYPE_9__* %124, i32 2)
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %126, 128
  store i32 %127, i32* %11, align 4
  %128 = load %struct.tcm825x_sensor*, %struct.tcm825x_sensor** %4, align 8
  %129 = getelementptr inbounds %struct.tcm825x_sensor, %struct.tcm825x_sensor* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @tcm825x_write_reg(%struct.TYPE_9__* %130, i32 2, i32 %131)
  br label %133

133:                                              ; preds = %121, %110
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %108, %69, %39
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @tcm825x_find_size(%struct.v4l2_int_device*, i32, i32) #1

declare dso_local i32 @tcm825x_write_default_regs(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @tcm825x_write_reg_mask(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @tcm825x_read_reg(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @tcm825x_write_reg(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
