; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-417.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.cx231xx_input* }
%struct.cx231xx_input = type { i64 }
%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { %struct.cx231xx* }
%struct.cx231xx = type { i64 }
%struct.v4l2_input = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"enter vidioc_enum_input()i->index=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cx231xx_boards = common dso_local global %struct.TYPE_3__* null, align 8
@iname = common dso_local global i32* null, align 8
@CX231XX_VMUX_TELEVISION = common dso_local global i64 0, align 8
@CX231XX_VMUX_CABLE = common dso_local global i64 0, align 8
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.cx231xx_fh*, align 8
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca %struct.cx231xx_input*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %13, align 8
  store %struct.cx231xx_fh* %14, %struct.cx231xx_fh** %8, align 8
  %15 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %8, align 8
  %16 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %15, i32 0, i32 0
  %17 = load %struct.cx231xx*, %struct.cx231xx** %16, align 8
  store %struct.cx231xx* %17, %struct.cx231xx** %9, align 8
  %18 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 4
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %84

29:                                               ; preds = %3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx231xx_boards, align 8
  %31 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %32 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.cx231xx_input*, %struct.cx231xx_input** %35, align 8
  %37 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cx231xx_input, %struct.cx231xx_input* %36, i64 %40
  store %struct.cx231xx_input* %41, %struct.cx231xx_input** %10, align 8
  %42 = load %struct.cx231xx_input*, %struct.cx231xx_input** %10, align 8
  %43 = getelementptr inbounds %struct.cx231xx_input, %struct.cx231xx_input* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %29
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %84

49:                                               ; preds = %29
  %50 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** @iname, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call %struct.TYPE_4__* @INPUT(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @strcpy(i32 %55, i32 %62)
  %64 = load %struct.cx231xx_input*, %struct.cx231xx_input** %10, align 8
  %65 = getelementptr inbounds %struct.cx231xx_input, %struct.cx231xx_input* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CX231XX_VMUX_TELEVISION, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %49
  %70 = load %struct.cx231xx_input*, %struct.cx231xx_input** %10, align 8
  %71 = getelementptr inbounds %struct.cx231xx_input, %struct.cx231xx_input* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CX231XX_VMUX_CABLE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69, %49
  %76 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %77 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %83

79:                                               ; preds = %69
  %80 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %81 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %75
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %46, %26
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local %struct.TYPE_4__* @INPUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
