; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-video.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx8800_fh = type { i64, %struct.cx8800_dev* }
%struct.cx8800_dev = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx8800_fh*, align 8
  %9 = alloca %struct.cx8800_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.cx8800_fh*
  store %struct.cx8800_fh* %11, %struct.cx8800_fh** %8, align 8
  %12 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %13 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %12, i32 0, i32 1
  %14 = load %struct.cx8800_dev*, %struct.cx8800_dev** %13, align 8
  store %struct.cx8800_dev* %14, %struct.cx8800_dev** %9, align 8
  %15 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %16 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %22 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %25 = icmp ne i64 %23, %24
  br label %26

26:                                               ; preds = %20, %3
  %27 = phi i1 [ false, %3 ], [ %25, %20 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %65

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %38 = getelementptr inbounds %struct.cx8800_fh, %struct.cx8800_fh* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %65

47:                                               ; preds = %34
  %48 = load %struct.cx8800_dev*, %struct.cx8800_dev** %9, align 8
  %49 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %50 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %51 = call i32 @get_ressource(%struct.cx8800_fh* %50)
  %52 = call i32 @res_get(%struct.cx8800_dev* %48, %struct.cx8800_fh* %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %47
  %62 = load %struct.cx8800_fh*, %struct.cx8800_fh** %8, align 8
  %63 = call i32 @get_queue(%struct.cx8800_fh* %62)
  %64 = call i32 @videobuf_streamon(i32 %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %58, %44, %31
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @res_get(%struct.cx8800_dev*, %struct.cx8800_fh*, i32) #1

declare dso_local i32 @get_ressource(%struct.cx8800_fh*) #1

declare dso_local i32 @videobuf_streamon(i32) #1

declare dso_local i32 @get_queue(%struct.cx8800_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
