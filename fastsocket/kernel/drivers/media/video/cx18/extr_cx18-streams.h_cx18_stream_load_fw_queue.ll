; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.h_cx18_stream_load_fw_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-streams.h_cx18_stream_load_fw_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i32, %struct.cx18* }
%struct.cx18 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18_stream*)* @cx18_stream_load_fw_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_stream_load_fw_queue(%struct.cx18_stream* %0) #0 {
  %2 = alloca %struct.cx18_stream*, align 8
  %3 = alloca %struct.cx18*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %2, align 8
  %4 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %5 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %4, i32 0, i32 1
  %6 = load %struct.cx18*, %struct.cx18** %5, align 8
  store %struct.cx18* %6, %struct.cx18** %3, align 8
  %7 = load %struct.cx18*, %struct.cx18** %3, align 8
  %8 = getelementptr inbounds %struct.cx18, %struct.cx18* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %11 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %10, i32 0, i32 0
  %12 = call i32 @queue_work(i32 %9, i32* %11)
  ret void
}

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
