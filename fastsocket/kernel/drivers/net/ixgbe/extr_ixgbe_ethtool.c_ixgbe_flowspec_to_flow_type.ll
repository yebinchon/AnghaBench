; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_flowspec_to_flow_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_flowspec_to_flow_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { i32, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@FLOW_EXT = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_TCPV4 = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_UDPV4 = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_SCTPV4 = common dso_local global i32 0, align 4
@IXGBE_ATR_FLOW_TYPE_IPV4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rx_flow_spec*, i32*)* @ixgbe_flowspec_to_flow_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_flowspec_to_flow_type(%struct.ethtool_rx_flow_spec* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %5 = alloca i32*, align 8
  store %struct.ethtool_rx_flow_spec* %0, %struct.ethtool_rx_flow_spec** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %7 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FLOW_EXT, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  switch i32 %11, label %49 [
    i32 129, label %12
    i32 128, label %15
    i32 130, label %18
    i32 131, label %21
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_TCPV4, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  br label %50

15:                                               ; preds = %2
  %16 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_UDPV4, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_SCTPV4, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %50

21:                                               ; preds = %2
  %22 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %47 [
    i32 133, label %27
    i32 132, label %30
    i32 134, label %33
    i32 0, label %36
  ]

27:                                               ; preds = %21
  %28 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_TCPV4, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %48

30:                                               ; preds = %21
  %31 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_UDPV4, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %48

33:                                               ; preds = %21
  %34 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_SCTPV4, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %48

36:                                               ; preds = %21
  %37 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @IXGBE_ATR_FLOW_TYPE_IPV4, align 4
  %45 = load i32*, i32** %5, align 8
  store i32 %44, i32* %45, align 4
  br label %48

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %21, %46
  store i32 0, i32* %3, align 4
  br label %51

48:                                               ; preds = %43, %33, %30, %27
  br label %50

49:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

50:                                               ; preds = %48, %18, %15, %12
  store i32 1, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %47
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
