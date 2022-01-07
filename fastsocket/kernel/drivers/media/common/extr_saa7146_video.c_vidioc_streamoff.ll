; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/extr_saa7146_video.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7146_fh = type { i32, i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.saa7146_fh* }

@.str = private unnamed_addr constant [27 x i8] c"VIDIOC_STREAMOFF, type:%d\0A\00", align 1
@STATUS_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"not capturing.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"capturing, but in another open.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"warning: videobuf_streamoff() failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7146_fh*, align 8
  %9 = alloca %struct.saa7146_dev*, align 8
  %10 = alloca %struct.saa7146_vv*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.saa7146_fh*
  store %struct.saa7146_fh* %13, %struct.saa7146_fh** %8, align 8
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %14, i32 0, i32 2
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %15, align 8
  store %struct.saa7146_dev* %16, %struct.saa7146_dev** %9, align 8
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 0
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %18, align 8
  store %struct.saa7146_vv* %19, %struct.saa7146_vv** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @DEB_D(i8* %22)
  %24 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  %25 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @STATUS_CAPTURE, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @STATUS_CAPTURE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = call i32 @DEB_S(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %76

33:                                               ; preds = %3
  %34 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  %35 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %34, i32 0, i32 1
  %36 = load %struct.saa7146_fh*, %struct.saa7146_fh** %35, align 8
  %37 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %38 = icmp ne %struct.saa7146_fh* %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = call i32 @DEB_S(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %76

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %51 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %50, i32 0, i32 1
  %52 = call i32 @videobuf_streamoff(i32* %51)
  store i32 %52, i32* %11, align 4
  br label %62

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %59 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %58, i32 0, i32 0
  %60 = call i32 @videobuf_streamoff(i32* %59)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 0, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = call i32 @DEB_D(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %67 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %68 = load %struct.file*, %struct.file** %5, align 8
  %69 = call i32 @video_end(%struct.saa7146_fh* %67, %struct.file* %68)
  br label %74

70:                                               ; preds = %62
  %71 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = call i32 @video_end(%struct.saa7146_fh* %71, %struct.file* %72)
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %39, %31
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

declare dso_local i32 @video_end(%struct.saa7146_fh*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
