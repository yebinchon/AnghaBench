; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9874a_getmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9874a_getmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { %struct.TYPE_2__, %struct.v4l2_subdev }
%struct.TYPE_2__ = type { i32* }
%struct.v4l2_subdev = type { i32 }

@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@TDA9874A_DSR = common dso_local global i32 0, align 4
@TDA9874A_NSR = common dso_local global i32 0, align 4
@TDA9874A_NECR = common dso_local global i32 0, align 4
@MAXREGS = common dso_local global i32 0, align 4
@tda9874a_mode = common dso_local global i64 0, align 8
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG1 = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_LANG2 = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"tda9874a_getmode(): DSR=0x%X, NSR=0x%X, NECR=0x%X, return: %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @tda9874a_getmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9874a_getmode(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CHIPSTATE*, align 8
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %3, align 8
  %9 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %10 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %9, i32 0, i32 1
  store %struct.v4l2_subdev* %10, %struct.v4l2_subdev** %4, align 8
  %11 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %13 = load i32, i32* @TDA9874A_DSR, align 4
  %14 = call i32 @chip_read2(%struct.CHIPSTATE* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp eq i32 -1, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %100

18:                                               ; preds = %1
  %19 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %20 = load i32, i32* @TDA9874A_NSR, align 4
  %21 = call i32 @chip_read2(%struct.CHIPSTATE* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = icmp eq i32 -1, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %100

25:                                               ; preds = %18
  %26 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %27 = load i32, i32* @TDA9874A_NECR, align 4
  %28 = call i32 @chip_read2(%struct.CHIPSTATE* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = icmp eq i32 -1, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %2, align 4
  br label %100

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %35 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @MAXREGS, align 4
  %39 = sub nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %33, i32* %41, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %3, align 8
  %44 = getelementptr inbounds %struct.CHIPSTATE, %struct.CHIPSTATE* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @MAXREGS, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32 %42, i32* %50, align 4
  %51 = load i64, i64* @tda9874a_mode, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %32
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 1
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %67 = load i32, i32* @V4L2_TUNER_MODE_LANG2, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %65, %61
  br label %91

72:                                               ; preds = %32
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i32, i32* @V4L2_TUNER_MODE_LANG1, align 4
  %86 = load i32, i32* @V4L2_TUNER_MODE_LANG2, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %84, %80
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* @debug, align 4
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @v4l2_dbg(i32 1, i32 %92, %struct.v4l2_subdev* %93, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %91, %30, %23, %16
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @chip_read2(%struct.CHIPSTATE*, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
