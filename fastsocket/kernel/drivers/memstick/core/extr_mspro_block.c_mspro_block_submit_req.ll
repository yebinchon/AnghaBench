; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_submit_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_mspro_block.c_mspro_block_submit_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.memstick_dev* }
%struct.memstick_dev = type { i32 }
%struct.mspro_block_data = type { i32, i64 }
%struct.request = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request_queue*)* @mspro_block_submit_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mspro_block_submit_req(%struct.request_queue* %0) #0 {
  %2 = alloca %struct.request_queue*, align 8
  %3 = alloca %struct.memstick_dev*, align 8
  %4 = alloca %struct.mspro_block_data*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %2, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = load %struct.memstick_dev*, %struct.memstick_dev** %7, align 8
  store %struct.memstick_dev* %8, %struct.memstick_dev** %3, align 8
  %9 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %10 = call %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev* %9)
  store %struct.mspro_block_data* %10, %struct.mspro_block_data** %4, align 8
  store %struct.request* null, %struct.request** %5, align 8
  %11 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %12 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %18 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %26, %21
  %23 = load %struct.request_queue*, %struct.request_queue** %2, align 8
  %24 = call %struct.request* @blk_fetch_request(%struct.request_queue* %23)
  store %struct.request* %24, %struct.request** %5, align 8
  %25 = icmp ne %struct.request* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @__blk_end_request_all(%struct.request* %27, i32 %29)
  br label %22

31:                                               ; preds = %22
  br label %41

32:                                               ; preds = %16
  %33 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %34 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.memstick_dev*, %struct.memstick_dev** %3, align 8
  %36 = call i64 @mspro_block_issue_req(%struct.memstick_dev* %35, i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.mspro_block_data*, %struct.mspro_block_data** %4, align 8
  %40 = getelementptr inbounds %struct.mspro_block_data, %struct.mspro_block_data* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %15, %31, %38, %32
  ret void
}

declare dso_local %struct.mspro_block_data* @memstick_get_drvdata(%struct.memstick_dev*) #1

declare dso_local %struct.request* @blk_fetch_request(%struct.request_queue*) #1

declare dso_local i32 @__blk_end_request_all(%struct.request*, i32) #1

declare dso_local i64 @mspro_block_issue_req(%struct.memstick_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
