; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_frequency.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i64, i64, i32 }
%struct.em28xx_fh = type { i32, %struct.em28xx* }
%struct.em28xx = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i64 0, align 8
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frequency*)* @vidioc_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frequency*, align 8
  %8 = alloca %struct.em28xx_fh*, align 8
  %9 = alloca %struct.em28xx*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.em28xx_fh*
  store %struct.em28xx_fh* %12, %struct.em28xx_fh** %8, align 8
  %13 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %14 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %13, i32 0, i32 1
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
  br label %80

22:                                               ; preds = %3
  %23 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 0, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %80

30:                                               ; preds = %22
  %31 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %32 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 0, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @V4L2_TUNER_ANALOG_TV, align 8
  %40 = icmp ne i64 %38, %39
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %80

49:                                               ; preds = %41
  %50 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %51 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 1, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %59 = icmp ne i64 %57, %58
  br label %60

60:                                               ; preds = %54, %49
  %61 = phi i1 [ false, %49 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %80

68:                                               ; preds = %60
  %69 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %73 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %75 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %74, i32 0, i32 0
  %76 = load i32, i32* @tuner, align 4
  %77 = load i32, i32* @s_frequency, align 4
  %78 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %7, align 8
  %79 = call i32 @v4l2_device_call_all(i32* %75, i32 0, i32 %76, i32 %77, %struct.v4l2_frequency* %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %68, %65, %46, %27, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @check_dev(%struct.em28xx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
