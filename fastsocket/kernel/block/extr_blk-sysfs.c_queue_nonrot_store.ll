; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_queue_nonrot_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-sysfs.c_queue_nonrot_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }

@QUEUE_FLAG_NONROT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, i8*, i64)* @queue_nonrot_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_nonrot_store(%struct.request_queue* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @queue_var_store(i64* %7, i8* %9, i64 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @spin_lock_irq(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = call i32 @queue_flag_clear(i32 %19, %struct.request_queue* %20)
  br label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @QUEUE_FLAG_NONROT, align 4
  %24 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %25 = call i32 @queue_flag_set(i32 %23, %struct.request_queue* %24)
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %28 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @spin_unlock_irq(i32 %29)
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local i32 @queue_var_store(i64*, i8*, i64) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @queue_flag_clear(i32, %struct.request_queue*) #1

declare dso_local i32 @queue_flag_set(i32, %struct.request_queue*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
