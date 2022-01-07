; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_up_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbevf/extr_ixgbevf_main.c_ixgbevf_up_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.ixgbe_hw, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.net_device = type { i32 }

@IXGBE_TXDCTL_ENABLE = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_ENABLE = common dso_local global i32 0, align 4
@ixgbe_mac_X540_vf = common dso_local global i64 0, align 8
@IXGBE_RXDCTL_RLPMLMASK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@IXGBE_RXDCTL_RLPML_EN = common dso_local global i32 0, align 4
@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_up_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_up_complete(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 8
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 7
  store %struct.ixgbe_hw* %14, %struct.ixgbe_hw** %4, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %44, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %25, i32 0, i32 6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @IXGBE_VFTXDCTL(i32 %34)
  %36 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %33, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, 524288
  store i32 %38, i32* %8, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @IXGBE_VFTXDCTL(i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %39, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %24
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %18

47:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %75, %47
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %48
  %55 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %56 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %55, i32 0, i32 6
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @IXGBE_VFTXDCTL(i32 %64)
  %66 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %63, i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @IXGBE_TXDCTL_ENABLE, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @IXGBE_VFTXDCTL(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %70, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %54
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %48

78:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %130, %78
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %133

83:                                               ; preds = %79
  %84 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %84, i32 0, i32 5
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %6, align 4
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @IXGBE_VFRXDCTL(i32 %93)
  %95 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %92, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* @IXGBE_RXDCTL_ENABLE, align 4
  %97 = load i32, i32* %9, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @ixgbe_mac_X540_vf, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %121

105:                                              ; preds = %83
  %106 = load i32, i32* @IXGBE_RXDCTL_RLPMLMASK, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %9, align 4
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ETH_HLEN, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* @ETH_FCS_LEN, align 4
  %116 = add nsw i32 %114, %115
  %117 = load i32, i32* @IXGBE_RXDCTL_RLPML_EN, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %105, %83
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = call i32 @IXGBE_VFRXDCTL(i32 %123)
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %122, i32 %124, i32 %125)
  %127 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @ixgbevf_rx_desc_queue_enable(%struct.ixgbevf_adapter* %127, i32 %128)
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %79

133:                                              ; preds = %79
  %134 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %135 = call i32 @ixgbevf_configure_msix(%struct.ixgbevf_adapter* %134)
  %136 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %137 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %136, i32 0, i32 4
  %138 = call i32 @spin_lock_bh(i32* %137)
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %140 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @is_valid_ether_addr(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %133
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %147 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %149, align 8
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %152 = bitcast %struct.ixgbe_hw* %151 to %struct.ixgbe_hw.0*
  %153 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %154 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i32 %150(%struct.ixgbe_hw.0* %152, i32 0, i32 %156, i32 0)
  br label %171

158:                                              ; preds = %133
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %162, align 8
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %165 = bitcast %struct.ixgbe_hw* %164 to %struct.ixgbe_hw.0*
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %167 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i32 %163(%struct.ixgbe_hw.0* %165, i32 0, i32 %169, i32 0)
  br label %171

171:                                              ; preds = %158, %145
  %172 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %173 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %172, i32 0, i32 4
  %174 = call i32 @spin_unlock_bh(i32* %173)
  %175 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %176 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %177 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %176, i32 0, i32 3
  %178 = call i32 @clear_bit(i32 %175, i32* %177)
  %179 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %180 = call i32 @ixgbevf_napi_enable_all(%struct.ixgbevf_adapter* %179)
  %181 = load %struct.net_device*, %struct.net_device** %3, align 8
  %182 = call i32 @netif_tx_start_all_queues(%struct.net_device* %181)
  %183 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %184 = call i32 @ixgbevf_save_reset_stats(%struct.ixgbevf_adapter* %183)
  %185 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %186 = call i32 @ixgbevf_init_last_counter_stats(%struct.ixgbevf_adapter* %185)
  %187 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %188 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  store i32 1, i32* %189, align 8
  %190 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %191 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %190, i32 0, i32 2
  %192 = load i32, i32* @jiffies, align 4
  %193 = call i32 @mod_timer(i32* %191, i32 %192)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VFTXDCTL(i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i32) #1

declare dso_local i32 @ixgbevf_rx_desc_queue_enable(%struct.ixgbevf_adapter*, i32) #1

declare dso_local i32 @ixgbevf_configure_msix(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ixgbevf_napi_enable_all(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_save_reset_stats(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_init_last_counter_stats(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
