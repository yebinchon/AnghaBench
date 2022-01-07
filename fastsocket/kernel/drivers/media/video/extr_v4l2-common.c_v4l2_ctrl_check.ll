; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_v4l2-common.c_v4l2_ctrl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ext_control = type { i64 }
%struct.v4l2_queryctrl = type { i32, i64, i64, i64 }

@V4L2_CTRL_FLAG_DISABLED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_GRABBED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_STRING = common dso_local global i64 0, align 8
@V4L2_CTRL_TYPE_BUTTON = common dso_local global i64 0, align 8
@V4L2_CTRL_TYPE_INTEGER64 = common dso_local global i64 0, align 8
@V4L2_CTRL_TYPE_CTRL_CLASS = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@V4L2_CTRL_TYPE_MENU = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_ctrl_check(%struct.v4l2_ext_control* %0, %struct.v4l2_queryctrl* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_ext_control*, align 8
  %6 = alloca %struct.v4l2_queryctrl*, align 8
  %7 = alloca i8**, align 8
  store %struct.v4l2_ext_control* %0, %struct.v4l2_ext_control** %5, align 8
  store %struct.v4l2_queryctrl* %1, %struct.v4l2_queryctrl** %6, align 8
  store i8** %2, i8*** %7, align 8
  %8 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %9 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @V4L2_CTRL_FLAG_DISABLED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %105

17:                                               ; preds = %3
  %18 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %19 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @V4L2_CTRL_FLAG_GRABBED, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %105

27:                                               ; preds = %17
  %28 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %29 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_CTRL_TYPE_STRING, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %105

34:                                               ; preds = %27
  %35 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %36 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @V4L2_CTRL_TYPE_BUTTON, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %34
  %41 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_CTRL_TYPE_INTEGER64, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @V4L2_CTRL_TYPE_CTRL_CLASS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %40, %34
  store i32 0, i32* %4, align 4
  br label %105

53:                                               ; preds = %46
  %54 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61, %53
  %70 = load i32, i32* @ERANGE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %105

72:                                               ; preds = %61
  %73 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %6, align 8
  %74 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @V4L2_CTRL_TYPE_MENU, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %72
  %79 = load i8**, i8*** %7, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %104

81:                                               ; preds = %78
  %82 = load i8**, i8*** %7, align 8
  %83 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i8*, i8** %82, i64 %85
  %87 = load i8*, i8** %86, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %100, label %89

89:                                               ; preds = %81
  %90 = load i8**, i8*** %7, align 8
  %91 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %92 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds i8*, i8** %90, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %89, %81
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %105

103:                                              ; preds = %89
  br label %104

104:                                              ; preds = %103, %78, %72
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %100, %69, %52, %33, %24, %14
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
