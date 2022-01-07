; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cx2341x_getv4lflags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_cx2341x_getv4lflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_queryctrl = type { i32, i32 }
%struct.pvr2_ctl_info = type { i32* }

@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@ctrl_cx2341x_set = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*)* @ctrl_cx2341x_getv4lflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_cx2341x_getv4lflags(%struct.pvr2_ctrl* %0) #0 {
  %2 = alloca %struct.pvr2_ctrl*, align 8
  %3 = alloca %struct.v4l2_queryctrl, align 4
  %4 = alloca %struct.pvr2_ctl_info*, align 8
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %2, align 8
  %5 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %2, align 8
  %6 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %3, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %2, align 8
  %12 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @cx2341x_ctrl_query(i32* %14, %struct.v4l2_queryctrl* %3)
  %16 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %2, align 8
  %17 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = bitcast %struct.TYPE_4__* %18 to %struct.pvr2_ctl_info*
  store %struct.pvr2_ctl_info* %19, %struct.pvr2_ctl_info** %4, align 8
  %20 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %3, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.pvr2_ctl_info*, %struct.pvr2_ctl_info** %4, align 8
  %27 = getelementptr inbounds %struct.pvr2_ctl_info, %struct.pvr2_ctl_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.pvr2_ctl_info*, %struct.pvr2_ctl_info** %4, align 8
  %32 = getelementptr inbounds %struct.pvr2_ctl_info, %struct.pvr2_ctl_info* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %30, %25
  br label %44

34:                                               ; preds = %1
  %35 = load %struct.pvr2_ctl_info*, %struct.pvr2_ctl_info** %4, align 8
  %36 = getelementptr inbounds %struct.pvr2_ctl_info, %struct.pvr2_ctl_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32*, i32** @ctrl_cx2341x_set, align 8
  %41 = load %struct.pvr2_ctl_info*, %struct.pvr2_ctl_info** %4, align 8
  %42 = getelementptr inbounds %struct.pvr2_ctl_info, %struct.pvr2_ctl_info* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %33
  %45 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  ret i32 %46
}

declare dso_local i32 @cx2341x_ctrl_query(i32*, %struct.v4l2_queryctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
