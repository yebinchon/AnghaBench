; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i64, i64 }

@tvp5150_qctrl = common dso_local global %struct.TYPE_3__* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"s_ctrl: id=%d, value=%d\0A\00", align 1
@TVP5150_BRIGHT_CTL = common dso_local global i32 0, align 4
@TVP5150_CONTRAST_CTL = common dso_local global i32 0, align 4
@TVP5150_SATURATION_CTL = common dso_local global i32 0, align 4
@TVP5150_HUE_CTL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @tvp5150_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvp5150_qctrl, align 8
  %9 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %8)
  store i64 %9, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %10

10:                                               ; preds = %58, %2
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %10
  %15 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvp5150_qctrl, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %17, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %58

25:                                               ; preds = %14
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvp5150_qctrl, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %25
  %36 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @tvp5150_qctrl, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35, %25
  %46 = load i32, i32* @ERANGE, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %96

48:                                               ; preds = %35
  %49 = load i32, i32* @debug, align 4
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %51 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @v4l2_dbg(i32 1, i32 %49, %struct.v4l2_subdev* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %53, i64 %56)
  br label %61

58:                                               ; preds = %24
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %10

61:                                               ; preds = %48, %10
  %62 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %63 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  switch i64 %64, label %93 [
    i64 131, label %65
    i64 130, label %72
    i64 128, label %79
    i64 129, label %86
  ]

65:                                               ; preds = %61
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %67 = load i32, i32* @TVP5150_BRIGHT_CTL, align 4
  %68 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @tvp5150_write(%struct.v4l2_subdev* %66, i32 %67, i64 %70)
  store i32 0, i32* %3, align 4
  br label %96

72:                                               ; preds = %61
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %74 = load i32, i32* @TVP5150_CONTRAST_CTL, align 4
  %75 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @tvp5150_write(%struct.v4l2_subdev* %73, i32 %74, i64 %77)
  store i32 0, i32* %3, align 4
  br label %96

79:                                               ; preds = %61
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %81 = load i32, i32* @TVP5150_SATURATION_CTL, align 4
  %82 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @tvp5150_write(%struct.v4l2_subdev* %80, i32 %81, i64 %84)
  store i32 0, i32* %3, align 4
  br label %96

86:                                               ; preds = %61
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %88 = load i32, i32* @TVP5150_HUE_CTL, align 4
  %89 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @tvp5150_write(%struct.v4l2_subdev* %87, i32 %88, i64 %91)
  store i32 0, i32* %3, align 4
  br label %96

93:                                               ; preds = %61
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %86, %79, %72, %65, %45
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64, i64) #1

declare dso_local i32 @tvp5150_write(%struct.v4l2_subdev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
