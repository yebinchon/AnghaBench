; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_wait_till_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_sst25l.c_sst25l_wait_till_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst25l_flash = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MAX_READY_WAIT_JIFFIES = common dso_local global i64 0, align 8
@SST25L_STATUS_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst25l_flash*)* @sst25l_wait_till_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_wait_till_ready(%struct.sst25l_flash* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst25l_flash*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sst25l_flash* %0, %struct.sst25l_flash** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @MAX_READY_WAIT_JIFFIES, align 8
  %9 = add i64 %7, %8
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %25, %1
  %11 = load %struct.sst25l_flash*, %struct.sst25l_flash** %3, align 8
  %12 = call i32 @sst25l_status(%struct.sst25l_flash* %11, i32* %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %34

17:                                               ; preds = %10
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @SST25L_STATUS_BUSY, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %34

23:                                               ; preds = %17
  %24 = call i32 (...) @cond_resched()
  br label %25

25:                                               ; preds = %23
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @time_after_eq(i64 %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %10, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ETIMEDOUT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %22, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @sst25l_status(%struct.sst25l_flash*, i32*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
