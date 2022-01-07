; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_stop_queued_cmnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_stop_queued_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdebug_queued_cmd = type { %struct.scsi_cmnd*, i64, i32 }
%struct.scsi_cmnd = type { i32 }

@queued_arr_lock = common dso_local global i32 0, align 4
@scsi_debug_max_queue = common dso_local global i32 0, align 4
@queued_arr = common dso_local global %struct.sdebug_queued_cmd* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @stop_queued_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stop_queued_cmnd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdebug_queued_cmd*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @queued_arr_lock, i64 %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %36, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @scsi_debug_max_queue, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  %13 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** @queued_arr, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %13, i64 %15
  store %struct.sdebug_queued_cmd* %16, %struct.sdebug_queued_cmd** %5, align 8
  %17 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %12
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %23 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %23, i32 0, i32 0
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %24, align 8
  %26 = icmp eq %struct.scsi_cmnd* %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %28, i32 0, i32 2
  %30 = call i32 @del_timer_sync(i32* %29)
  %31 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.sdebug_queued_cmd*, %struct.sdebug_queued_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.sdebug_queued_cmd, %struct.sdebug_queued_cmd* %33, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %34, align 8
  br label %39

35:                                               ; preds = %21, %12
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %8

39:                                               ; preds = %27, %8
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* @queued_arr_lock, i64 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @scsi_debug_max_queue, align 4
  %44 = icmp slt i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  ret i32 %46
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
