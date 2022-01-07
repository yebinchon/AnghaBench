; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-vbi.c_vidioc_s_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-vbi.c_vidioc_s_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.saa7164_vbi_fh* }
%struct.saa7164_vbi_fh = type { %struct.saa7164_port* }
%struct.saa7164_port = type { i32 }
%struct.v4l2_ext_controls = type { i64, i32, i32, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i32 }

@V4L2_CTRL_CLASS_MPEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_ext_controls*)* @vidioc_s_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_ext_ctrls(%struct.file* %0, i8* %1, %struct.v4l2_ext_controls* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.saa7164_vbi_fh*, align 8
  %9 = alloca %struct.saa7164_port*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.v4l2_ext_control*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_ext_controls* %2, %struct.v4l2_ext_controls** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.saa7164_vbi_fh*, %struct.saa7164_vbi_fh** %14, align 8
  store %struct.saa7164_vbi_fh* %15, %struct.saa7164_vbi_fh** %8, align 8
  %16 = load %struct.saa7164_vbi_fh*, %struct.saa7164_vbi_fh** %8, align 8
  %17 = getelementptr inbounds %struct.saa7164_vbi_fh, %struct.saa7164_vbi_fh* %16, i32 0, i32 0
  %18 = load %struct.saa7164_port*, %struct.saa7164_port** %17, align 8
  store %struct.saa7164_port* %18, %struct.saa7164_port** %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @V4L2_CTRL_CLASS_MPEG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %57, %24
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %60

31:                                               ; preds = %25
  %32 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %32, i32 0, i32 3
  %34 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %34, i64 %36
  store %struct.v4l2_ext_control* %37, %struct.v4l2_ext_control** %12, align 8
  %38 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %12, align 8
  %39 = call i32 @saa7164_try_ctrl(%struct.v4l2_ext_control* %38, i32 0)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %60

46:                                               ; preds = %31
  %47 = load %struct.saa7164_port*, %struct.saa7164_port** %9, align 8
  %48 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %12, align 8
  %49 = call i32 @saa7164_set_ctrl(%struct.saa7164_port* %47, %struct.v4l2_ext_control* %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %60

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %25

60:                                               ; preds = %52, %42, %25
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %65

62:                                               ; preds = %3
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %60
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @saa7164_try_ctrl(%struct.v4l2_ext_control*, i32) #1

declare dso_local i32 @saa7164_set_ctrl(%struct.saa7164_port*, %struct.v4l2_ext_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
