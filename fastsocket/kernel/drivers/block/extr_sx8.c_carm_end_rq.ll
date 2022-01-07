; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_end_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_end_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i64, i64 }
%struct.carm_request = type { i32 }

@max_queue = common dso_local global i32 0, align 4
@CARM_MSG_LOW_WATER = common dso_local global i64 0, align 8
@CARM_SG_LOW_WATER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carm_host*, %struct.carm_request*, i32)* @carm_end_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carm_end_rq(%struct.carm_host* %0, %struct.carm_request* %1, i32 %2) #0 {
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca %struct.carm_request*, align 8
  %6 = alloca i32, align 4
  store %struct.carm_host* %0, %struct.carm_host** %4, align 8
  store %struct.carm_request* %1, %struct.carm_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %8 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @carm_end_request_queued(%struct.carm_host* %7, %struct.carm_request* %8, i32 %9)
  %11 = load i32, i32* @max_queue, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %15 = call i32 @carm_round_robin(%struct.carm_host* %14)
  br label %32

16:                                               ; preds = %3
  %17 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %18 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CARM_MSG_LOW_WATER, align 8
  %21 = icmp sle i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %16
  %23 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %24 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CARM_SG_LOW_WATER, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %30 = call i32 @carm_round_robin(%struct.carm_host* %29)
  br label %31

31:                                               ; preds = %28, %22, %16
  br label %32

32:                                               ; preds = %31, %13
  ret void
}

declare dso_local i32 @carm_end_request_queued(%struct.carm_host*, %struct.carm_request*, i32) #1

declare dso_local i32 @carm_round_robin(%struct.carm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
