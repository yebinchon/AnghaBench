; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_streamon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.gspca_dev = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.file* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@gspca_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %72

18:                                               ; preds = %3
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 1
  %21 = call i64 @mutex_lock_interruptible(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ERESTARTSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %72

26:                                               ; preds = %18
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 7
  %29 = load %struct.file*, %struct.file** %28, align 8
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = icmp ne %struct.file* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %67

35:                                               ; preds = %26
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %35
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 6
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %40, %35
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %67

54:                                               ; preds = %40
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %56 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %54
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %61 = call i32 @gspca_init_transfer(%struct.gspca_dev* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %67

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %54
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %66, %64, %51, %32
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %69 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %68, i32 0, i32 1
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %23, %15
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @gspca_init_transfer(%struct.gspca_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
