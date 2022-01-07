; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_status_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_status_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i64, %struct.v4l2_tuner, i32, i64 }
%struct.v4l2_tuner = type { i32, i32, i32, i32, i32, i32 }

@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@PVR2_TRACE_CHIPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"subdev status poll type=%u strength=%u audio=0x%x cap=0x%x low=%u hi=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvr2_hdw_status_poll(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca %struct.pvr2_hdw*, align 8
  %3 = alloca %struct.v4l2_tuner*, align 8
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %2, align 8
  %4 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %5 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %4, i32 0, i32 1
  store %struct.v4l2_tuner* %5, %struct.v4l2_tuner** %3, align 8
  %6 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %3, align 8
  %7 = call i32 @memset(%struct.v4l2_tuner* %6, i32 0, i32 24)
  %8 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %9 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 2
  %12 = load i32, i32* @tuner, align 4
  %13 = load i32, i32* @g_tuner, align 4
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %15 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %14, i32 0, i32 1
  %16 = call i32 @v4l2_device_call_all(i32* %11, i32 0, i32 %12, i32 %13, %struct.v4l2_tuner* %15)
  %17 = load i32, i32* @PVR2_TRACE_CHIPS, align 4
  %18 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %3, align 8
  %28 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %3, align 8
  %31 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %3, align 8
  %34 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pvr2_trace(i32 %17, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %2, align 8
  %38 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  ret void
}

declare dso_local i32 @memset(%struct.v4l2_tuner*, i32, i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_tuner*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
