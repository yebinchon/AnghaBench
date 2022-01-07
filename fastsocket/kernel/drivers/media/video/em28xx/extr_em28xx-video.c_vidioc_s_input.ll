; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.em28xx_fh = type { %struct.em28xx* }
%struct.em28xx = type { i32 }
%struct.TYPE_2__ = type { i64 }

@MAX_EM28XX_INPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.em28xx_fh*, align 8
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.em28xx_fh*
  store %struct.em28xx_fh* %12, %struct.em28xx_fh** %8, align 8
  %13 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %14 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %13, i32 0, i32 0
  %15 = load %struct.em28xx*, %struct.em28xx** %14, align 8
  store %struct.em28xx* %15, %struct.em28xx** %9, align 8
  %16 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %17 = call i32 @check_dev(%struct.em28xx* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAX_EM28XX_INPUT, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %47

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.TYPE_2__* @INPUT(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 0, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %47

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %41 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %43 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %44 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @video_mux(%struct.em28xx* %42, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %38, %35, %26, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @check_dev(%struct.em28xx*) #1

declare dso_local %struct.TYPE_2__* @INPUT(i32) #1

declare dso_local i32 @video_mux(%struct.em28xx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
