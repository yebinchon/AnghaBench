; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stream_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.c_cx18_stream_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.cx18 = type { i32*, i32*, %struct.cx18_stream* }
%struct.cx18_stream = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, %struct.cx18*, i32*, %struct.video_device* }
%struct.TYPE_4__ = type { i32 }
%struct.video_device = type { i32 }

@cx18_stream_info = common dso_local global %struct.TYPE_3__* null, align 8
@CX18_INVALID_TASK_HANDLE = common dso_local global i32 0, align 4
@cx18_out_work_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, i32)* @cx18_stream_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_stream_init(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx18_stream*, align 8
  %6 = alloca %struct.video_device*, align 8
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cx18*, %struct.cx18** %3, align 8
  %8 = getelementptr inbounds %struct.cx18, %struct.cx18* %7, i32 0, i32 2
  %9 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %9, i64 %11
  store %struct.cx18_stream* %12, %struct.cx18_stream** %5, align 8
  %13 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %14 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %13, i32 0, i32 18
  %15 = load %struct.video_device*, %struct.video_device** %14, align 8
  store %struct.video_device* %15, %struct.video_device** %6, align 8
  %16 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %17 = call i32 @memset(%struct.cx18_stream* %16, i32 0, i32 88)
  %18 = load %struct.video_device*, %struct.video_device** %6, align 8
  %19 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %20 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %19, i32 0, i32 18
  store %struct.video_device* %18, %struct.video_device** %20, align 8
  %21 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %22 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %21, i32 0, i32 17
  store i32* null, i32** %22, align 8
  %23 = load %struct.cx18*, %struct.cx18** %3, align 8
  %24 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %25 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %24, i32 0, i32 16
  store %struct.cx18* %23, %struct.cx18** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %28 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx18_stream_info, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %36 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %35, i32 0, i32 15
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @CX18_INVALID_TASK_HANDLE, align 4
  %38 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %39 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %38, i32 0, i32 14
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @cx18_stream_info, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %47 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 4
  %48 = load %struct.cx18*, %struct.cx18** %3, align 8
  %49 = getelementptr inbounds %struct.cx18, %struct.cx18* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %56 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %55, i32 0, i32 12
  store i32 %54, i32* %56, align 8
  %57 = load %struct.cx18*, %struct.cx18** %3, align 8
  %58 = getelementptr inbounds %struct.cx18, %struct.cx18* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %65 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %67 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %66, i32 0, i32 11
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %70 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %72 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %75 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %73, %76
  %78 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %79 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %81 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %80, i32 0, i32 10
  %82 = call i32 @init_waitqueue_head(i32* %81)
  %83 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %84 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %83, i32 0, i32 4
  store i32 -1, i32* %84, align 8
  %85 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %86 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @spin_lock_init(i32* %87)
  %89 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %90 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %89, i32 0, i32 9
  %91 = call i32 @cx18_queue_init(%struct.TYPE_4__* %90)
  %92 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %93 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %92, i32 0, i32 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %97 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %96, i32 0, i32 8
  %98 = call i32 @cx18_queue_init(%struct.TYPE_4__* %97)
  %99 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %100 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %104 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %103, i32 0, i32 7
  %105 = call i32 @cx18_queue_init(%struct.TYPE_4__* %104)
  %106 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %107 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = call i32 @spin_lock_init(i32* %108)
  %110 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %111 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %110, i32 0, i32 6
  %112 = call i32 @cx18_queue_init(%struct.TYPE_4__* %111)
  %113 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %114 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %113, i32 0, i32 5
  %115 = load i32, i32* @cx18_out_work_handler, align 4
  %116 = call i32 @INIT_WORK(i32* %114, i32 %115)
  ret void
}

declare dso_local i32 @memset(%struct.cx18_stream*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cx18_queue_init(%struct.TYPE_4__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
