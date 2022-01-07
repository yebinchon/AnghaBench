; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vidioc_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vidioc_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.file = type { i32 }
%struct.v4l2_control = type { i64, i64 }
%struct.vivi_fh = type { %struct.vivi_dev* }
%struct.vivi_dev = type { i64* }

@vivi_qctrl = common dso_local global %struct.TYPE_3__* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.vivi_fh*, align 8
  %9 = alloca %struct.vivi_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.vivi_fh*
  store %struct.vivi_fh* %12, %struct.vivi_fh** %8, align 8
  %13 = load %struct.vivi_fh*, %struct.vivi_fh** %8, align 8
  %14 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %13, i32 0, i32 0
  %15 = load %struct.vivi_dev*, %struct.vivi_dev** %14, align 8
  store %struct.vivi_dev* %15, %struct.vivi_dev** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %68, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vivi_qctrl, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %71

21:                                               ; preds = %16
  %22 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vivi_qctrl, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %21
  %33 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vivi_qctrl, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %35, %41
  br i1 %42, label %54, label %43

43:                                               ; preds = %32
  %44 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vivi_qctrl, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %46, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43, %32
  %55 = load i32, i32* @ERANGE, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %74

57:                                               ; preds = %43
  %58 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.vivi_dev*, %struct.vivi_dev** %9, align 8
  %62 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  store i64 %60, i64* %66, align 8
  store i32 0, i32* %4, align 4
  br label %74

67:                                               ; preds = %21
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %16

71:                                               ; preds = %16
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %57, %54
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
