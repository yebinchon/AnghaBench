; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_submit_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_submit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.front_face = type { %struct.videobuf_buffer* }
%struct.videobuf_buffer = type { i32, i32, i32, i32 }

@VIDEOBUF_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.front_face*)* @submit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @submit_frame(%struct.front_face* %0) #0 {
  %2 = alloca %struct.front_face*, align 8
  %3 = alloca %struct.videobuf_buffer*, align 8
  store %struct.front_face* %0, %struct.front_face** %2, align 8
  %4 = load %struct.front_face*, %struct.front_face** %2, align 8
  %5 = getelementptr inbounds %struct.front_face, %struct.front_face* %4, i32 0, i32 0
  %6 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %5, align 8
  store %struct.videobuf_buffer* %6, %struct.videobuf_buffer** %3, align 8
  %7 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %3, align 8
  %8 = icmp eq %struct.videobuf_buffer* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %26

10:                                               ; preds = %1
  %11 = load %struct.front_face*, %struct.front_face** %2, align 8
  %12 = getelementptr inbounds %struct.front_face, %struct.front_face* %11, i32 0, i32 0
  store %struct.videobuf_buffer* null, %struct.videobuf_buffer** %12, align 8
  %13 = load i32, i32* @VIDEOBUF_DONE, align 4
  %14 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %3, align 8
  %21 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %20, i32 0, i32 1
  %22 = call i32 @do_gettimeofday(i32* %21)
  %23 = load %struct.videobuf_buffer*, %struct.videobuf_buffer** %3, align 8
  %24 = getelementptr inbounds %struct.videobuf_buffer, %struct.videobuf_buffer* %23, i32 0, i32 0
  %25 = call i32 @wake_up(i32* %24)
  br label %26

26:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @do_gettimeofday(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
