; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_try_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_try_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl = type { i32, i32 }
%struct.cx2341x_handler = type { %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@V4L2_MPEG_STREAM_TYPE_MPEG1_SS = common dso_local global i32 0, align 4
@V4L2_MPEG_STREAM_TYPE_MPEG1_VCD = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_1 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_ENCODING_MPEG_2 = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_CBR = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_BITRATE_MODE_VBR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ctrl*)* @cx2341x_try_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2341x_try_ctrl(%struct.v4l2_ctrl* %0) #0 {
  %2 = alloca %struct.v4l2_ctrl*, align 8
  %3 = alloca %struct.cx2341x_handler*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_ctrl* %0, %struct.v4l2_ctrl** %2, align 8
  %7 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %8 = call %struct.cx2341x_handler* @to_cxhdl(%struct.v4l2_ctrl* %7)
  store %struct.cx2341x_handler* %8, %struct.cx2341x_handler** %3, align 8
  %9 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.v4l2_ctrl*, %struct.v4l2_ctrl** %2, align 8
  %13 = getelementptr inbounds %struct.v4l2_ctrl, %struct.v4l2_ctrl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %114 [
    i32 128, label %15
    i32 129, label %44
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  %18 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %19 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %18, i32 0, i32 5
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %5, align 4
  %29 = sdiv i32 %27, %28
  %30 = mul nsw i32 %23, %29
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %34, %15
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 34
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %6, align 4
  br label %31

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %41 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %40, i32 0, i32 5
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  br label %114

44:                                               ; preds = %1
  %45 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %46 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %45, i32 0, i32 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG1_SS, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %54 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %53, i32 0, i32 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @V4L2_MPEG_STREAM_TYPE_MPEG1_VCD, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52, %44
  %61 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  br label %64

62:                                               ; preds = %52
  %63 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_2, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %67 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %66, i32 0, i32 3
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %71 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %70, i32 0, i32 3
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @V4L2_MPEG_VIDEO_ENCODING_MPEG_1, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_CBR, align 4
  %79 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %80 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %64
  %84 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %85 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @V4L2_MPEG_VIDEO_BITRATE_MODE_VBR, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %83
  %92 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %93 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %92, i32 0, i32 1
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %98 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %97, i32 0, i32 0
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %96, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %91
  %104 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %105 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %104, i32 0, i32 0
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cx2341x_handler*, %struct.cx2341x_handler** %3, align 8
  %110 = getelementptr inbounds %struct.cx2341x_handler, %struct.cx2341x_handler* %109, i32 0, i32 1
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %103, %91, %83
  br label %114

114:                                              ; preds = %1, %113, %38
  ret i32 0
}

declare dso_local %struct.cx2341x_handler* @to_cxhdl(%struct.v4l2_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
