; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_dev_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_dev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.resource = type { i32, i32 }
%struct.emac_priv = type { i32, i32, i64, i32 }

@EMAC_DEF_TX_CH = common dso_local global i32 0, align 4
@EMAC_DEF_RX_CH = common dso_local global i32 0, align 4
@EMAC_SOFTRESET = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DaVinci EMAC: %s stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @emac_dev_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_dev_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.resource*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.emac_priv*, align 8
  %7 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.emac_priv* %9, %struct.emac_priv** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %15 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %14, i32 0, i32 3
  %16 = call i32 @napi_disable(i32* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = call i32 @netif_carrier_off(%struct.net_device* %17)
  %19 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %20 = call i32 @emac_int_disable(%struct.emac_priv* %19)
  %21 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %22 = load i32, i32* @EMAC_DEF_TX_CH, align 4
  %23 = call i32 @emac_stop_txch(%struct.emac_priv* %21, i32 %22)
  %24 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %25 = load i32, i32* @EMAC_DEF_RX_CH, align 4
  %26 = call i32 @emac_stop_rxch(%struct.emac_priv* %24, i32 %25)
  %27 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %28 = load i32, i32* @EMAC_DEF_TX_CH, align 4
  %29 = call i32 @emac_cleanup_txch(%struct.emac_priv* %27, i32 %28)
  %30 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %31 = load i32, i32* @EMAC_DEF_RX_CH, align 4
  %32 = call i32 @emac_cleanup_rxch(%struct.emac_priv* %30, i32 %31)
  %33 = load i32, i32* @EMAC_SOFTRESET, align 4
  %34 = call i32 @emac_write(i32 %33, i32 1)
  %35 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %36 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %41 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @phy_disconnect(i64 %42)
  br label %44

44:                                               ; preds = %39, %1
  br label %45

45:                                               ; preds = %72, %44
  %46 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %47 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IORESOURCE_IRQ, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call %struct.resource* @platform_get_resource(i32 %48, i32 %49, i32 %50)
  store %struct.resource* %51, %struct.resource** %3, align 8
  %52 = icmp ne %struct.resource* %51, null
  br i1 %52, label %53, label %75

53:                                               ; preds = %45
  %54 = load %struct.resource*, %struct.resource** %3, align 8
  %55 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %69, %53
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.resource*, %struct.resource** %3, align 8
  %60 = getelementptr inbounds %struct.resource, %struct.resource* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %66 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @free_irq(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %57

72:                                               ; preds = %57
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %45

75:                                               ; preds = %45
  %76 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %77 = call i64 @netif_msg_drv(%struct.emac_priv* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.device*, %struct.device** %7, align 8
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_notice(%struct.device* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %79, %75
  ret i32 0
}

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @emac_int_disable(%struct.emac_priv*) #1

declare dso_local i32 @emac_stop_txch(%struct.emac_priv*, i32) #1

declare dso_local i32 @emac_stop_rxch(%struct.emac_priv*, i32) #1

declare dso_local i32 @emac_cleanup_txch(%struct.emac_priv*, i32) #1

declare dso_local i32 @emac_cleanup_rxch(%struct.emac_priv*, i32) #1

declare dso_local i32 @emac_write(i32, i32) #1

declare dso_local i32 @phy_disconnect(i64) #1

declare dso_local %struct.resource* @platform_get_resource(i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i64 @netif_msg_drv(%struct.emac_priv*) #1

declare dso_local i32 @dev_notice(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
