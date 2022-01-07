; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9840_getmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9840_getmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }

@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@TDA9840_DS_DUAL = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG2 = common dso_local global i32 0, align 4
@TDA9840_ST_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"tda9840_getmode(): raw chip read: %d, return: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @tda9840_getmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9840_getmode(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca %struct.CHIPSTATE*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %2, align 8
  %6 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %7 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %6, i32 0, i32 0
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %9 = call i32 @chip_read(%struct.CHIPSTATE* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TDA9840_DS_DUAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %17 = load i32, i32* @V4L2_TUNER_MODE_LANG2, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TDA9840_ST_STEREO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i32, i32* @debug, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @v4l2_dbg(i32 1, i32 %31, %struct.v4l2_subdev* %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @chip_read(%struct.CHIPSTATE*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
