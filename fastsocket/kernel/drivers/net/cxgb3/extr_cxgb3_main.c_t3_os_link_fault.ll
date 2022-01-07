; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_t3_os_link_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_main.c_t3_os_link_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.port_info = type { i32, %struct.cmac }
%struct.cmac = type { i64 }

@A_XGM_INT_STATUS = common dso_local global i64 0, align 8
@A_XGM_INT_CAUSE = common dso_local global i64 0, align 8
@F_XGM_INT = common dso_local global i32 0, align 4
@A_XGM_INT_ENABLE = common dso_local global i64 0, align 8
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_os_link_fault(%struct.adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.cmac*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 %14
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %7, align 8
  %18 = call %struct.port_info* @netdev_priv(%struct.net_device* %17)
  store %struct.port_info* %18, %struct.port_info** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.net_device*, %struct.net_device** %7, align 8
  %21 = call i32 @netif_carrier_ok(%struct.net_device* %20)
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %84

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %24
  %28 = load %struct.port_info*, %struct.port_info** %8, align 8
  %29 = getelementptr inbounds %struct.port_info, %struct.port_info* %28, i32 0, i32 1
  store %struct.cmac* %29, %struct.cmac** %9, align 8
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = call i32 @netif_carrier_on(%struct.net_device* %30)
  %32 = load %struct.adapter*, %struct.adapter** %4, align 8
  %33 = load %struct.port_info*, %struct.port_info** %8, align 8
  %34 = call i32 @disable_tx_fifo_drain(%struct.adapter* %32, %struct.port_info* %33)
  %35 = load %struct.adapter*, %struct.adapter** %4, align 8
  %36 = load %struct.port_info*, %struct.port_info** %8, align 8
  %37 = getelementptr inbounds %struct.port_info, %struct.port_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @t3_xgm_intr_disable(%struct.adapter* %35, i32 %38)
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = load i64, i64* @A_XGM_INT_STATUS, align 8
  %42 = load %struct.port_info*, %struct.port_info** %8, align 8
  %43 = getelementptr inbounds %struct.port_info, %struct.port_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.cmac, %struct.cmac* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %41, %45
  %47 = call i32 @t3_read_reg(%struct.adapter* %40, i64 %46)
  %48 = load %struct.adapter*, %struct.adapter** %4, align 8
  %49 = load i64, i64* @A_XGM_INT_CAUSE, align 8
  %50 = load %struct.port_info*, %struct.port_info** %8, align 8
  %51 = getelementptr inbounds %struct.port_info, %struct.port_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.cmac, %struct.cmac* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %49, %53
  %55 = load i32, i32* @F_XGM_INT, align 4
  %56 = call i32 @t3_write_reg(%struct.adapter* %48, i64 %54, i32 %55)
  %57 = load %struct.adapter*, %struct.adapter** %4, align 8
  %58 = load i64, i64* @A_XGM_INT_ENABLE, align 8
  %59 = load %struct.port_info*, %struct.port_info** %8, align 8
  %60 = getelementptr inbounds %struct.port_info, %struct.port_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.cmac, %struct.cmac* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %58, %62
  %64 = load i32, i32* @F_XGM_INT, align 4
  %65 = load i32, i32* @F_XGM_INT, align 4
  %66 = call i32 @t3_set_reg_field(%struct.adapter* %57, i64 %63, i32 %64, i32 %65)
  %67 = load %struct.adapter*, %struct.adapter** %4, align 8
  %68 = load %struct.port_info*, %struct.port_info** %8, align 8
  %69 = getelementptr inbounds %struct.port_info, %struct.port_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @t3_xgm_intr_enable(%struct.adapter* %67, i32 %70)
  %72 = load %struct.cmac*, %struct.cmac** %9, align 8
  %73 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %74 = call i32 @t3_mac_enable(%struct.cmac* %72, i32 %73)
  br label %81

75:                                               ; preds = %24
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = call i32 @netif_carrier_off(%struct.net_device* %76)
  %78 = load %struct.adapter*, %struct.adapter** %4, align 8
  %79 = load %struct.port_info*, %struct.port_info** %8, align 8
  %80 = call i32 @enable_tx_fifo_drain(%struct.adapter* %78, %struct.port_info* %79)
  br label %81

81:                                               ; preds = %75, %27
  %82 = load %struct.net_device*, %struct.net_device** %7, align 8
  %83 = call i32 @link_report(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %81, %23
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @disable_tx_fifo_drain(%struct.adapter*, %struct.port_info*) #1

declare dso_local i32 @t3_xgm_intr_disable(%struct.adapter*, i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @t3_xgm_intr_enable(%struct.adapter*, i32) #1

declare dso_local i32 @t3_mac_enable(%struct.cmac*, i32) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @enable_tx_fifo_drain(%struct.adapter*, %struct.port_info*) #1

declare dso_local i32 @link_report(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
