; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx8800_fh = type { i64, %struct.cx8800_dev* }
%struct.cx8800_dev = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx8800_fh*, align 8
  %9 = alloca %struct.cx8800_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cx8800_fh*
  store %struct.cx8800_fh* %13, %struct.cx8800_fh** %8, align 8
  %14 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %15 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %14, i32 0, i32 1
  %16 = load %struct.cx8800_dev*, %struct.cx8800_dev** %15, align 8
  store %struct.cx8800_dev* %16, %struct.cx8800_dev** %9, align 8
  %17 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %18 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %24 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %56

31:                                               ; preds = %22, %3
  %32 = load i32, i32* %7, align 4
  %33 = zext i32 %32 to i64
  %34 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %35 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %31
  %42 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %43 = call i32 @get_ressource(%struct.cx8800_fh* %42)
  store i32 %43, i32* %11, align 4
  %44 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %45 = call i32 @get_queue(%struct.cx8800_fh* %44)
  %46 = call i32 @videobuf_streamoff(i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %4, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.cx8800_dev*, %struct.cx8800_dev** %9, align 8
  %53 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @res_free(%struct.cx8800_dev* %52, %struct.cx8800_fh* %53, i32 %54)
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %51, %49, %38, %28
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @get_ressource(%struct.cx8800_fh*) #1

declare dso_local i32 @videobuf_streamoff(i32) #1

declare dso_local i32 @get_queue(%struct.cx8800_fh*) #1

declare dso_local i32 @res_free(%struct.cx8800_dev*, %struct.cx8800_fh*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
