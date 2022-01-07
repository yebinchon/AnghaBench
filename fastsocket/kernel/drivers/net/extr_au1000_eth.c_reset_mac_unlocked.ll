; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_reset_mac_unlocked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_au1000_eth.c_reset_mac_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.au1000_private = type { i64, %struct.TYPE_4__**, %struct.TYPE_3__**, i64, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@MAC_EN_CLOCK_ENABLE = common dso_local global i64 0, align 8
@NUM_RX_DMA = common dso_local global i32 0, align 4
@NUM_TX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @reset_mac_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_mac_unlocked(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1000_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %5)
  store %struct.au1000_private* %6, %struct.au1000_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @hard_stop(%struct.net_device* %7)
  %9 = load i64, i64* @MAC_EN_CLOCK_ENABLE, align 8
  %10 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %11 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %10, i32 0, i32 4
  %12 = load i64*, i64** %11, align 8
  store i64 %9, i64* %12, align 8
  %13 = call i32 @au_sync_delay(i32 2)
  %14 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %15 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %14, i32 0, i32 4
  %16 = load i64*, i64** %15, align 8
  store i64 0, i64* %16, align 8
  %17 = call i32 @au_sync_delay(i32 2)
  %18 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %19 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %35, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @NUM_RX_DMA, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %20
  %25 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %26 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %27, i64 %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, -16
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %20

38:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @NUM_TX_DMA, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %45 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, -16
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %39

57:                                               ; preds = %39
  %58 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %59 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  ret void
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hard_stop(%struct.net_device*) #1

declare dso_local i32 @au_sync_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
