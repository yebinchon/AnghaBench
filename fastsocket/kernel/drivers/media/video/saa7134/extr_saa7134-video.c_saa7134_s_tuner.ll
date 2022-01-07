; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i32, i32 }
%struct.saa7134_fh = type { i32, %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@UNSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @saa7134_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.saa7134_fh*, align 8
  %9 = alloca %struct.saa7134_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.saa7134_fh*
  store %struct.saa7134_fh* %14, %struct.saa7134_fh** %8, align 8
  %15 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %16 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %15, i32 0, i32 1
  %17 = load %struct.saa7134_dev*, %struct.saa7134_dev** %16, align 8
  store %struct.saa7134_dev* %17, %struct.saa7134_dev** %9, align 8
  %18 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %19 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %18, i32 0, i32 1
  %20 = load %struct.saa7134_fh*, %struct.saa7134_fh** %8, align 8
  %21 = getelementptr inbounds %struct.saa7134_fh, %struct.saa7134_fh* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @v4l2_prio_check(i32* %19, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 0, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %4, align 4
  br label %57

28:                                               ; preds = %3
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @UNSET, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %38 = call i32 @saa7134_tvaudio_getstereo(%struct.saa7134_dev* %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @saa7134_tvaudio_rx2mode(i32 %41)
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %36, %28
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  %54 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %49, %43
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @v4l2_prio_check(i32*, i32) #1

declare dso_local i32 @saa7134_tvaudio_getstereo(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_tvaudio_rx2mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
