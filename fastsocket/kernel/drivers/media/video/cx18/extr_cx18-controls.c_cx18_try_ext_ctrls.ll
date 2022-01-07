; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_try_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-controls.c_cx18_try_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, i32* }
%struct.cx18 = type { i32, i32 }
%struct.cx18_open_id = type { %struct.cx18* }

@V4L2_CTRL_CLASS_USER = common dso_local global i64 0, align 8
@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@VIDIOC_TRY_EXT_CTRLS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_try_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.cx18*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.cx18_open_id*
  %13 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %12, i32 0, i32 0
  %14 = load %struct.cx18*, %struct.cx18** %13, align 8
  store %struct.cx18* %14, %struct.cx18** %8, align 8
  %15 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_CTRL_CLASS_USER, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %44, %20
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @cx18_try_ctrl(%struct.file* %28, i8* %29, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %47

43:                                               ; preds = %27
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %21

47:                                               ; preds = %39, %21
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %4, align 4
  br label %67

49:                                               ; preds = %3
  %50 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.cx18*, %struct.cx18** %8, align 8
  %57 = getelementptr inbounds %struct.cx18, %struct.cx18* %56, i32 0, i32 1
  %58 = load %struct.cx18*, %struct.cx18** %8, align 8
  %59 = getelementptr inbounds %struct.cx18, %struct.cx18* %58, i32 0, i32 0
  %60 = call i32 @atomic_read(i32* %59)
  %61 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %62 = load i32, i32* @VIDIOC_TRY_EXT_CTRLS, align 4
  %63 = call i32 @cx2341x_ext_ctrls(i32* %57, i32 %60, %struct.v4l2_ext_controls* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  br label %67

64:                                               ; preds = %49
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %64, %55, %47
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @cx18_try_ctrl(%struct.file*, i8*, i32*) #1

declare dso_local i32 @cx2341x_ext_ctrls(i32*, i32, %struct.v4l2_ext_controls*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
