; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_s_parm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_s_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gspca_dev = type { i32, i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)* }

@GSPCA_MAX_FRAMES = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @vidioc_s_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.gspca_dev*
  store %struct.gspca_dev* %12, %struct.gspca_dev** %8, align 8
  %13 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @GSPCA_MAX_FRAMES, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20, %3
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  br label %36

32:                                               ; preds = %20
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %24
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 3
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)*, i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)** %40, align 8
  %42 = icmp ne i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)* %41, null
  br i1 %42, label %43, label %78

43:                                               ; preds = %36
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 2
  %46 = call i64 @mutex_lock_interruptible(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @ERESTARTSYS, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %79

51:                                               ; preds = %43
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %58 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %60 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)*, i32 (%struct.gspca_dev*, %struct.v4l2_streamparm*)** %62, align 8
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %65 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %66 = call i32 %63(%struct.gspca_dev* %64, %struct.v4l2_streamparm* %65)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %10, align 4
  br label %73

70:                                               ; preds = %51
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %56
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %75 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %74, i32 0, i32 2
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %73, %48
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
