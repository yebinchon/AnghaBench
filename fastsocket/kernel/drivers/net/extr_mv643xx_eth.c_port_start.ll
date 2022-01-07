; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_port_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, i32, %struct.rx_queue*, i32, %struct.tx_queue*, i32* }
%struct.rx_queue = type { i32, i64 }
%struct.tx_queue = type { i32 }
%struct.ethtool_cmd = type { i32 }

@PORT_SERIAL_CONTROL = common dso_local global i32 0, align 4
@SERIAL_PORT_ENABLE = common dso_local global i32 0, align 4
@DO_NOT_FORCE_LINK_FAIL = common dso_local global i32 0, align 4
@FORCE_LINK_PASS = common dso_local global i32 0, align 4
@PORT_CONFIG = common dso_local global i32 0, align 4
@PORT_CONFIG_EXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*)* @port_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_start(%struct.mv643xx_eth_private* %0) #0 {
  %2 = alloca %struct.mv643xx_eth_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ethtool_cmd, align 4
  %6 = alloca %struct.tx_queue*, align 8
  %7 = alloca %struct.rx_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %2, align 8
  %9 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %10 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %15 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mv643xx_eth_get_settings(i32 %16, %struct.ethtool_cmd* %5)
  %18 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %19 = call i32 @phy_reset(%struct.mv643xx_eth_private* %18)
  %20 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %21 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @mv643xx_eth_set_settings(i32 %22, %struct.ethtool_cmd* %5)
  br label %24

24:                                               ; preds = %13, %1
  %25 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %26 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %27 = call i32 @rdlp(%struct.mv643xx_eth_private* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @SERIAL_PORT_ENABLE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  %31 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %32 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @wrlp(%struct.mv643xx_eth_private* %31, i32 %32, i32 %33)
  %35 = load i32, i32* @DO_NOT_FORCE_LINK_FAIL, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %39 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %38, i32 0, i32 5
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %24
  %43 = load i32, i32* @FORCE_LINK_PASS, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %24
  %47 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %48 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @wrlp(%struct.mv643xx_eth_private* %47, i32 %48, i32 %49)
  %51 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %52 = call i32 @tx_set_rate(%struct.mv643xx_eth_private* %51, i32 1000000000, i32 16777216)
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %72, %46
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %56 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %53
  %60 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %61 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %60, i32 0, i32 4
  %62 = load %struct.tx_queue*, %struct.tx_queue** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %62, i64 %64
  store %struct.tx_queue* %65, %struct.tx_queue** %6, align 8
  %66 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %67 = call i32 @txq_reset_hw_ptr(%struct.tx_queue* %66)
  %68 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %69 = call i32 @txq_set_rate(%struct.tx_queue* %68, i32 1000000000, i32 16777216)
  %70 = load %struct.tx_queue*, %struct.tx_queue** %6, align 8
  %71 = call i32 @txq_set_fixed_prio_mode(%struct.tx_queue* %70)
  br label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %53

75:                                               ; preds = %53
  %76 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %77 = load i32, i32* @PORT_CONFIG, align 4
  %78 = call i32 @wrlp(%struct.mv643xx_eth_private* %76, i32 %77, i32 33554432)
  %79 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %80 = load i32, i32* @PORT_CONFIG_EXT, align 4
  %81 = call i32 @wrlp(%struct.mv643xx_eth_private* %79, i32 %80, i32 0)
  %82 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %83 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @mv643xx_eth_program_unicast_filter(i32 %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %119, %75
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %89 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %122

92:                                               ; preds = %86
  %93 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %94 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %93, i32 0, i32 2
  %95 = load %struct.rx_queue*, %struct.rx_queue** %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %95, i64 %97
  store %struct.rx_queue* %98, %struct.rx_queue** %7, align 8
  %99 = load %struct.rx_queue*, %struct.rx_queue** %7, align 8
  %100 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %8, align 4
  %103 = load %struct.rx_queue*, %struct.rx_queue** %7, align 8
  %104 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = add i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %8, align 4
  %112 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @RXQ_CURRENT_DESC_PTR(i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @wrlp(%struct.mv643xx_eth_private* %112, i32 %114, i32 %115)
  %117 = load %struct.rx_queue*, %struct.rx_queue** %7, align 8
  %118 = call i32 @rxq_enable(%struct.rx_queue* %117)
  br label %119

119:                                              ; preds = %92
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %86

122:                                              ; preds = %86
  ret void
}

declare dso_local i32 @mv643xx_eth_get_settings(i32, %struct.ethtool_cmd*) #1

declare dso_local i32 @phy_reset(%struct.mv643xx_eth_private*) #1

declare dso_local i32 @mv643xx_eth_set_settings(i32, %struct.ethtool_cmd*) #1

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @tx_set_rate(%struct.mv643xx_eth_private*, i32, i32) #1

declare dso_local i32 @txq_reset_hw_ptr(%struct.tx_queue*) #1

declare dso_local i32 @txq_set_rate(%struct.tx_queue*, i32, i32) #1

declare dso_local i32 @txq_set_fixed_prio_mode(%struct.tx_queue*) #1

declare dso_local i32 @mv643xx_eth_program_unicast_filter(i32) #1

declare dso_local i32 @RXQ_CURRENT_DESC_PTR(i32) #1

declare dso_local i32 @rxq_enable(%struct.rx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
