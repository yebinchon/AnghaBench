; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cx23885-417.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.cx23885_input* }
%struct.cx23885_input = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.file = type { %struct.cx23885_fh* }
%struct.cx23885_fh = type { %struct.cx23885_dev* }
%struct.cx23885_dev = type { i64 }
%struct.v4l2_input = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@cx23885_boards = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"unset\00", align 1
@CX23885_VMUX_TELEVISION = common dso_local global i64 0, align 8
@CX23885_VMUX_CABLE = common dso_local global i64 0, align 8
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@cx23885_tvnorms = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.cx23885_fh*, align 8
  %9 = alloca %struct.cx23885_dev*, align 8
  %10 = alloca %struct.cx23885_input*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.cx23885_fh*, %struct.cx23885_fh** %13, align 8
  store %struct.cx23885_fh* %14, %struct.cx23885_fh** %8, align 8
  %15 = load %struct.cx23885_fh*, %struct.cx23885_fh** %8, align 8
  %16 = getelementptr inbounds %struct.cx23885_fh, %struct.cx23885_fh* %15, i32 0, i32 0
  %17 = load %struct.cx23885_dev*, %struct.cx23885_dev** %16, align 8
  store %struct.cx23885_dev* %17, %struct.cx23885_dev** %9, align 8
  %18 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %90

25:                                               ; preds = %3
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cx23885_boards, align 8
  %27 = load %struct.cx23885_dev*, %struct.cx23885_dev** %9, align 8
  %28 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.cx23885_input*, %struct.cx23885_input** %31, align 8
  %33 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.cx23885_input, %struct.cx23885_input* %32, i64 %36
  store %struct.cx23885_input* %37, %struct.cx23885_input** %10, align 8
  %38 = load %struct.cx23885_input*, %struct.cx23885_input** %10, align 8
  %39 = getelementptr inbounds %struct.cx23885_input, %struct.cx23885_input* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %90

45:                                               ; preds = %25
  %46 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strcpy(i32 %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.cx23885_input*, %struct.cx23885_input** %10, align 8
  %51 = getelementptr inbounds %struct.cx23885_input, %struct.cx23885_input* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CX23885_VMUX_TELEVISION, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %61, label %55

55:                                               ; preds = %45
  %56 = load %struct.cx23885_input*, %struct.cx23885_input** %10, align 8
  %57 = getelementptr inbounds %struct.cx23885_input, %struct.cx23885_input* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @CX23885_VMUX_CABLE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55, %45
  %62 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %63 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %55
  %66 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %67 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %86, %69
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx23885_tvnorms, align 8
  %73 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %72)
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cx23885_tvnorms, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %75
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %70

89:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %42, %22
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
