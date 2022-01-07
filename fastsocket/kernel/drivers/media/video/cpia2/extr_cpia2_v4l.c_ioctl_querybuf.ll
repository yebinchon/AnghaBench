; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_querybuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cpia2/extr_cpia2_v4l.c_ioctl_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i64, %struct.TYPE_3__*, i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }
%struct.v4l2_buffer = type { i64, i64, i32, i32, i64, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_QUEUED = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_DONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"QUERYBUF index:%d offset:%d flags:%d seq:%d bytesused:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.camera_data*)* @ioctl_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioctl_querybuf(i8* %0, %struct.camera_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.camera_data*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.camera_data* %1, %struct.camera_data** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.v4l2_buffer*
  store %struct.v4l2_buffer* %8, %struct.v4l2_buffer** %6, align 8
  %9 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %19 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %132

25:                                               ; preds = %14
  %26 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %27 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %36 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  %42 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %43 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  %48 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %51 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %25
  %55 = load i64, i64* @V4L2_BUF_FLAG_MAPPED, align 8
  %56 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  br label %61

58:                                               ; preds = %25
  %59 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %54
  %62 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %63 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %114 [
    i32 131, label %71
    i32 130, label %71
    i32 129, label %71
    i32 128, label %77
  ]

71:                                               ; preds = %61, %61, %61
  %72 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load i64, i64* @V4L2_BUF_FLAG_QUEUED, align 8
  %75 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %76 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %75, i32 0, i32 4
  store i64 %74, i64* %76, align 8
  br label %114

77:                                               ; preds = %61
  %78 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %79 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %82 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %88 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %90 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %93 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 8
  %100 = load %struct.camera_data*, %struct.camera_data** %5, align 8
  %101 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %104 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %110 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load i64, i64* @V4L2_BUF_FLAG_DONE, align 8
  %112 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %112, i32 0, i32 4
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %61, %77, %71
  %115 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %116 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %119 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %123 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %126 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %129 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @DBG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %117, i64 %121, i64 %124, i32 %127, i32 %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %114, %22
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @DBG(i8*, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
