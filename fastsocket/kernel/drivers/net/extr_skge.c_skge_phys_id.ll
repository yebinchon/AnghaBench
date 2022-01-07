; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_skge_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { i32 }

@LED_MODE_TST = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BLINK_MS = common dso_local global i64 0, align 8
@LED_MODE_ON = common dso_local global i32 0, align 4
@LED_MODE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @skge_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skge_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skge_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.skge_port* @netdev_priv(%struct.net_device* %8)
  store %struct.skge_port* %9, %struct.skge_port** %5, align 8
  %10 = load i32, i32* @LED_MODE_TST, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %16 = load i32, i32* @HZ, align 4
  %17 = sdiv i32 %15, %16
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13, %2
  %20 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %20, %21
  %23 = call i32 @jiffies_to_msecs(i32 %22)
  %24 = mul nsw i32 %23, 1000
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %6, align 8
  br label %30

26:                                               ; preds = %13
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %26, %19
  br label %31

31:                                               ; preds = %45, %30
  %32 = load i64, i64* %6, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @skge_led(%struct.skge_port* %35, i32 %36)
  %38 = load i32, i32* @LED_MODE_TST, align 4
  %39 = load i32, i32* %7, align 4
  %40 = xor i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i64, i64* @BLINK_MS, align 8
  %42 = call i64 @msleep_interruptible(i64 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %49

45:                                               ; preds = %34
  %46 = load i64, i64* @BLINK_MS, align 8
  %47 = load i64, i64* %6, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %31

49:                                               ; preds = %44, %31
  %50 = load %struct.skge_port*, %struct.skge_port** %5, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i64 @netif_running(%struct.net_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @LED_MODE_ON, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @LED_MODE_OFF, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = call i32 @skge_led(%struct.skge_port* %50, i32 %59)
  ret i32 0
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @skge_led(%struct.skge_port*, i32) #1

declare dso_local i64 @msleep_interruptible(i64) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
