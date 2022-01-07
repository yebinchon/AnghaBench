; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_stop_all_queued.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_stop_all_queued.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_queued_cmd = type { i32*, i64, i32 }

@queued_arr_lock = common dso_local global i32 0, align 4
@scsi_debug_max_queue = common dso_local global i32 0, align 4
@queued_arr = common dso_local global %struct.sdebug_queued_cmd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stop_all_queued to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_all_queued() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdebug_queued_cmd*, align 8
  %4 = load i64, i64* %1, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @queued_arr_lock, i64 %4)
  store i32 0, i32* %2, align 4
  br label %6

6:                                                ; preds = %33, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @scsi_debug_max_queue, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %6
  %11 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** @queued_arr, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %11, i64 %13
  store %struct.sdebug_queued_cmd* %14, %struct.sdebug_queued_cmd** %3, align 8
  %15 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %3, align 8
  %16 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %3, align 8
  %21 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %3, align 8
  %26 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %25, i32 0, i32 2
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %3, align 8
  %29 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %3, align 8
  %31 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %24, %19, %10
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %2, align 4
  br label %6

36:                                               ; preds = %6
  %37 = load i64, i64* %1, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* @queued_arr_lock, i64 %37)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
