; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cx2341x_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cx2341x_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_2__*, %struct.pvr2_hdw* }
%struct.TYPE_2__ = type { i32 }
%struct.pvr2_hdw = type { i32, i32, i32, i32 }
%struct.v4l2_ext_controls = type { i32, i32, i32, %struct.v4l2_ext_controls* }
%struct.v4l2_ext_control = type { i32, i32, i32, %struct.v4l2_ext_control* }

@VIDIOC_S_EXT_CTRLS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32, i32)* @ctrl_cx2341x_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_cx2341x_set(%struct.pvr2_ctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pvr2_hdw*, align 8
  %10 = alloca %struct.v4l2_ext_controls, align 8
  %11 = alloca %struct.v4l2_ext_control, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %13 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %12, i32 0, i32 1
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %13, align 8
  store %struct.pvr2_hdw* %14, %struct.pvr2_hdw** %9, align 8
  %15 = call i32 @memset(%struct.v4l2_ext_controls* %10, i32 0, i32 24)
  %16 = bitcast %struct.v4l2_ext_control* %11 to %struct.v4l2_ext_controls*
  %17 = call i32 @memset(%struct.v4l2_ext_controls* %16, i32 0, i32 24)
  %18 = bitcast %struct.v4l2_ext_control* %11 to %struct.v4l2_ext_controls*
  %19 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %10, i32 0, i32 3
  store %struct.v4l2_ext_controls* %18, %struct.v4l2_ext_controls** %19, align 8
  %20 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %10, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %22 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %11, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %11, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %30 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %29, i32 0, i32 2
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %32 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @VIDIOC_S_EXT_CTRLS, align 4
  %35 = call i32 @cx2341x_ext_ctrls(i32* %30, i32 %33, %struct.v4l2_ext_controls* %10, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %3
  %41 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %42 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %41, i32 0, i32 2
  %43 = load i32, i32* @VIDIOC_S_EXT_CTRLS, align 4
  %44 = call i32 @cx2341x_ext_ctrls(i32* %42, i32 0, %struct.v4l2_ext_controls* %10, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %49 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %40
  br label %51

51:                                               ; preds = %50, %3
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %51
  %57 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %9, align 8
  %58 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %57, i32 0, i32 1
  store i32 1, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %54
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.v4l2_ext_controls*, i32, i32) #1

declare dso_local i32 @cx2341x_ext_ctrls(i32*, i32, %struct.v4l2_ext_controls*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
