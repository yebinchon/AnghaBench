; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_rx_buffer_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_rx_buffer_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.TYPE_4__*, %struct.net_device*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@ixgbe_mac_X540_vf = common dso_local global i64 0, align 8
@MAXIMUM_ETHERNET_VLAN_SIZE = common dso_local global i32 0, align 4
@IXGBEVF_RXBUFFER_2K = common dso_local global i32 0, align 4
@IXGBEVF_RXBUFFER_4K = common dso_local global i32 0, align 4
@IXGBEVF_RXBUFFER_8K = common dso_local global i32 0, align 4
@IXGBEVF_RXBUFFER_10K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_set_rx_buffer_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_set_rx_buffer_len(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %8 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %8, i32 0, i32 3
  store %struct.ixgbe_hw* %9, %struct.ixgbe_hw** %3, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ETH_HLEN, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @ETH_FCS_LEN, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ixgbevf_rlpml_set_vf(%struct.ixgbe_hw* %20, i32 %21)
  %23 = load i64, i64* @VLAN_HLEN, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ixgbe_mac_X540_vf, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MAXIMUM_ETHERNET_VLAN_SIZE, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @MAXIMUM_ETHERNET_VLAN_SIZE, align 4
  store i32 %39, i32* %7, align 4
  br label %63

40:                                               ; preds = %34, %1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @IXGBEVF_RXBUFFER_2K, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* @IXGBEVF_RXBUFFER_2K, align 4
  store i32 %45, i32* %7, align 4
  br label %62

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @IXGBEVF_RXBUFFER_4K, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @IXGBEVF_RXBUFFER_4K, align 4
  store i32 %51, i32* %7, align 4
  br label %61

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IXGBEVF_RXBUFFER_8K, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @IXGBEVF_RXBUFFER_8K, align 4
  store i32 %57, i32* %7, align 4
  br label %60

58:                                               ; preds = %52
  %59 = load i32, i32* @IXGBEVF_RXBUFFER_10K, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %58, %56
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61, %44
  br label %63

63:                                               ; preds = %62, %38
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %79, %63
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32 %71, i32* %78, align 4
  br label %79

79:                                               ; preds = %70
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %64

82:                                               ; preds = %64
  ret void
}

declare dso_local i32 @ixgbevf_rlpml_set_vf(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
