; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_dispatch_add_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_dispatch_add_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.request*, i32, i32, %struct.request* }
%struct.request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elv_dispatch_add_tail(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %6 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i32 0, i32 4
  %7 = load %struct.request*, %struct.request** %6, align 8
  %8 = load %struct.request*, %struct.request** %4, align 8
  %9 = icmp eq %struct.request* %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 4
  store %struct.request* null, %struct.request** %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %15 = load %struct.request*, %struct.request** %4, align 8
  %16 = call i32 @elv_rqhash_del(%struct.request_queue* %14, %struct.request* %15)
  %17 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %18 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = call i32 @rq_end_sector(%struct.request* %21)
  %23 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %27 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %26, i32 0, i32 1
  store %struct.request* %25, %struct.request** %27, align 8
  %28 = load %struct.request*, %struct.request** %4, align 8
  %29 = getelementptr inbounds %struct.request, %struct.request* %28, i32 0, i32 0
  %30 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %31 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  ret void
}

declare dso_local i32 @elv_rqhash_del(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @rq_end_sector(%struct.request*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
