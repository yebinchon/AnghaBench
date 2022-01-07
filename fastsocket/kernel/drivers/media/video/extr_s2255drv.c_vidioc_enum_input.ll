; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_s2255drv.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i64, i32, i32 }
%struct.s2255_fh = type { %struct.s2255_channel*, %struct.s2255_dev* }
%struct.s2255_channel = type { i32 }
%struct.s2255_dev = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@S2255_NORMS = common dso_local global i32 0, align 4
@S2255_MIN_DSP_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"s2255_cmd_status rc: %d status %x\0A\00", align 1
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"S-Video\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.s2255_fh*, align 8
  %9 = alloca %struct.s2255_dev*, align 8
  %10 = alloca %struct.s2255_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.s2255_fh*
  store %struct.s2255_fh* %14, %struct.s2255_fh** %8, align 8
  %15 = load %struct.s2255_fh*, %struct.s2255_fh** %8, align 8
  %16 = getelementptr inbounds %struct.s2255_fh, %struct.s2255_fh* %15, i32 0, i32 1
  %17 = load %struct.s2255_dev*, %struct.s2255_dev** %16, align 8
  store %struct.s2255_dev* %17, %struct.s2255_dev** %9, align 8
  %18 = load %struct.s2255_fh*, %struct.s2255_fh** %8, align 8
  %19 = getelementptr inbounds %struct.s2255_fh, %struct.s2255_fh* %18, i32 0, i32 0
  %20 = load %struct.s2255_channel*, %struct.s2255_channel** %19, align 8
  store %struct.s2255_channel* %20, %struct.s2255_channel** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %86

28:                                               ; preds = %3
  %29 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %30 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @S2255_NORMS, align 4
  %33 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  %37 = load %struct.s2255_dev*, %struct.s2255_dev** %9, align 8
  %38 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @S2255_MIN_DSP_STATUS, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %28
  %43 = load %struct.s2255_fh*, %struct.s2255_fh** %8, align 8
  %44 = getelementptr inbounds %struct.s2255_fh, %struct.s2255_fh* %43, i32 0, i32 0
  %45 = load %struct.s2255_channel*, %struct.s2255_channel** %44, align 8
  %46 = call i32 @s2255_cmd_status(%struct.s2255_channel* %45, i32* %11)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  br label %59

57:                                               ; preds = %52
  %58 = load i64, i64* @V4L2_IN_ST_NO_SIGNAL, align 8
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i64 [ 0, %56 ], [ %58, %57 ]
  %61 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %42
  br label %64

64:                                               ; preds = %63, %28
  %65 = load %struct.s2255_dev*, %struct.s2255_dev** %9, align 8
  %66 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %69 [
    i32 8789, label %68
    i32 8791, label %74
  ]

68:                                               ; preds = %64
  br label %69

69:                                               ; preds = %64, %68
  %70 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @strlcpy(i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %85

74:                                               ; preds = %64
  %75 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.s2255_channel*, %struct.s2255_channel** %10, align 8
  %79 = getelementptr inbounds %struct.s2255_channel, %struct.s2255_channel* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp slt i32 %80, 2
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %84 = call i32 @strlcpy(i32 %77, i8* %83, i32 4)
  br label %85

85:                                               ; preds = %74, %69
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %25
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @s2255_cmd_status(%struct.s2255_channel*, i32*) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
