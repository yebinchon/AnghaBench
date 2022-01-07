; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_remove_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_remove_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.deadline_data* }
%struct.deadline_data = type { i32 }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @deadline_remove_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deadline_remove_request(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.deadline_data*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.deadline_data*, %struct.deadline_data** %9, align 8
  store %struct.deadline_data* %10, %struct.deadline_data** %5, align 8
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = call i32 @rq_fifo_clear(%struct.request* %11)
  %13 = load %struct.deadline_data*, %struct.deadline_data** %5, align 8
  %14 = load %struct.request*, %struct.request** %4, align 8
  %15 = call i32 @deadline_del_rq_rb(%struct.deadline_data* %13, %struct.request* %14)
  ret void
}

declare dso_local i32 @rq_fifo_clear(%struct.request*) #1

declare dso_local i32 @deadline_del_rq_rb(%struct.deadline_data*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
