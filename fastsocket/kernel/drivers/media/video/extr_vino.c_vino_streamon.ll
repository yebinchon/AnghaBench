; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vino_channel_settings = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no buffers allocated\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"vino_queue_get_incoming() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"couldn't start capture\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vino_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vino_channel_settings*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %11)
  store %struct.vino_channel_settings* %12, %struct.vino_channel_settings** %8, align 8
  %13 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %14 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %63

20:                                               ; preds = %3
  %21 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %22 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %63

26:                                               ; preds = %20
  %27 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %28 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %27, i32 0, i32 1
  %29 = call i32 @vino_queue_get_length(i32* %28)
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %63

35:                                               ; preds = %26
  %36 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %37 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %36, i32 0, i32 1
  %38 = call i32 @vino_queue_get_incoming(i32* %37, i32* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = call i32 @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %63

45:                                               ; preds = %35
  %46 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %47 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i32, i32* %9, align 4
  %49 = icmp ugt i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %52 = call i32 @vino_capture_next(%struct.vino_channel_settings* %51, i32 1)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %57 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = call i32 @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %63

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %45
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %55, %41, %31, %25, %17
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @vino_queue_get_length(i32*) #1

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @vino_queue_get_incoming(i32*, i32*) #1

declare dso_local i32 @vino_capture_next(%struct.vino_channel_settings*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
