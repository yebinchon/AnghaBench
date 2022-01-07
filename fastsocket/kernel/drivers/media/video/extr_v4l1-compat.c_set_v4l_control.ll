; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l1-compat.c_set_v4l_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l1-compat.c_set_v4l_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.file.0 = type opaque
%struct.v4l2_queryctrl = type opaque
%struct.v4l2_queryctrl.1 = type { i32, i32, i64, i32, i32, i32 }
%struct.v4l2_control = type { i32, i32, i64, i32, i32, i32 }

@VIDIOC_QUERYCTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"VIDIOC_QUERYCTRL: %d\0A\00", align 1
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_GRABBED = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_BOOLEAN = common dso_local global i64 0, align 8
@VIDIOC_S_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"VIDIOC_S_CTRL: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)*)* @set_v4l_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_v4l_control(%struct.file* %0, i32 %1, i32 %2, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)*, align 8
  %9 = alloca %struct.v4l2_queryctrl.1, align 8
  %10 = alloca %struct.v4l2_control, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)* %3, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)*, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)** %8, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = bitcast %struct.file* %15 to %struct.file.0*
  %17 = load i32, i32* @VIDIOC_QUERYCTRL, align 4
  %18 = bitcast %struct.v4l2_queryctrl.1* %9 to %struct.v4l2_queryctrl*
  %19 = call i32 %14(%struct.file.0* %16, i32 %17, %struct.v4l2_queryctrl* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %88, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @V4L2_CTRL_FLAG_GRABBED, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %88, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %45, 65535
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 65535, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %9, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @V4L2_CTRL_TYPE_BOOLEAN, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 65535, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %51, %48
  %58 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %9, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %9, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = sub nsw i32 %63, %65
  %67 = mul nsw i32 %61, %66
  %68 = add nsw i32 %67, 32767
  %69 = sdiv i32 %68, 65535
  %70 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.v4l2_queryctrl.1, %struct.v4l2_queryctrl.1* %9, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %10, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, %72
  store i32 %75, i32* %73, align 8
  %76 = load i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)*, i32 (%struct.file.0*, i32, %struct.v4l2_queryctrl*)** %8, align 8
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = bitcast %struct.file* %77 to %struct.file.0*
  %79 = load i32, i32* @VIDIOC_S_CTRL, align 4
  %80 = bitcast %struct.v4l2_control* %10 to %struct.v4l2_queryctrl*
  %81 = call i32 %76(%struct.file.0* %78, i32 %79, %struct.v4l2_queryctrl* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %57
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %84, %57
  br label %88

88:                                               ; preds = %87, %34, %28, %25
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
