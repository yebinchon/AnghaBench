; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_prepare_ext_ctrls.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-ctrls.c_prepare_ext_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_handler = type { i32 }
%struct.v4l2_ext_controls = type { i64, i64, i64, %struct.v4l2_ext_control* }
%struct.v4l2_ext_control = type { i64 }
%struct.ctrl_helper = type { i32, %struct.v4l2_ctrl* }
%struct.v4l2_ctrl = type { i32 }

@V4L2_CTRL_ID_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CID_PRIVATE_BASE = common dso_local global i64 0, align 8
@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl_handler*, %struct.v4l2_ext_controls*, %struct.ctrl_helper*, i32)* @prepare_ext_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_ext_ctrls(%struct.v4l2_ctrl_handler* %0, %struct.v4l2_ext_controls* %1, %struct.ctrl_helper* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca %struct.v4l2_ext_controls*, align 8
  %8 = alloca %struct.ctrl_helper*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.v4l2_ext_control*, align 8
  %12 = alloca %struct.v4l2_ctrl*, align 8
  %13 = alloca i64, align 8
  store %struct.v4l2_ctrl_handler* %0, %struct.v4l2_ctrl_handler** %6, align 8
  store %struct.v4l2_ext_controls* %1, %struct.v4l2_ext_controls** %7, align 8
  store %struct.ctrl_helper* %2, %struct.ctrl_helper** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %88, %4
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %91

20:                                               ; preds = %14
  %21 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %21, i32 0, i32 3
  %23 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %22, align 8
  %24 = load i64, i64* %10, align 8
  %25 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %23, i64 %24
  store %struct.v4l2_ext_control* %25, %struct.v4l2_ext_control** %11, align 8
  %26 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %11, align 8
  %27 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @V4L2_CTRL_ID_MASK, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %13, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %20
  %38 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @V4L2_CTRL_ID2CLASS(i64 %43)
  %45 = load %struct.v4l2_ext_controls*, %struct.v4l2_ext_controls** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_ext_controls, %struct.v4l2_ext_controls* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %92

52:                                               ; preds = %42, %37
  %53 = load i64, i64* %13, align 8
  %54 = load i64, i64* @V4L2_CID_PRIVATE_BASE, align 8
  %55 = icmp uge i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %92

59:                                               ; preds = %52
  %60 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler* %60, i64 %61)
  store %struct.v4l2_ctrl* %62, %struct.v4l2_ctrl** %12, align 8
  %63 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %64 = icmp eq %struct.v4l2_ctrl* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %92

68:                                               ; preds = %59
  %69 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %70 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %92

78:                                               ; preds = %68
  %79 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %12, align 8
  %80 = load %struct.ctrl_helper*, %struct.ctrl_helper** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %80, i64 %81
  %83 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %82, i32 0, i32 1
  store %struct.v4l2_ctrl* %79, %struct.v4l2_ctrl** %83, align 8
  %84 = load %struct.ctrl_helper*, %struct.ctrl_helper** %8, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %84, i64 %85
  %87 = getelementptr inbounds %struct.ctrl_helper, %struct.ctrl_helper* %86, i32 0, i32 0
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %78
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %10, align 8
  br label %14

91:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %75, %65, %56, %49
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i64 @V4L2_CTRL_ID2CLASS(i64) #1

declare dso_local %struct.v4l2_ctrl* @v4l2_ctrl_find(%struct.v4l2_ctrl_handler*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
