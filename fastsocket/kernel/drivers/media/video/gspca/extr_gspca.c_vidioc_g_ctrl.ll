; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_g_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_gspca.c_vidioc_g_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.gspca_dev = type { i32, %struct.TYPE_6__, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ctrl* }
%struct.ctrl = type { i32 (%struct.gspca_dev*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_control*)* @vidioc_g_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_ctrl(%struct.file* %0, i8* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca %struct.ctrl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.gspca_dev*
  store %struct.gspca_dev* %13, %struct.gspca_dev** %8, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @get_ctrl(%struct.gspca_dev* %14, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %87

24:                                               ; preds = %3
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.ctrl*, %struct.ctrl** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %29, i64 %31
  store %struct.ctrl* %32, %struct.ctrl** %9, align 8
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 0
  %35 = call i64 @mutex_lock_interruptible(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* @ERESTARTSYS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %87

40:                                               ; preds = %24
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %82

48:                                               ; preds = %40
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 2
  store i64 0, i64* %50, align 8
  %51 = load %struct.ctrl*, %struct.ctrl** %9, align 8
  %52 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %51, i32 0, i32 0
  %53 = load i32 (%struct.gspca_dev*, i32*)*, i32 (%struct.gspca_dev*, i32*)** %52, align 8
  %54 = icmp ne i32 (%struct.gspca_dev*, i32*)* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.ctrl*, %struct.ctrl** %9, align 8
  %57 = getelementptr inbounds %struct.ctrl, %struct.ctrl* %56, i32 0, i32 0
  %58 = load i32 (%struct.gspca_dev*, i32*)*, i32 (%struct.gspca_dev*, i32*)** %57, align 8
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %60 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %60, i32 0, i32 0
  %62 = call i32 %58(%struct.gspca_dev* %59, i32* %61)
  store i32 %62, i32* %11, align 4
  br label %82

63:                                               ; preds = %48
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %65 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp ne %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %71 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %69, %63
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %81, %55, %45
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %84 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %82, %37, %21
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @get_ctrl(%struct.gspca_dev*, i32) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
