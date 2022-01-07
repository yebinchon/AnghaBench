; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_alloc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@REQ_ALLOCED = common dso_local global i32 0, align 4
@REQ_ELVPRIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.request_queue*, i32, i32)* @blk_alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @blk_alloc_request(%struct.request_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.request* @mempool_alloc(i32 %12, i32 %13)
  store %struct.request* %14, %struct.request** %8, align 8
  %15 = load %struct.request*, %struct.request** %8, align 8
  %16 = icmp ne %struct.request* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store %struct.request* null, %struct.request** %4, align 8
  br label %47

18:                                               ; preds = %3
  %19 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %20 = load %struct.request*, %struct.request** %8, align 8
  %21 = call i32 @blk_rq_init(%struct.request_queue* %19, %struct.request* %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @REQ_ALLOCED, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.request*, %struct.request** %8, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @REQ_ELVPRIV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %18
  %32 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %33 = load %struct.request*, %struct.request** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @elv_set_request(%struct.request_queue* %32, %struct.request* %33, i32 %34)
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.request*, %struct.request** %8, align 8
  %40 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %41 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mempool_free(%struct.request* %39, i32 %43)
  store %struct.request* null, %struct.request** %4, align 8
  br label %47

45:                                               ; preds = %31, %18
  %46 = load %struct.request*, %struct.request** %8, align 8
  store %struct.request* %46, %struct.request** %4, align 8
  br label %47

47:                                               ; preds = %45, %38, %17
  %48 = load %struct.request*, %struct.request** %4, align 8
  ret %struct.request* %48
}

declare dso_local %struct.request* @mempool_alloc(i32, i32) #1

declare dso_local i32 @blk_rq_init(%struct.request_queue*, %struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @elv_set_request(%struct.request_queue*, %struct.request*, i32) #1

declare dso_local i32 @mempool_free(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
