; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_queue.c_mmc_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/card/extr_queue.c_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.mmc_queue* }
%struct.mmc_queue = type { i32, i32 }
%struct.request = type { i32 }

@REQ_QUIET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_request(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.mmc_queue*, align 8
  %4 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %5 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %6 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %5, i32 0, i32 0
  %7 = load %struct.mmc_queue*, %struct.mmc_queue** %6, align 8
  store %struct.mmc_queue* %7, %struct.mmc_queue** %3, align 8
  %8 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %9 = icmp ne %struct.mmc_queue* %8, null
  br i1 %9, label %26, label %10

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %15, %10
  %12 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %13 = call %struct.request* @blk_fetch_request(%struct.request_queue* %12)
  store %struct.request* %13, %struct.request** %4, align 8
  %14 = icmp ne %struct.request* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* @REQ_QUIET, align 4
  %17 = load %struct.request*, %struct.request** %4, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.request*, %struct.request** %4, align 8
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @__blk_end_request_all(%struct.request* %21, i32 %23)
  br label %11

25:                                               ; preds = %11
  br label %36

26:                                               ; preds = %1
  %27 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.mmc_queue*, %struct.mmc_queue** %3, align 8
  %33 = getelementptr inbounds %struct.mmc_queue, %struct.mmc_queue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @wake_up_process(i32 %34)
  br label %36

36:                                               ; preds = %25, %31, %26
  ret void
}

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
