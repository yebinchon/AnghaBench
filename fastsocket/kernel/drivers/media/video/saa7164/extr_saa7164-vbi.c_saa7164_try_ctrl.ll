; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-vbi.c_saa7164_try_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-vbi.c_saa7164_try_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_PS = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG2_TS = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_1x1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ASPECT_221x100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ext_control*, i32)* @saa7164_try_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7164_try_ctrl(%struct.v4l2_ext_control* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_ext_control*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.v4l2_ext_control* %0, %struct.v4l2_ext_control** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %75 [
    i32 131, label %11
    i32 132, label %25
    i32 130, label %37
    i32 128, label %51
    i32 129, label %63
  ]

11:                                               ; preds = %2
  %12 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %13 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_PS, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG2_TS, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %11
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %17
  br label %78

25:                                               ; preds = %2
  %26 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %27 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %32 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sle i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %30, %25
  br label %78

37:                                               ; preds = %2
  %38 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %39 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_1x1, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %45 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V4L2_MPEG_VIDEO_ASPECT_221x100, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %43, %37
  br label %78

51:                                               ; preds = %2
  %52 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %53 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %58 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %59, 255
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %56, %51
  br label %78

63:                                               ; preds = %2
  %64 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %65 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 1
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %3, align 8
  %70 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp sle i32 %71, 3
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %68, %63
  br label %78

75:                                               ; preds = %2
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %74, %62, %50, %36, %24
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
