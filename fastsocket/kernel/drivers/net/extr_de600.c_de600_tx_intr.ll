; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de600.c_de600_tx_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_de600.c_de600_tx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TX_BUSY = common dso_local global i32 0, align 4
@TX_FAILED16 = common dso_local global i32 0, align 4
@tx_fifo_out = common dso_local global i32 0, align 4
@TX_PAGES = common dso_local global i32 0, align 4
@free_tx_pages = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@tx_fifo = common dso_local global i32* null, align 8
@TX_ADDR = common dso_local global i32 0, align 4
@TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @de600_tx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de600_tx_intr(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @TX_BUSY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %53

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TX_FAILED16, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @tx_fifo_out, align 4
  %18 = add nsw i32 %17, 1
  %19 = load i32, i32* @TX_PAGES, align 4
  %20 = srem i32 %18, %19
  store i32 %20, i32* @tx_fifo_out, align 4
  %21 = load i32, i32* @free_tx_pages, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @free_tx_pages, align 4
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @netif_wake_queue(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %16, %11
  %31 = load i32, i32* @free_tx_pages, align 4
  %32 = load i32, i32* @TX_PAGES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @TX_FAILED16, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34, %30
  %40 = load i32, i32* @jiffies, align 4
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** @tx_fifo, align 8
  %44 = load i32, i32* @tx_fifo_out, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TX_ADDR, align 4
  %49 = call i32 @de600_setup_address(i32 %47, i32 %48)
  %50 = load i32, i32* @TX_ENABLE, align 4
  %51 = call i32 @de600_put_command(i32 %50)
  store i32 1, i32* %3, align 4
  br label %53

52:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %39, %10
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @de600_setup_address(i32, i32) #1

declare dso_local i32 @de600_put_command(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
