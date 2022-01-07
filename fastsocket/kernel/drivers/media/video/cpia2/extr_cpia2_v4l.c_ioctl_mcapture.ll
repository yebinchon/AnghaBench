; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_mcapture.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_mcapture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.cpia2_fh = type { i32 }
%struct.video_mmap = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_PRIORITY_RECORD = common dso_local global i32 0, align 4
@FRAME_READING = common dso_local global i64 0, align 8
@FRAME_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*, %struct.cpia2_fh*)* @ioctl_mcapture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_mcapture(i8* %0, %struct.camera_data* %1, %struct.cpia2_fh* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.camera_data*, align 8
  %7 = alloca %struct.cpia2_fh*, align 8
  %8 = alloca %struct.video_mmap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.camera_data* %1, %struct.camera_data** %6, align 8
  store %struct.cpia2_fh* %2, %struct.cpia2_fh** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.video_mmap*
  store %struct.video_mmap* %12, %struct.video_mmap** %8, align 8
  %13 = load %struct.video_mmap*, %struct.video_mmap** %8, align 8
  %14 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %3
  %18 = load %struct.video_mmap*, %struct.video_mmap** %8, align 8
  %19 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %22 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %119

28:                                               ; preds = %17
  %29 = load %struct.video_mmap*, %struct.video_mmap** %8, align 8
  %30 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.video_mmap*, %struct.video_mmap** %8, align 8
  %33 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cpia2_match_video_size(i32 %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %37 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %119

43:                                               ; preds = %28
  %44 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %45 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %44, i32 0, i32 4
  %46 = load %struct.cpia2_fh*, %struct.cpia2_fh** %7, align 8
  %47 = getelementptr inbounds %struct.cpia2_fh, %struct.cpia2_fh* %46, i32 0, i32 0
  %48 = load i32, i32* @V4L2_PRIORITY_RECORD, align 4
  %49 = call i32 @v4l2_prio_change(i32* %45, i32* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %119

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %57 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %54
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %63 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.video_mmap*, %struct.video_mmap** %8, align 8
  %65 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %68 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 4
  %71 = load %struct.video_mmap*, %struct.video_mmap** %8, align 8
  %72 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %75 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %73, i32* %77, align 4
  %78 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %79 = call i32 @cpia2_set_format(%struct.camera_data* %78)
  br label %80

80:                                               ; preds = %60, %54
  %81 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %82 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %81, i32 0, i32 3
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load %struct.video_mmap*, %struct.video_mmap** %8, align 8
  %85 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @FRAME_READING, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %80
  %93 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %94 = load %struct.video_mmap*, %struct.video_mmap** %8, align 8
  %95 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @sync(%struct.camera_data* %93, i64 %96)
  store i32 %97, i32* %10, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %4, align 4
  br label %119

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %80
  %103 = load i64, i64* @FRAME_EMPTY, align 8
  %104 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %105 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %104, i32 0, i32 3
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load %struct.video_mmap*, %struct.video_mmap** %8, align 8
  %108 = getelementptr inbounds %struct.video_mmap, %struct.video_mmap* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  store i64 %103, i64* %111, align 8
  %112 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %113 = load %struct.camera_data*, %struct.camera_data** %6, align 8
  %114 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @cpia2_usb_stream_start(%struct.camera_data* %112, i32 %117)
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %102, %99, %52, %40, %25
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @cpia2_match_video_size(i32, i32) #1

declare dso_local i32 @v4l2_prio_change(i32*, i32*, i32) #1

declare dso_local i32 @cpia2_set_format(%struct.camera_data*) #1

declare dso_local i32 @sync(%struct.camera_data*, i64) #1

declare dso_local i32 @cpia2_usb_stream_start(%struct.camera_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
