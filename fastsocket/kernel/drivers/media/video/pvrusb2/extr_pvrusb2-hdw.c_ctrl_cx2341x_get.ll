; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cx2341x_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cx2341x_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_ext_controls = type { i32, i32, i32, %struct.v4l2_ext_controls* }
%struct.v4l2_ext_control = type { i32, i32, i32, %struct.v4l2_ext_control* }

@VIDIOC_G_EXT_CTRLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32*)* @ctrl_cx2341x_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_cx2341x_get(%struct.pvr2_ctrl* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pvr2_ctrl*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_ext_controls, align 8
  %8 = alloca %struct.v4l2_ext_control, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = call i32 @memset(%struct.v4l2_ext_controls* %7, i32 0, i32 24)
  %10 = bitcast %struct.v4l2_ext_control* %8 to %struct.v4l2_ext_controls*
  %11 = call i32 @memset(%struct.v4l2_ext_controls* %10, i32 0, i32 24)
  %12 = bitcast %struct.v4l2_ext_control* %8 to %struct.v4l2_ext_controls*
  %13 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %7, i32 0, i32 3
  store %struct.v4l2_ext_controls* %12, %struct.v4l2_ext_controls** %13, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %7, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %16 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %8, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %4, align 8
  %22 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* @VIDIOC_G_EXT_CTRLS, align 4
  %26 = call i32 @cx2341x_ext_ctrls(i32* %24, i32 0, %struct.v4l2_ext_controls* %7, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %8, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @memset(%struct.v4l2_ext_controls*, i32, i32) #1

declare dso_local i32 @cx2341x_ext_ctrls(i32*, i32, %struct.v4l2_ext_controls*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
