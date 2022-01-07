; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.em28xx_fh = type { i32, i32, i32, i32, %struct.em28xx* }
%struct.em28xx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"vidioc_streamon fh=%p t=%d fh->res=%d dev->res=%d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
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
  %14 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %13, i32 0, i32 4
  %15 = load %struct.em28xx*, %struct.em28xx** %14, align 8
  store %struct.em28xx* %15, %struct.em28xx** %9, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %19 = call i32 @check_dev(%struct.em28xx* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %83

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %27 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %83

36:                                               ; preds = %24
  %37 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %40 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.em28xx*, %struct.em28xx** %9, align 8
  %43 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @em28xx_videodbg(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.em28xx_fh* %37, i32 %38, i32 %41, i32 %44)
  %46 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %47 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %48 = call i32 @get_ressource(%struct.em28xx_fh* %47)
  %49 = call i32 @res_get(%struct.em28xx_fh* %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %36
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %83

58:                                               ; preds = %36
  %59 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %60 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %67 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %66, i32 0, i32 2
  %68 = call i32 @videobuf_streamon(i32* %67)
  store i32 %68, i32* %10, align 4
  br label %81

69:                                               ; preds = %58
  %70 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %71 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = load %struct.em28xx_fh*, %struct.em28xx_fh** %8, align 8
  %78 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %77, i32 0, i32 1
  %79 = call i32 @videobuf_streamon(i32* %78)
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %76, %69
  br label %81

81:                                               ; preds = %80, %65
  %82 = load i32, i32* %10, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %55, %33, %22
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i32 @check_dev(%struct.em28xx*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @em28xx_videodbg(i8*, %struct.em28xx_fh*, i32, i32, i32) #1

declare dso_local i32 @res_get(%struct.em28xx_fh*, i32) #1

declare dso_local i32 @get_ressource(%struct.em28xx_fh*) #1

declare dso_local i32 @videobuf_streamon(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
