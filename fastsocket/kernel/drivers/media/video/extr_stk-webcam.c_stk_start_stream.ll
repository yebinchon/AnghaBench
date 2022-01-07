; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_start_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_start_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"FIXME: Buffers are not allocated\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"usb_set_interface failed !\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error awaking the sensor\0A\00", align 1
@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*)* @stk_start_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_start_stream(%struct.stk_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %3, align 8
  %9 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %10 = call i32 @is_present(%struct.stk_camera* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %103

15:                                               ; preds = %1
  %16 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %17 = call i32 @is_memallocd(%struct.stk_camera* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %21 = call i32 @is_initialised(%struct.stk_camera* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %15
  %24 = call i32 @STK_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EFAULT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %103

27:                                               ; preds = %19
  %28 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %29 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @usb_set_interface(i32 %30, i32 0, i32 5)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = call i32 @STK_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %27
  %37 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %38 = call i64 @stk_sensor_wakeup(%struct.stk_camera* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @STK_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %44 = call i32 @stk_camera_read_reg(%struct.stk_camera* %43, i32 278, i32* %7)
  %45 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %46 = call i32 @stk_camera_read_reg(%struct.stk_camera* %45, i32 279, i32* %8)
  %47 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %48 = call i32 @stk_camera_write_reg(%struct.stk_camera* %47, i32 278, i32 0)
  %49 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %50 = call i32 @stk_camera_write_reg(%struct.stk_camera* %49, i32 279, i32 0)
  %51 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %52 = call i32 @stk_camera_read_reg(%struct.stk_camera* %51, i32 256, i32* %4)
  %53 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = or i32 %54, 128
  %56 = call i32 @stk_camera_write_reg(%struct.stk_camera* %53, i32 256, i32 %55)
  %57 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @stk_camera_write_reg(%struct.stk_camera* %57, i32 278, i32 %58)
  %60 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @stk_camera_write_reg(%struct.stk_camera* %60, i32 279, i32 %61)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %97, %42
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @MAX_ISO_BUFS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %69 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %67
  %78 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %79 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @usb_submit_urb(i64 %85, i32 %86)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %89 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %88, i32 0, i32 0
  %90 = call i32 @atomic_inc(i32* %89)
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %77
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %103

95:                                               ; preds = %77
  br label %96

96:                                               ; preds = %95, %67
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  br label %63

100:                                              ; preds = %63
  %101 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %102 = call i32 @set_streaming(%struct.stk_camera* %101)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %100, %93, %23, %12
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @is_present(%struct.stk_camera*) #1

declare dso_local i32 @is_memallocd(%struct.stk_camera*) #1

declare dso_local i32 @is_initialised(%struct.stk_camera*) #1

declare dso_local i32 @STK_ERROR(i8*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i64 @stk_sensor_wakeup(%struct.stk_camera*) #1

declare dso_local i32 @stk_camera_read_reg(%struct.stk_camera*, i32, i32*) #1

declare dso_local i32 @stk_camera_write_reg(%struct.stk_camera*, i32, i32) #1

declare dso_local i32 @usb_submit_urb(i64, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @set_streaming(%struct.stk_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
