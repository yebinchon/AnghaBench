; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l1-compat.c_get_v4l_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l1-compat.c_get_v4l_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file.0 = type opaque
%struct.v4l2_queryctrl = type opaque
%struct.v4l2_queryctrl.1 = type { i32, i32, i32, i32, i32 }
%struct.v4l2_control = type { i32, i32, i32, i32, i32 }

@VIDIOC_QUERYCTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"VIDIOC_QUERYCTRL: %d\0A\00", align 1
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@VIDIOC_G_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"VIDIOC_G_CTRL: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)*)* @get_v4l_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_v4l_control(%struct.file* %0, i32 %1, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)*, align 8
  %8 = alloca %struct.v4l2_queryctrl.1, align 4
  %9 = alloca %struct.v4l2_control, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)* %2, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %8, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)*, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = bitcast %struct.file* %14 to %struct.file.0*
  %16 = load i32, i32* @VIDIOC_QUERYCTRL, align 4
  %17 = bitcast %struct.v4l2_queryctrl.1* %8 to %struct.v4l2_queryctrl*
  %18 = call i32 %13(%struct.file.0* %15, i32 %16, %struct.v4l2_queryctrl* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %8, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %61, label %33

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)*, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)** %7, align 8
  %38 = load %struct.file*, %struct.file** %5, align 8
  %39 = bitcast %struct.file* %38 to %struct.file.0*
  %40 = load i32, i32* @VIDIOC_G_CTRL, align 4
  %41 = bitcast %struct.v4l2_control* %9 to %struct.v4l2_queryctrl*
  %42 = call i32 %37(%struct.file.0* %39, i32 %40, %struct.v4l2_queryctrl* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store i32 0, i32* %4, align 4
  br label %62

48:                                               ; preds = %33
  %49 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %8, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %50, %52
  %54 = mul nsw i32 %53, 65535
  %55 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %8, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %8, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %56, %58
  %60 = call i32 @DIV_ROUND_CLOSEST(i32 %54, i32 %59)
  store i32 %60, i32* %4, align 4
  br label %62

61:                                               ; preds = %27, %24
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %48, %45
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
