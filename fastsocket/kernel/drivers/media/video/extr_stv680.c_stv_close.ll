; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stv680.c_stv_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.video_device* }
%struct.video_device = type { i32 }
%struct.usb_stv = type { i32, i64, i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STV680_NUMFRAMES = common dso_local global i32 0, align 4
@FRAME_UNUSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"STV(e): stop_video failed in stv_close\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"STV(i): device unregistered\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @stv_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv_close(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.video_device*, align 8
  %4 = alloca %struct.usb_stv*, align 8
  %5 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.video_device*, %struct.video_device** %7, align 8
  store %struct.video_device* %8, %struct.video_device** %3, align 8
  %9 = load %struct.video_device*, %struct.video_device** %3, align 8
  %10 = call %struct.usb_stv* @video_get_drvdata(%struct.video_device* %9)
  store %struct.usb_stv* %10, %struct.usb_stv** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %24, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @STV680_NUMFRAMES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = load i32, i32* @FRAME_UNUSED, align 4
  %17 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %18 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %17, i32 0, i32 5
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %16, i32* %23, align 4
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %11

27:                                               ; preds = %11
  %28 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %29 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %34 = call i32 @stv680_stop_stream(%struct.usb_stv* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %37 = call i32 @stv_stop_video(%struct.usb_stv* %36)
  store i32 %37, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = call i32 @PDEBUG(i32 1, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %35
  %42 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %43 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %46 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @STV680_NUMFRAMES, align 4
  %49 = mul nsw i32 %47, %48
  %50 = call i32 @rvfree(i32 %44, i32 %49)
  %51 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %52 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %54 = getelementptr inbounds %struct.usb_stv, %struct.usb_stv* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %41
  %58 = load %struct.usb_stv*, %struct.usb_stv** %4, align 8
  %59 = call i32 @kfree(%struct.usb_stv* %58)
  store %struct.usb_stv* null, %struct.usb_stv** %4, align 8
  %60 = call i32 @PDEBUG(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %41
  %62 = load %struct.file*, %struct.file** %2, align 8
  %63 = getelementptr inbounds %struct.file, %struct.file* %62, i32 0, i32 0
  store %struct.video_device* null, %struct.video_device** %63, align 8
  ret i32 0
}

declare dso_local %struct.usb_stv* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @stv680_stop_stream(%struct.usb_stv*) #1

declare dso_local i32 @stv_stop_video(%struct.usb_stv*) #1

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @rvfree(i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_stv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
