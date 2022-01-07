; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_txc43128_phy.c_txc43128_phy_reconfigure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_txc43128_phy.c_txc43128_phy_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.txc43128_data* }
%struct.txc43128_data = type { i32, i32 }

@TXC_LOOPBACKS = common dso_local global i32 0, align 4
@PHY_MODE_TX_DISABLED = common dso_local global i32 0, align 4
@PHY_MODE_LOW_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @txc43128_phy_reconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txc43128_phy_reconfigure(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.txc43128_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 2
  %8 = load %struct.txc43128_data*, %struct.txc43128_data** %7, align 8
  store %struct.txc43128_data* %8, %struct.txc43128_data** %3, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.txc43128_data*, %struct.txc43128_data** %3, align 8
  %13 = getelementptr inbounds %struct.txc43128_data, %struct.txc43128_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = xor i32 %11, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.txc43128_data*, %struct.txc43128_data** %3, align 8
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = load i32, i32* @TXC_LOOPBACKS, align 4
  %19 = call i32 @LOOPBACK_CHANGED(%struct.txc43128_data* %16, %struct.efx_nic* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %1
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = call i32 @txc_reset_phy(%struct.efx_nic* %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %32 = call i32 @txc_apply_defaults(%struct.efx_nic* %31)
  %33 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %34 = call i32 @falcon_reset_xaui(%struct.efx_nic* %33)
  %35 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %28, %1
  %40 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %41 = call i32 @efx_mdio_transmit_disable(%struct.efx_nic* %40)
  %42 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %43 = call i32 @efx_mdio_phy_reconfigure(%struct.efx_nic* %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PHY_MODE_LOW_POWER, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %50 = call i32 @txc_set_power(%struct.efx_nic* %49)
  br label %51

51:                                               ; preds = %48, %39
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %54, %51
  %58 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %59 = call i32 @txc_reset_logic(%struct.efx_nic* %58)
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.txc43128_data*, %struct.txc43128_data** %3, align 8
  %65 = getelementptr inbounds %struct.txc43128_data, %struct.txc43128_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %67 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.txc43128_data*, %struct.txc43128_data** %3, align 8
  %70 = getelementptr inbounds %struct.txc43128_data, %struct.txc43128_data* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  ret i32 0
}

declare dso_local i32 @LOOPBACK_CHANGED(%struct.txc43128_data*, %struct.efx_nic*, i32) #1

declare dso_local i32 @txc_reset_phy(%struct.efx_nic*) #1

declare dso_local i32 @txc_apply_defaults(%struct.efx_nic*) #1

declare dso_local i32 @falcon_reset_xaui(%struct.efx_nic*) #1

declare dso_local i32 @efx_mdio_transmit_disable(%struct.efx_nic*) #1

declare dso_local i32 @efx_mdio_phy_reconfigure(%struct.efx_nic*) #1

declare dso_local i32 @txc_set_power(%struct.efx_nic*) #1

declare dso_local i32 @txc_reset_logic(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
