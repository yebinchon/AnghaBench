; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ks0127.c_ks0127_s_std.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ks0127.c_ks0127_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ks0127 = type { i32 }

@KS_DEMOD = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"s_std: NTSC_M\0A\00", align 1
@KS_CHROMA = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"s_std: NTSC_N (fixme)\0A\00", align 1
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"s_std: PAL_N\0A\00", align 1
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"s_std: PAL_M (fixme)\0A\00", align 1
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"s_std: SECAM\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"s_std: Unknown norm %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ks0127_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks0127_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ks0127*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call %struct.ks0127* @to_ks0127(%struct.v4l2_subdev* %6)
  store %struct.ks0127* %7, %struct.ks0127** %5, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = load i32, i32* @KS_DEMOD, align 4
  %10 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %8, i32 %9, i32 240, i32 0)
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.ks0127*, %struct.ks0127** %5, align 8
  %13 = getelementptr inbounds %struct.ks0127, %struct.ks0127* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @V4L2_STD_NTSC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @debug, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %21 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %19, %struct.v4l2_subdev* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %23 = load i32, i32* @KS_CHROMA, align 4
  %24 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %22, i32 %23, i32 159, i32 32)
  br label %100

25:                                               ; preds = %2
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* @debug, align 4
  %32 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %33 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %31, %struct.v4l2_subdev* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %35 = load i32, i32* @KS_CHROMA, align 4
  %36 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %34, i32 %35, i32 159, i32 64)
  br label %99

37:                                               ; preds = %25
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @V4L2_STD_PAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* @debug, align 4
  %44 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %45 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %43, %struct.v4l2_subdev* %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %47 = load i32, i32* @KS_CHROMA, align 4
  %48 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %46, i32 %47, i32 159, i32 32)
  br label %98

49:                                               ; preds = %37
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i32, i32* @debug, align 4
  %56 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %57 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %55, %struct.v4l2_subdev* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %59 = load i32, i32* @KS_CHROMA, align 4
  %60 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %58, i32 %59, i32 159, i32 64)
  br label %97

61:                                               ; preds = %49
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @V4L2_STD_SECAM, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %90

66:                                               ; preds = %61
  %67 = load i32, i32* @debug, align 4
  %68 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %69 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %67, %struct.v4l2_subdev* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %71 = load i32, i32* @KS_CHROMA, align 4
  %72 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %70, i32 %71, i32 223, i32 32)
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %74 = load i32, i32* @KS_DEMOD, align 4
  %75 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %73, i32 %74, i32 240, i32 0)
  %76 = load i32, i32* @HZ, align 4
  %77 = sdiv i32 %76, 10
  %78 = add nsw i32 %77, 1
  %79 = call i32 @schedule_timeout_interruptible(i32 %78)
  %80 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %81 = load i32, i32* @KS_DEMOD, align 4
  %82 = call i32 @ks0127_read(%struct.v4l2_subdev* %80, i32 %81)
  %83 = and i32 %82, 64
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %66
  %86 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %87 = load i32, i32* @KS_DEMOD, align 4
  %88 = call i32 @ks0127_and_or(%struct.v4l2_subdev* %86, i32 %87, i32 240, i32 15)
  br label %89

89:                                               ; preds = %85, %66
  br label %96

90:                                               ; preds = %61
  %91 = load i32, i32* @debug, align 4
  %92 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 (i32, i32, %struct.v4l2_subdev*, i8*, ...) @v4l2_dbg(i32 1, i32 %91, %struct.v4l2_subdev* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %90, %89
  br label %97

97:                                               ; preds = %96, %54
  br label %98

98:                                               ; preds = %97, %42
  br label %99

99:                                               ; preds = %98, %30
  br label %100

100:                                              ; preds = %99, %18
  ret i32 0
}

declare dso_local %struct.ks0127* @to_ks0127(%struct.v4l2_subdev*) #1

declare dso_local i32 @ks0127_and_or(%struct.v4l2_subdev*, i32, i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, ...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @ks0127_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
