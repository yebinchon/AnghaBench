; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_oob_rq_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_oob_rq_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.carm_host* }
%struct.carm_host = type { i32 }
%struct.carm_request = type { i64, %struct.request* }
%struct.request = type { %struct.carm_request* }

@.str = private unnamed_addr constant [9 x i8] c"get req\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"send req\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @carm_oob_rq_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carm_oob_rq_fn(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.carm_host*, align 8
  %4 = alloca %struct.carm_request*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %7 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %8 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %7, i32 0, i32 0
  %9 = load %struct.carm_host*, %struct.carm_host** %8, align 8
  store %struct.carm_host* %9, %struct.carm_host** %3, align 8
  br label %10

10:                                               ; preds = %1, %47
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %13 = call %struct.request* @blk_fetch_request(%struct.request_queue* %12)
  store %struct.request* %13, %struct.request** %5, align 8
  %14 = load %struct.request*, %struct.request** %5, align 8
  %15 = icmp ne %struct.request* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  br label %48

17:                                               ; preds = %10
  %18 = load %struct.request*, %struct.request** %5, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 0
  %20 = load %struct.carm_request*, %struct.carm_request** %19, align 8
  store %struct.carm_request* %20, %struct.carm_request** %4, align 8
  %21 = load %struct.carm_request*, %struct.carm_request** %4, align 8
  %22 = icmp ne %struct.carm_request* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.carm_request*, %struct.carm_request** %4, align 8
  %26 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %25, i32 0, i32 1
  %27 = load %struct.request*, %struct.request** %26, align 8
  %28 = load %struct.request*, %struct.request** %5, align 8
  %29 = icmp eq %struct.request* %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load %struct.carm_request*, %struct.carm_request** %4, align 8
  %33 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = call i32 @DPRINTK(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %36 = load %struct.carm_request*, %struct.carm_request** %4, align 8
  %37 = call i32 @carm_send_msg(%struct.carm_host* %35, %struct.carm_request* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %17
  %41 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %42 = load %struct.request*, %struct.request** %5, align 8
  %43 = call i32 @blk_requeue_request(%struct.request_queue* %41, %struct.request* %42)
  %44 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %45 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %46 = call i32 @carm_push_q(%struct.carm_host* %44, %struct.request_queue* %45)
  br label %48

47:                                               ; preds = %17
  br label %10

48:                                               ; preds = %40, %16
  ret void
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @carm_send_msg(%struct.carm_host*, %struct.carm_request*) #1

declare dso_local i32 @blk_requeue_request(%struct.request_queue*, %struct.request*) #1

declare dso_local i32 @carm_push_q(%struct.carm_host*, %struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
