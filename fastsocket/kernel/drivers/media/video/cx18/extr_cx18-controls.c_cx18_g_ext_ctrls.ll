; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_g_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_g_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cx18 = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.cx18_open_id = type { %struct.cx18* }

@V4L2_CTRL_CLASS_USER = common dso_local global i64 0, align 8
@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@VIDIOC_G_EXT_CTRLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_g_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca %struct.v4l2_control, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.cx18_open_id*
  %14 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %13, i32 0, i32 0
  %15 = load %struct.cx18*, %struct.cx18** %14, align 8
  store %struct.cx18* %15, %struct.cx18** %8, align 8
  %16 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_CTRL_CLASS_USER, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %65, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  %29 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = load %struct.cx18*, %struct.cx18** %8, align 8
  %48 = call i32 @cx18_g_ctrl(%struct.cx18* %47, %struct.v4l2_control* %9)
  store i32 %48, i32* %11, align 4
  %49 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i32 %50, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %28
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %68

64:                                               ; preds = %28
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  br label %22

68:                                               ; preds = %60, %22
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %4, align 4
  br label %85

70:                                               ; preds = %3
  %71 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.cx18*, %struct.cx18** %8, align 8
  %78 = getelementptr inbounds %struct.cx18, %struct.cx18* %77, i32 0, i32 0
  %79 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %80 = load i32, i32* @VIDIOC_G_EXT_CTRLS, align 4
  %81 = call i32 @cx2341x_ext_ctrls(i32* %78, i32 0, %struct.v4l2_ext_controls* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  br label %85

82:                                               ; preds = %70
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %82, %76, %68
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @cx18_g_ctrl(%struct.cx18*, %struct.v4l2_control*) #1

declare dso_local i32 @cx2341x_ext_ctrls(i32*, i32, %struct.v4l2_ext_controls*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
