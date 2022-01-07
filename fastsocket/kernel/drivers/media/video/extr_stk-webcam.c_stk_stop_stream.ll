; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_stop_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-webcam.c_stk_stop_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAX_ISO_BUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"usb_set_interface failed !\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"error suspending the sensor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*)* @stk_stop_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_stop_stream(%struct.stk_camera* %0) #0 {
  %2 = alloca %struct.stk_camera*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %2, align 8
  %5 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %6 = call i64 @is_present(%struct.stk_camera* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %66

8:                                                ; preds = %1
  %9 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %10 = call i32 @stk_camera_read_reg(%struct.stk_camera* %9, i32 256, i32* %3)
  %11 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, -129
  %14 = call i32 @stk_camera_write_reg(%struct.stk_camera* %11, i32 256, i32 %13)
  %15 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %16 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %49

19:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %45, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAX_ISO_BUFS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %26 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %36 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @usb_kill_urb(i64 %42)
  br label %44

44:                                               ; preds = %34, %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %20

48:                                               ; preds = %20
  br label %49

49:                                               ; preds = %48, %8
  %50 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %51 = call i32 @unset_streaming(%struct.stk_camera* %50)
  %52 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %53 = getelementptr inbounds %struct.stk_camera, %struct.stk_camera* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @usb_set_interface(i32 %54, i32 0, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = call i32 @STK_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %49
  %60 = load %struct.stk_camera*, %struct.stk_camera** %2, align 8
  %61 = call i64 @stk_sensor_sleep(%struct.stk_camera* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = call i32 @STK_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %1
  ret i32 0
}

declare dso_local i64 @is_present(%struct.stk_camera*) #1

declare dso_local i32 @stk_camera_read_reg(%struct.stk_camera*, i32, i32*) #1

declare dso_local i32 @stk_camera_write_reg(%struct.stk_camera*, i32, i32) #1

declare dso_local i32 @usb_kill_urb(i64) #1

declare dso_local i32 @unset_streaming(%struct.stk_camera*) #1

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @STK_ERROR(i8*) #1

declare dso_local i64 @stk_sensor_sleep(%struct.stk_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
