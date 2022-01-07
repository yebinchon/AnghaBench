; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9840.c_tda9840_s_tuner.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9840.c_tda9840_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_tuner = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@TDA9840_SET_STEREO = common dso_local global i32 0, align 4
@TDA9840_SET_BOTH = common dso_local global i32 0, align 4
@TDA9840_SET_LANG1 = common dso_local global i32 0, align 4
@TDA9840_SET_LANG2 = common dso_local global i32 0, align 4
@TDA9840_SET_MONO = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TDA9840_SWITCH: 0x%02x\0A\00", align 1
@SWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_tuner*)* @tda9840_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9840_s_tuner(%struct.v4l2_subdev* %0, %struct.v4l2_tuner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_tuner*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_tuner* %1, %struct.v4l2_tuner** %5, align 8
  %7 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %8 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %26 [
    i32 128, label %18
    i32 130, label %20
    i32 131, label %22
    i32 129, label %24
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @TDA9840_SET_STEREO, align 4
  store i32 %19, i32* %6, align 4
  br label %28

20:                                               ; preds = %14
  %21 = load i32, i32* @TDA9840_SET_BOTH, align 4
  store i32 %21, i32* %6, align 4
  br label %28

22:                                               ; preds = %14
  %23 = load i32, i32* @TDA9840_SET_LANG1, align 4
  store i32 %23, i32* %6, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @TDA9840_SET_LANG2, align 4
  store i32 %25, i32* %6, align 4
  br label %28

26:                                               ; preds = %14
  %27 = load i32, i32* @TDA9840_SET_MONO, align 4
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %26, %24, %22, %20, %18
  %29 = load i32, i32* @debug, align 4
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @v4l2_dbg(i32 1, i32 %29, %struct.v4l2_subdev* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %34 = load i32, i32* @SWITCH, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @tda9840_write(%struct.v4l2_subdev* %33, i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %28, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32) #1

declare dso_local i32 @tda9840_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
