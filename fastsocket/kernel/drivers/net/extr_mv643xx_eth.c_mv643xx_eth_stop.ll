; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mv643xx_eth_private = type { i32, i32, i64, i64, i32, i32, i32, i32 }

@INT_MASK_EXT = common dso_local global i32 0, align 4
@INT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mv643xx_eth_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device* %5)
  store %struct.mv643xx_eth_private* %6, %struct.mv643xx_eth_private** %3, align 8
  %7 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %8 = load i32, i32* @INT_MASK_EXT, align 4
  %9 = call i32 @wrlp(%struct.mv643xx_eth_private* %7, i32 %8, i32 0)
  %10 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %11 = load i32, i32* @INT_MASK, align 4
  %12 = call i32 @wrlp(%struct.mv643xx_eth_private* %10, i32 %11, i32 0)
  %13 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %14 = load i32, i32* @INT_MASK, align 4
  %15 = call i32 @rdlp(%struct.mv643xx_eth_private* %13, i32 %14)
  %16 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %17 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %16, i32 0, i32 7
  %18 = call i32 @napi_disable(i32* %17)
  %19 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %20 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %19, i32 0, i32 6
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @netif_carrier_off(%struct.net_device* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @free_irq(i32 %26, %struct.net_device* %27)
  %29 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %30 = call i32 @port_reset(%struct.mv643xx_eth_private* %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @mv643xx_eth_get_stats(%struct.net_device* %31)
  %33 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %34 = call i32 @mib_counters_update(%struct.mv643xx_eth_private* %33)
  %35 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %36 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %35, i32 0, i32 5
  %37 = call i32 @del_timer_sync(i32* %36)
  %38 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %39 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %38, i32 0, i32 4
  %40 = call i32 @skb_queue_purge(i32* %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %55, %1
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %44 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %49 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @rxq_deinit(i64 %53)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %41

58:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %73, %58
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %62 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %67 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = call i32 @txq_deinit(i64 %71)
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %59

76:                                               ; preds = %59
  ret i32 0
}

declare dso_local %struct.mv643xx_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @port_reset(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @mv643xx_eth_get_stats(%struct.net_device*) #1

declare dso_local i32 @mib_counters_update(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @rxq_deinit(i64) #1

declare dso_local i32 @txq_deinit(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
