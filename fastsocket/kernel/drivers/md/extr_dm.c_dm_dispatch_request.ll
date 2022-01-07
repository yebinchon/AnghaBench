; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_dispatch_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_dispatch_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32 }

@REQ_IO_STAT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_dispatch_request(%struct.request* %0) #0 {
  %2 = alloca %struct.request*, align 8
  %3 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %2, align 8
  %4 = load %struct.request*, %struct.request** %2, align 8
  %5 = getelementptr inbounds %struct.request, %struct.request* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @blk_queue_io_stat(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @REQ_IO_STAT, align 4
  %11 = load %struct.request*, %struct.request** %2, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.request*, %struct.request** %2, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.request*, %struct.request** %2, align 8
  %20 = getelementptr inbounds %struct.request, %struct.request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.request*, %struct.request** %2, align 8
  %23 = call i32 @blk_insert_cloned_request(i32 %21, %struct.request* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %15
  %27 = load %struct.request*, %struct.request** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @dm_complete_request(%struct.request* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %15
  ret void
}

declare dso_local i64 @blk_queue_io_stat(i32) #1

declare dso_local i32 @blk_insert_cloned_request(i32, %struct.request*) #1

declare dso_local i32 @dm_complete_request(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
