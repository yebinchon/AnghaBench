; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-ioctl.c_ivtv_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.ivtv = type { i32 }
%struct.ivtv_open_id = type { %struct.ivtv* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"v4l2 ioctl: set frequency %d\0A\00", align 1
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.ivtv_open_id*
  %11 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %10, i32 0, i32 0
  %12 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  store %struct.ivtv* %12, %struct.ivtv** %8, align 8
  %13 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %34

20:                                               ; preds = %3
  %21 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %22 = call i32 @ivtv_mute(%struct.ivtv* %21)
  %23 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %28 = load i32, i32* @tuner, align 4
  %29 = load i32, i32* @s_frequency, align 4
  %30 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %31 = call i32 @ivtv_call_all(%struct.ivtv* %27, i32 %28, i32 %29, %struct.v4l2_frequency* %30)
  %32 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %33 = call i32 @ivtv_unmute(%struct.ivtv* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %20, %17
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @ivtv_mute(%struct.ivtv*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32) #1

declare dso_local i32 @ivtv_call_all(%struct.ivtv*, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @ivtv_unmute(%struct.ivtv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
