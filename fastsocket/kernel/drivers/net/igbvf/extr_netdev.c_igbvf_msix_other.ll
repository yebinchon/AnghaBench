; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_msix_other.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_netdev.c_igbvf_msix_other.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igbvf_adapter = type { i32, i32, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__IGBVF_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@EIMS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @igbvf_msix_other to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_msix_other(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.igbvf_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.igbvf_adapter* %11, %struct.igbvf_adapter** %6, align 8
  %12 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %12, i32 0, i32 4
  store %struct.e1000_hw* %13, %struct.e1000_hw** %7, align 8
  %14 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @netif_carrier_off(%struct.net_device* %18)
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load i32, i32* @__IGBVF_DOWN, align 4
  %24 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %24, i32 0, i32 2
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %2
  %29 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %29, i32 0, i32 1
  %31 = load i64, i64* @jiffies, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @mod_timer(i32* %30, i64 %32)
  br label %34

34:                                               ; preds = %28, %2
  %35 = load i32, i32* @EIMS, align 4
  %36 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %37 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ew32(i32 %35, i32 %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @ew32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
