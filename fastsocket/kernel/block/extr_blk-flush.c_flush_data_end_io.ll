; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-flush.c_flush_data_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-flush.c_flush_data_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request_queue* }
%struct.request_queue = type { i32 }

@REQ_FSEQ_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @flush_data_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_data_end_io(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.request*, %struct.request** %3, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 0
  %9 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  store %struct.request_queue* %9, %struct.request_queue** %5, align 8
  %10 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %11 = call i32 @elv_queue_empty(%struct.request_queue* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = load i32, i32* @REQ_FSEQ_DATA, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @blk_flush_complete_seq(%struct.request* %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %22 = call i32 @blk_run_queue_async(%struct.request_queue* %21)
  br label %23

23:                                               ; preds = %20, %17, %2
  ret void
}

declare dso_local i32 @elv_queue_empty(%struct.request_queue*) #1

declare dso_local i64 @blk_flush_complete_seq(%struct.request*, i32, i32) #1

declare dso_local i32 @blk_run_queue_async(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
