; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_v4l2_get_buffer_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vino.c_vino_v4l2_get_buffer_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vino_channel_settings = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.vino_framebuffer = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@V4L2_BUF_FLAG_QUEUED = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_DONE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMECODE = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_MAPPED = common dso_local global i32 0, align 4
@VINO_MEMORY_MMAP = common dso_local global i64 0, align 8
@V4L2_MEMORY_MMAP = common dso_local global i32 0, align 4
@V4L2_MEMORY_USERPTR = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"buffer %d: length = %d, bytesused = %d, offset = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vino_channel_settings*, %struct.vino_framebuffer*, %struct.v4l2_buffer*)* @vino_v4l2_get_buffer_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vino_v4l2_get_buffer_status(%struct.vino_channel_settings* %0, %struct.vino_framebuffer* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca %struct.vino_channel_settings*, align 8
  %5 = alloca %struct.vino_framebuffer*, align 8
  %6 = alloca %struct.v4l2_buffer*, align 8
  store %struct.vino_channel_settings* %0, %struct.vino_channel_settings** %4, align 8
  store %struct.vino_framebuffer* %1, %struct.vino_framebuffer** %5, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %6, align 8
  %7 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %8 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %7, i32 0, i32 0
  %9 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %10 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @vino_queue_outgoing_contains(%struct.TYPE_5__* %8, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %22 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %56

26:                                               ; preds = %3
  %27 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %28 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %27, i32 0, i32 0
  %29 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %30 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @vino_queue_incoming_contains(%struct.TYPE_5__* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %42 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %55

46:                                               ; preds = %26
  %47 = load i32, i32* @V4L2_BUF_FLAG_DONE, align 4
  %48 = load i32, i32* @V4L2_BUF_FLAG_QUEUED, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %46, %34
  br label %56

56:                                               ; preds = %55, %14
  %57 = load i32, i32* @V4L2_BUF_FLAG_TIMECODE, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %64 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load i32, i32* @V4L2_BUF_FLAG_MAPPED, align 4
  %69 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %70 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %56
  %74 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %75 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %78 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %77, i32 0, i32 8
  store i32 %76, i32* %78, align 4
  %79 = load %struct.vino_channel_settings*, %struct.vino_channel_settings** %4, align 8
  %80 = getelementptr inbounds %struct.vino_channel_settings, %struct.vino_channel_settings* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @VINO_MEMORY_MMAP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %73
  %86 = load i32, i32* @V4L2_MEMORY_MMAP, align 4
  br label %89

87:                                               ; preds = %73
  %88 = load i32, i32* @V4L2_MEMORY_USERPTR, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %92 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %94 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %97 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %100 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %103 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %105 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %110 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %111 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %113 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %116 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %6, align 8
  %118 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %117, i32 0, i32 1
  %119 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %120 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %119, i32 0, i32 5
  %121 = call i32 @memcpy(i32* %118, i32* %120, i32 4)
  %122 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %123 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %126 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %129 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.vino_framebuffer*, %struct.vino_framebuffer** %5, align 8
  %132 = getelementptr inbounds %struct.vino_framebuffer, %struct.vino_framebuffer* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @dprintk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %124, i32 %127, i32 %130, i32 %133)
  ret void
}

declare dso_local i64 @vino_queue_outgoing_contains(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @vino_queue_incoming_contains(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
