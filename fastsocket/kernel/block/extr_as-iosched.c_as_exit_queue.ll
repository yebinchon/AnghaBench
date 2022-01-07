; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_exit_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_as-iosched.c_as_exit_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elevator_queue = type { %struct.as_data* }
%struct.as_data = type { i32, i32*, i32, i32 }

@BLK_RW_SYNC = common dso_local global i64 0, align 8
@BLK_RW_ASYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elevator_queue*)* @as_exit_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @as_exit_queue(%struct.elevator_queue* %0) #0 {
  %2 = alloca %struct.elevator_queue*, align 8
  %3 = alloca %struct.as_data*, align 8
  store %struct.elevator_queue* %0, %struct.elevator_queue** %2, align 8
  %4 = load %struct.elevator_queue*, %struct.elevator_queue** %2, align 8
  %5 = getelementptr inbounds %struct.elevator_queue, %struct.elevator_queue* %4, i32 0, i32 0
  %6 = load %struct.as_data*, %struct.as_data** %5, align 8
  store %struct.as_data* %6, %struct.as_data** %3, align 8
  %7 = load %struct.as_data*, %struct.as_data** %3, align 8
  %8 = getelementptr inbounds %struct.as_data, %struct.as_data* %7, i32 0, i32 3
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.as_data*, %struct.as_data** %3, align 8
  %11 = getelementptr inbounds %struct.as_data, %struct.as_data* %10, i32 0, i32 2
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.as_data*, %struct.as_data** %3, align 8
  %14 = getelementptr inbounds %struct.as_data, %struct.as_data* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @BLK_RW_SYNC, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.as_data*, %struct.as_data** %3, align 8
  %24 = getelementptr inbounds %struct.as_data, %struct.as_data* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @BLK_RW_ASYNC, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.as_data*, %struct.as_data** %3, align 8
  %34 = getelementptr inbounds %struct.as_data, %struct.as_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @put_io_context(i32 %35)
  %37 = load %struct.as_data*, %struct.as_data** %3, align 8
  %38 = call i32 @kfree(%struct.as_data* %37)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @put_io_context(i32) #1

declare dso_local i32 @kfree(%struct.as_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
