; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_vidioc_querycap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-zoltrix.c_vidioc_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_capability = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"radio-zoltrix\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Zoltrix Radio\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ISA\00", align 1
@RADIO_VERSION = common dso_local global i32 0, align 4
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_capability*)* @vidioc_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_querycap(%struct.file* %0, i8* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %7 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @strlcpy(i32 %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 4)
  %11 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %12 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @strlcpy(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %15 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strlcpy(i32 %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %19 = load i32, i32* @RADIO_VERSION, align 4
  %20 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %21 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %23 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
