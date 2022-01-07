; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_set_window_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_set_window_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.cpia2_fh = type { i32 }
%struct.video_window = type { i64, i64, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_PRIORITY_RECORD = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Requested width = %d, height = %d\0A\00", align 1
@FRAME_READING = common dso_local global i64 0, align 8
@FRAME_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*, %struct.cpia2_fh*)* @ioctl_set_window_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_set_window_size(i8* %0, %struct.camera_data* %1, %struct.cpia2_fh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.camera_data*, align 8
  %7 = alloca %struct.cpia2_fh*, align 8
  %8 = alloca %struct.video_window*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.camera_data* %1, %struct.camera_data** %6, align 8
  store %struct.cpia2_fh* %2, %struct.cpia2_fh** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.video_window*
  store %struct.video_window* %12, %struct.video_window** %8, align 8
  %13 = load %struct.video_window*, %struct.video_window** %8, align 8
  %14 = getelementptr inbounds %struct.video_window, %struct.video_window* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %139

20:                                               ; preds = %3
  %21 = load %struct.video_window*, %struct.video_window** %8, align 8
  %22 = getelementptr inbounds %struct.video_window, %struct.video_window* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %139

28:                                               ; preds = %20
  %29 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %30 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %29, i32 0, i32 5
  %31 = load %struct.cpia2_fh*, %struct.cpia2_fh** %7, align 8
  %32 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %31, i32 0, i32 0
  %33 = load i32, i32* @V4L2_PRIORITY_RECORD, align 4
  %34 = call i32 @v4l2_prio_change(i32* %30, i32* %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %139

39:                                               ; preds = %28
  %40 = load i32, i32* @V4L2_PIX_FMT_JPEG, align 4
  %41 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %42 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %44 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.video_window*, %struct.video_window** %8, align 8
  %48 = getelementptr inbounds %struct.video_window, %struct.video_window* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.video_window*, %struct.video_window** %8, align 8
  %51 = getelementptr inbounds %struct.video_window, %struct.video_window* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %52)
  %54 = load %struct.video_window*, %struct.video_window** %8, align 8
  %55 = getelementptr inbounds %struct.video_window, %struct.video_window* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %58 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %71, label %62

62:                                               ; preds = %39
  %63 = load %struct.video_window*, %struct.video_window** %8, align 8
  %64 = getelementptr inbounds %struct.video_window, %struct.video_window* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %67 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %65, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %62, %39
  %72 = load %struct.video_window*, %struct.video_window** %8, align 8
  %73 = getelementptr inbounds %struct.video_window, %struct.video_window* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %76 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i64 %74, i64* %77, align 8
  %78 = load %struct.video_window*, %struct.video_window** %8, align 8
  %79 = getelementptr inbounds %struct.video_window, %struct.video_window* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %82 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i64 %80, i64* %83, align 8
  %84 = load %struct.video_window*, %struct.video_window** %8, align 8
  %85 = getelementptr inbounds %struct.video_window, %struct.video_window* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %88 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i64 %86, i64* %90, align 8
  %91 = load %struct.video_window*, %struct.video_window** %8, align 8
  %92 = getelementptr inbounds %struct.video_window, %struct.video_window* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %95 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i64 %93, i64* %97, align 8
  %98 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %99 = call i32 @cpia2_set_format(%struct.camera_data* %98)
  br label %100

100:                                              ; preds = %71, %62
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %135, %100
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %104 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %138

107:                                              ; preds = %101
  %108 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %109 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %108, i32 0, i32 1
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @FRAME_READING, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %107
  %119 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @sync(%struct.camera_data* %119, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %4, align 4
  br label %139

125:                                              ; preds = %118
  br label %126

126:                                              ; preds = %125, %107
  %127 = load i64, i64* @FRAME_EMPTY, align 8
  %128 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %129 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  store i64 %127, i64* %134, align 8
  br label %135

135:                                              ; preds = %126
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %101

138:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %123, %37, %25, %17
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @v4l2_prio_change(i32*, i32*, i32) #1

declare dso_local i32 @DBG(i8*, i64, i64) #1

declare dso_local i32 @cpia2_set_format(%struct.camera_data*) #1

declare dso_local i32 @sync(%struct.camera_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
