; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_cropcap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_cropcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.vino_data_norm = type { i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_cropcap = type { i32, %struct.TYPE_4__, %struct.TYPE_6__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.vino_channel_settings = type { i64 }

@vino_drvdata = common dso_local global %struct.TYPE_5__* null, align 8
@vino_data_norms = common dso_local global %struct.vino_data_norm* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_cropcap*)* @vino_cropcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vino_cropcap(%struct.file* %0, i8* %1, %struct.v4l2_cropcap* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_cropcap*, align 8
  %8 = alloca %struct.vino_channel_settings*, align 8
  %9 = alloca %struct.vino_data_norm*, align 8
  %10 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_cropcap* %2, %struct.v4l2_cropcap** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vino_channel_settings* @video_drvdata(%struct.file* %11)
  store %struct.vino_channel_settings* %12, %struct.vino_channel_settings** %8, align 8
  %13 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %60 [
    i32 129, label %16
    i32 128, label %59
  ]

16:                                               ; preds = %3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vino_drvdata, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.vino_data_norm*, %struct.vino_data_norm** @vino_data_norms, align 8
  %22 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %8, align 8
  %23 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.vino_data_norm, %struct.vino_data_norm* %21, i64 %24
  store %struct.vino_data_norm* %25, %struct.vino_data_norm** %9, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vino_drvdata, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i32 0, i32* %32, align 4
  %33 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = load %struct.vino_data_norm*, %struct.vino_data_norm** %9, align 8
  %37 = getelementptr inbounds %struct.vino_data_norm, %struct.vino_data_norm* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.vino_data_norm*, %struct.vino_data_norm** %9, align 8
  %43 = getelementptr inbounds %struct.vino_data_norm, %struct.vino_data_norm* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %48, i32 0, i32 3
  %50 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %50, i32 0, i32 2
  %52 = call i32 @memcpy(i32* %49, %struct.TYPE_6__* %51, i32 4)
  %53 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.v4l2_cropcap*, %struct.v4l2_cropcap** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  br label %63

59:                                               ; preds = %3
  br label %60

60:                                               ; preds = %3, %59
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %64

63:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.vino_channel_settings* @video_drvdata(%struct.file*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
