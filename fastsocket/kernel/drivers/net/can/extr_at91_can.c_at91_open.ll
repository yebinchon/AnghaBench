; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.at91_priv = type { i32, i32 }

@at91_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @at91_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.at91_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.at91_priv* %7, %struct.at91_priv** %4, align 8
  %8 = load %struct.at91_priv*, %struct.at91_priv** %4, align 8
  %9 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_enable(i32 %10)
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call i32 @open_candev(%struct.net_device* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %3, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @at91_irq, align 4
  %22 = load i32, i32* @IRQF_SHARED, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i64 @request_irq(i32 %20, i32 %21, i32 %22, i32 %25, %struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load i32, i32* @EAGAIN, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %40

32:                                               ; preds = %17
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @at91_chip_start(%struct.net_device* %33)
  %35 = load %struct.at91_priv*, %struct.at91_priv** %4, align 8
  %36 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %35, i32 0, i32 1
  %37 = call i32 @napi_enable(i32* %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @netif_start_queue(%struct.net_device* %38)
  store i32 0, i32* %2, align 4
  br label %49

40:                                               ; preds = %29
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @close_candev(%struct.net_device* %41)
  br label %43

43:                                               ; preds = %40, %16
  %44 = load %struct.at91_priv*, %struct.at91_priv** %4, align 8
  %45 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_disable(i32 %46)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %32
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @open_candev(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @at91_chip_start(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
