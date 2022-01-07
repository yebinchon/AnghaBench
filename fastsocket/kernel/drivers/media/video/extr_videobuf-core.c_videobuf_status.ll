; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_videobuf-core.c_videobuf_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.v4l2_buffer = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.videobuf_buffer = type { i32, i32, i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@MAGIC_BUFFER = common dso_local global i32 0, align 4
@MAGIC_QTYPE_OPS = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@UNSET = common dso_local global i64 0, align 8
@V4L2_BUF_FLAG_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.videobuf_queue*, %struct.v4l2_buffer*, %struct.videobuf_buffer*, i32)* @videobuf_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @videobuf_status(%struct.videobuf_queue* %0, %struct.v4l2_buffer* %1, %struct.videobuf_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.videobuf_queue*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  %7 = alloca %struct.videobuf_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %5, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %6, align 8
  store %struct.videobuf_buffer* %2, %struct.videobuf_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %10 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %9, i32 0, i32 12
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAGIC_BUFFER, align 4
  %13 = call i32 @MAGIC_CHECK(i32 %11, i32 %12)
  %14 = load %struct.videobuf_queue*, %struct.videobuf_queue** %5, align 8
  %15 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAGIC_QTYPE_OPS, align 4
  %20 = call i32 @MAGIC_CHECK(i32 %18, i32 %19)
  %21 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %22 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %30 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %33 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %68 [
    i32 137, label %37
    i32 135, label %49
    i32 136, label %61
  ]

37:                                               ; preds = %4
  %38 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %39 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %45 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %48 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %47, i32 0, i32 9
  store i32 %46, i32* %48, align 4
  br label %68

49:                                               ; preds = %4
  %50 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %51 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %50, i32 0, i32 10
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %53, i32 0, i32 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %59, i32 0, i32 9
  store i32 %58, i32* %60, align 4
  br label %68

61:                                               ; preds = %4
  %62 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %63 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %65, i32 0, i32 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %68

68:                                               ; preds = %4, %61, %49, %37
  %69 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %69, i32 0, i32 7
  store i32 0, i32* %70, align 8
  %71 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %72 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %77 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %78 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %68
  %82 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %83 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %104 [
    i32 129, label %85
    i32 128, label %85
    i32 134, label %85
    i32 132, label %91
    i32 133, label %97
    i32 130, label %103
    i32 131, label %103
  ]

85:                                               ; preds = %81, %81, %81
  %86 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %87 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %88 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %104

91:                                               ; preds = %81
  %92 = load i32, i32* @V4L2_BUF_FLAG_ERROR, align 4
  %93 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %94 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %81, %91
  %98 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %99 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %100 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %99, i32 0, i32 7
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %104

103:                                              ; preds = %81, %81
  br label %104

104:                                              ; preds = %81, %103, %97, %85
  %105 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %106 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @UNSET, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i32, i32* @V4L2_BUF_FLAG_INPUT, align 4
  %112 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %113 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %117 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %120 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %110, %104
  %122 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %123 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %126 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %125, i32 0, i32 6
  store i32 %124, i32* %126, align 4
  %127 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %128 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %131 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  %132 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %133 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %136 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %7, align 8
  %138 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = ashr i32 %139, 1
  %141 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %142 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  ret void
}

declare dso_local i32 @MAGIC_CHECK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
