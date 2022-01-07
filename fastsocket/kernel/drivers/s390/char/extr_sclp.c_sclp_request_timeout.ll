; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_request_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp.c_sclp_request_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sclp_lock = common dso_local global i32 0, align 4
@sclp_running_state = common dso_local global i64 0, align 8
@sclp_running_state_running = common dso_local global i64 0, align 8
@sclp_running_state_idle = common dso_local global i64 0, align 8
@SCLP_BUSY_INTERVAL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @sclp_request_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_request_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @sclp_lock, i64 %4)
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i64, i64* @sclp_running_state, align 8
  %10 = load i64, i64* @sclp_running_state_running, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = call i32 (...) @__sclp_queue_read_req()
  %14 = load i64, i64* @sclp_running_state_idle, align 8
  store i64 %14, i64* @sclp_running_state, align 8
  br label %15

15:                                               ; preds = %12, %8
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @SCLP_BUSY_INTERVAL, align 4
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 %17, %18
  %20 = call i32 @__sclp_set_request_timer(i32 %19, void (i64)* @sclp_request_timeout, i32 0)
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* @sclp_lock, i64 %22)
  %24 = call i32 (...) @sclp_process_queue()
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__sclp_queue_read_req(...) #1

declare dso_local i32 @__sclp_set_request_timer(i32, void (i64)*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sclp_process_queue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
