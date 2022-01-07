; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_video_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_video_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.pwc_device = type { i32, i64, i32, i32, i32, i64, i32, i64, i64, i64, i64, i64, i64, i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c">> video_open called(vdev = 0x%p).\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"I'm busy, someone is using the device.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Doing first time initialization.\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"This %s camera is equipped with a %s (%d).\0A\00", align 1
@power_save = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Failed to restore power to the camera! (%d)\0A\00", align 1
@led_on = common dso_local global i32 0, align 4
@led_off = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to set LED on/off time.\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to allocate buffers memory.\0A\00", align 1
@pwc_mbufs = common dso_local global i32 0, align 4
@pwc_image_sizes = common dso_local global %struct.TYPE_4__* null, align 8
@.str.7 = private unnamed_addr constant [41 x i8] c"First attempt at set_video_mode failed.\0A\00", align 1
@PSZ_QSIF = common dso_local global i32 0, align 4
@PSZ_QCIF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Second attempt at set_video_mode failed.\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"<< video_open() returns 0.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @pwc_video_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_video_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.pwc_device*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.video_device* @video_devdata(%struct.file* %9)
  store %struct.video_device* %10, %struct.video_device** %6, align 8
  %11 = load %struct.video_device*, %struct.video_device** %6, align 8
  %12 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.video_device* %11)
  %13 = load %struct.video_device*, %struct.video_device** %6, align 8
  %14 = call %struct.pwc_device* @video_get_drvdata(%struct.video_device* %13)
  store %struct.pwc_device* %14, %struct.pwc_device** %7, align 8
  %15 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %16 = icmp ne %struct.pwc_device* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %21 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %201

28:                                               ; preds = %1
  %29 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %30 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %29, i32 0, i32 4
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %33 = call i32 @pwc_construct(%struct.pwc_device* %32)
  %34 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %28
  %39 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %41 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %43 = call i32 @pwc_get_cmos_sensor(%struct.pwc_device* %42, i32* %4)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %38
  %47 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %48 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %47, i32 0, i32 14
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @pwc_sensor_type_to_string(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %51, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %46, %38
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i64, i64* @power_save, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %62 = call i32 @pwc_camera_power(%struct.pwc_device* %61, i32 1)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %57
  %70 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %71 = load i32, i32* @led_on, align 4
  %72 = load i32, i32* @led_off, align 4
  %73 = call i64 @pwc_set_leds(%struct.pwc_device* %70, i32 %71, i32 %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %69
  %78 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %79 = call i32 @pwc_allocate_buffers(%struct.pwc_device* %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  %83 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %84 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %85 = call i32 @pwc_free_buffers(%struct.pwc_device* %84)
  %86 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %87 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %86, i32 0, i32 4
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %201

90:                                               ; preds = %77
  %91 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %92 = call i32 @pwc_reset_buffers(%struct.pwc_device* %91)
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %104, %90
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @pwc_mbufs, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %99 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %98, i32 0, i32 13
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %93

107:                                              ; preds = %93
  %108 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %109 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %108, i32 0, i32 12
  store i64 0, i64* %109, align 8
  %110 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %111 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %110, i32 0, i32 11
  store i64 0, i64* %111, align 8
  %112 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %113 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %112, i32 0, i32 10
  store i64 0, i64* %113, align 8
  %114 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %115 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %114, i32 0, i32 9
  store i64 0, i64* %115, align 8
  %116 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %117 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %116, i32 0, i32 8
  store i64 0, i64* %117, align 8
  %118 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %119 = call i32 @pwc_construct(%struct.pwc_device* %118)
  %120 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %121 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %120, i32 0, i32 7
  store i64 0, i64* %121, align 8
  %122 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwc_image_sizes, align 8
  %124 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %125 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwc_image_sizes, align 8
  %131 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %132 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %138 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %141 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @pwc_set_video_mode(%struct.pwc_device* %122, i32 %129, i32 %136, i32 %139, i32 %142, i32 0)
  store i32 %143, i32* %4, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %174

146:                                              ; preds = %107
  %147 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %148 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %149 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp sge i32 %150, 730
  br i1 %151, label %152, label %154

152:                                              ; preds = %146
  %153 = load i32, i32* @PSZ_QSIF, align 4
  store i32 %153, i32* %8, align 4
  br label %156

154:                                              ; preds = %146
  %155 = load i32, i32* @PSZ_QCIF, align 4
  store i32 %155, i32* %8, align 4
  br label %156

156:                                              ; preds = %154, %152
  %157 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwc_image_sizes, align 8
  %159 = load i32, i32* %8, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pwc_image_sizes, align 8
  %165 = load i32, i32* %8, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %171 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @pwc_set_video_mode(%struct.pwc_device* %157, i32 %163, i32 %169, i32 10, i32 %172, i32 0)
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %156, %107
  %175 = load i32, i32* %4, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %179 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %180 = call i32 @pwc_free_buffers(%struct.pwc_device* %179)
  %181 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %182 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %181, i32 0, i32 4
  %183 = call i32 @mutex_unlock(i32* %182)
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %201

185:                                              ; preds = %174
  %186 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %187 = call i32 @pwc_set_brightness(%struct.pwc_device* %186, i32 32767)
  %188 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %189 = call i32 @pwc_set_agc(%struct.pwc_device* %188, i32 1, i32 0)
  %190 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %191 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %191, align 8
  %194 = load %struct.video_device*, %struct.video_device** %6, align 8
  %195 = load %struct.file*, %struct.file** %3, align 8
  %196 = getelementptr inbounds %struct.file, %struct.file* %195, i32 0, i32 0
  store %struct.video_device* %194, %struct.video_device** %196, align 8
  %197 = load %struct.pwc_device*, %struct.pwc_device** %7, align 8
  %198 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %197, i32 0, i32 4
  %199 = call i32 @mutex_unlock(i32* %198)
  %200 = call i32 (i8*, ...) @PWC_DEBUG_OPEN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %201

201:                                              ; preds = %185, %177, %82, %24
  %202 = load i32, i32* %2, align 4
  ret i32 %202
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @PWC_DEBUG_OPEN(i8*, ...) #1

declare dso_local %struct.pwc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pwc_construct(%struct.pwc_device*) #1

declare dso_local i32 @pwc_get_cmos_sensor(%struct.pwc_device*, i32*) #1

declare dso_local i32 @pwc_sensor_type_to_string(i32) #1

declare dso_local i32 @pwc_camera_power(%struct.pwc_device*, i32) #1

declare dso_local i64 @pwc_set_leds(%struct.pwc_device*, i32, i32) #1

declare dso_local i32 @pwc_allocate_buffers(%struct.pwc_device*) #1

declare dso_local i32 @pwc_free_buffers(%struct.pwc_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pwc_reset_buffers(%struct.pwc_device*) #1

declare dso_local i32 @pwc_set_video_mode(%struct.pwc_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pwc_set_brightness(%struct.pwc_device*, i32) #1

declare dso_local i32 @pwc_set_agc(%struct.pwc_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
