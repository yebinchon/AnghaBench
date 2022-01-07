; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_s_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v011.c_mt9v011_s_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_control = type { i64, i64 }
%struct.mt9v011 = type { i64, i64, i64, i64, i64 }

@mt9v011_qctrl = common dso_local global %struct.TYPE_3__* null, align 8
@ERANGE = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"s_ctrl: id=%d, value=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_control*)* @mt9v011_s_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v011_s_ctrl(%struct.v4l2_subdev* %0, %struct.v4l2_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_control*, align 8
  %6 = alloca %struct.mt9v011*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_control* %1, %struct.v4l2_control** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev* %9)
  store %struct.mt9v011* %10, %struct.mt9v011** %6, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v011_qctrl, align 8
  %12 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  store i64 %12, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %13

13:                                               ; preds = %61, %2
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %13
  %18 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v011_qctrl, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %61

28:                                               ; preds = %17
  %29 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v011_qctrl, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %31, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %28
  %39 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %40 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mt9v011_qctrl, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %41, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %38, %28
  %49 = load i32, i32* @ERANGE, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %108

51:                                               ; preds = %38
  %52 = load i32, i32* @debug, align 4
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %54 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @v4l2_dbg(i32 1, i32 %52, %struct.v4l2_subdev* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %59)
  br label %64

61:                                               ; preds = %27
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %13

64:                                               ; preds = %51, %13
  %65 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  switch i64 %67, label %102 [
    i64 131, label %68
    i64 129, label %74
    i64 132, label %80
    i64 130, label %86
    i64 128, label %94
  ]

68:                                               ; preds = %64
  %69 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %73 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %105

74:                                               ; preds = %64
  %75 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %76 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %79 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  br label %105

80:                                               ; preds = %64
  %81 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %85 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %84, i32 0, i32 2
  store i64 %83, i64* %85, align 8
  br label %105

86:                                               ; preds = %64
  %87 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %91 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %93 = call i32 @set_read_mode(%struct.v4l2_subdev* %92)
  store i32 0, i32* %3, align 4
  br label %108

94:                                               ; preds = %64
  %95 = load %struct.v4l2_control*, %struct.v4l2_control** %5, align 8
  %96 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.mt9v011*, %struct.mt9v011** %6, align 8
  %99 = getelementptr inbounds %struct.mt9v011, %struct.mt9v011* %98, i32 0, i32 4
  store i64 %97, i64* %99, align 8
  %100 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %101 = call i32 @set_read_mode(%struct.v4l2_subdev* %100)
  store i32 0, i32* %3, align 4
  br label %108

102:                                              ; preds = %64
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %108

105:                                              ; preds = %80, %74, %68
  %106 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %107 = call i32 @set_balance(%struct.v4l2_subdev* %106)
  store i32 0, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %102, %94, %86, %48
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.mt9v011* @to_mt9v011(%struct.v4l2_subdev*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i64, i64) #1

declare dso_local i32 @set_read_mode(%struct.v4l2_subdev*) #1

declare dso_local i32 @set_balance(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
