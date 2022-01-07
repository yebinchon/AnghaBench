; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cimax2.c_netup_ci_get_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx23885/extr_cimax2.c_netup_ci_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@MC417_RWD = common dso_local global i32 0, align 4
@NETUP_ACK = common dso_local global i32 0, align 4
@NETUP_CTRL_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netup_ci_get_mem(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = call i64 @msecs_to_jiffies(i32 1)
  %7 = add i64 %5, %6
  store i64 %7, i64* %4, align 8
  br label %8

8:                                                ; preds = %22, %1
  %9 = load i32, i32* @MC417_RWD, align 4
  %10 = call i32 @cx_read(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NETUP_ACK, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %24

16:                                               ; preds = %8
  %17 = load i64, i64* @jiffies, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @time_after(i64 %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %24

22:                                               ; preds = %16
  %23 = call i32 @udelay(i32 1)
  br label %8

24:                                               ; preds = %21, %15
  %25 = load i32, i32* @MC417_RWD, align 4
  %26 = load i32, i32* @NETUP_CTRL_OFF, align 4
  %27 = call i32 @cx_set(i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 255
  ret i32 %29
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cx_read(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cx_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
