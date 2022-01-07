; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_radio_g_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_radio_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32 }
%struct.cx231xx = type { i32 }
%struct.cx231xx_fh = type { %struct.cx231xx* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_tuner = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @radio_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.cx231xx_fh*
  %11 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %10, i32 0, i32 0
  %12 = load %struct.cx231xx*, %struct.cx231xx** %11, align 8
  store %struct.cx231xx* %12, %struct.cx231xx** %8, align 8
  %13 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %36

23:                                               ; preds = %3
  %24 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @strcpy(i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %32 = load i32, i32* @tuner, align 4
  %33 = load i32, i32* @s_tuner, align 4
  %34 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %35 = call i32 @call_all(%struct.cx231xx* %31, i32 %32, i32 %33, %struct.v4l2_tuner* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %23, %20
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @call_all(%struct.cx231xx*, i32, i32, %struct.v4l2_tuner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
