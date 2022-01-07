; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_dev_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_dev_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.device }
%struct.device = type { i32 }
%struct.emac_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"DaVinci EMAC: xmit timeout, restarting TX\00", align 1
@EMAC_DEF_TX_CH = common dso_local global i32 0, align 4
@EMAC_TXINTMASKSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @emac_dev_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_dev_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_priv*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.emac_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.emac_priv* %6, %struct.emac_priv** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %10 = call i64 @netif_msg_tx_err(%struct.emac_priv* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %17 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %22 = call i32 @emac_int_disable(%struct.emac_priv* %21)
  %23 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %24 = load i32, i32* @EMAC_DEF_TX_CH, align 4
  %25 = call i32 @emac_stop_txch(%struct.emac_priv* %23, i32 %24)
  %26 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %27 = load i32, i32* @EMAC_DEF_TX_CH, align 4
  %28 = call i32 @emac_cleanup_txch(%struct.emac_priv* %26, i32 %27)
  %29 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %30 = load i32, i32* @EMAC_DEF_TX_CH, align 4
  %31 = call i32 @emac_init_txch(%struct.emac_priv* %29, i32 %30)
  %32 = call i32 @EMAC_TXHDP(i32 0)
  %33 = call i32 @emac_write(i32 %32, i32 0)
  %34 = load i32, i32* @EMAC_TXINTMASKSET, align 4
  %35 = load i32, i32* @EMAC_DEF_TX_CH, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = call i32 @emac_write(i32 %34, i32 %36)
  %38 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %39 = call i32 @emac_int_enable(%struct.emac_priv* %38)
  ret void
}

declare dso_local %struct.emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_tx_err(%struct.emac_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @emac_int_disable(%struct.emac_priv*) #1

declare dso_local i32 @emac_stop_txch(%struct.emac_priv*, i32) #1

declare dso_local i32 @emac_cleanup_txch(%struct.emac_priv*, i32) #1

declare dso_local i32 @emac_init_txch(%struct.emac_priv*, i32) #1

declare dso_local i32 @emac_write(i32, i32) #1

declare dso_local i32 @EMAC_TXHDP(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @emac_int_enable(%struct.emac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
