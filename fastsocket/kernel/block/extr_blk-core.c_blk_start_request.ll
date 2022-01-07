; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_start_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_start_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.request*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_start_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %2, align 8
  %3 = load %struct.request*, %struct.request** %2, align 8
  %4 = call i32 @blk_dequeue_request(%struct.request* %3)
  %5 = load %struct.request*, %struct.request** %2, align 8
  %6 = call i8* @blk_rq_bytes(%struct.request* %5)
  %7 = load %struct.request*, %struct.request** %2, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load %struct.request*, %struct.request** %2, align 8
  %10 = call i32 @blk_bidi_rq(%struct.request* %9)
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.request*, %struct.request** %2, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load %struct.request*, %struct.request** %15, align 8
  %17 = call i8* @blk_rq_bytes(%struct.request* %16)
  %18 = load %struct.request*, %struct.request** %2, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 0
  %20 = load %struct.request*, %struct.request** %19, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 1
  store i8* %17, i8** %21, align 8
  br label %22

22:                                               ; preds = %13, %1
  %23 = load %struct.request*, %struct.request** %2, align 8
  %24 = call i32 @blk_add_timer(%struct.request* %23)
  ret void
}

declare dso_local i32 @blk_dequeue_request(%struct.request*) #1

declare dso_local i8* @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_bidi_rq(%struct.request*) #1

declare dso_local i32 @blk_add_timer(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
