; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_rqhash_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_elevator.c_elv_rqhash_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.elevator_queue* }
%struct.elevator_queue = type { i32* }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*, %struct.request*)* @elv_rqhash_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elv_rqhash_add(%struct.request_queue* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.elevator_queue*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load %struct.elevator_queue*, %struct.elevator_queue** %7, align 8
  store %struct.elevator_queue* %8, %struct.elevator_queue** %5, align 8
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = call i32 @ELV_ON_HASH(%struct.request* %9)
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load %struct.elevator_queue*, %struct.elevator_queue** %5, align 8
  %15 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = call i32 @rq_hash_key(%struct.request* %17)
  %19 = call i64 @ELV_HASH_FN(i32 %18)
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = call i32 @hlist_add_head(i32* %13, i32* %20)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ELV_ON_HASH(%struct.request*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i64 @ELV_HASH_FN(i32) #1

declare dso_local i32 @rq_hash_key(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
