; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_poll_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_enc28j60.c_poll_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc28j60_net = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@msec20_to_jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"reg %02x ready timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enc28j60_net*, i32, i32, i32)* @poll_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_ready(%struct.enc28j60_net* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.enc28j60_net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.enc28j60_net* %0, %struct.enc28j60_net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* @msec20_to_jiffies, align 8
  %13 = add i64 %11, %12
  store i64 %13, i64* %10, align 8
  br label %14

14:                                               ; preds = %41, %4
  %15 = load %struct.enc28j60_net*, %struct.enc28j60_net** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @nolock_regb_read(%struct.enc28j60_net* %15, i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %14
  %23 = load i64, i64* @jiffies, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i64 @time_after(i64 %23, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.enc28j60_net*, %struct.enc28j60_net** %6, align 8
  %29 = call i64 @netif_msg_drv(%struct.enc28j60_net* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.enc28j60_net*, %struct.enc28j60_net** %6, align 8
  %33 = getelementptr inbounds %struct.enc28j60_net, %struct.enc28j60_net* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %22
  %42 = call i32 (...) @cpu_relax()
  br label %14

43:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %38
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @nolock_regb_read(%struct.enc28j60_net*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @netif_msg_drv(%struct.enc28j60_net*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
