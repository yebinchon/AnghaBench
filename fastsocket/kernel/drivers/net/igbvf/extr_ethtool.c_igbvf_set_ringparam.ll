; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_ethtool.c_igbvf_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.igbvf_adapter = type { i32, %struct.igbvf_ring*, %struct.igbvf_ring*, i32 }
%struct.igbvf_ring = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IGBVF_MIN_RXD = common dso_local global i64 0, align 8
@IGBVF_MAX_RXD = common dso_local global i64 0, align 8
@REQ_RX_DESCRIPTOR_MULTIPLE = common dso_local global i32 0, align 4
@IGBVF_MIN_TXD = common dso_local global i64 0, align 8
@IGBVF_MAX_TXD = common dso_local global i64 0, align 8
@REQ_TX_DESCRIPTOR_MULTIPLE = common dso_local global i32 0, align 4
@__IGBVF_RESETTING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @igbvf_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.igbvf_adapter*, align 8
  %7 = alloca %struct.igbvf_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.igbvf_adapter* %12, %struct.igbvf_adapter** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %177

25:                                               ; preds = %17
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @IGBVF_MIN_RXD, align 8
  %30 = call i64 @max(i32 %28, i64 %29)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @IGBVF_MAX_RXD, align 8
  %33 = call i64 @min(i64 %31, i64 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @REQ_RX_DESCRIPTOR_MULTIPLE, align 4
  %36 = call i64 @ALIGN(i64 %34, i32 %35)
  store i64 %36, i64* %9, align 8
  %37 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* @IGBVF_MIN_TXD, align 8
  %41 = call i64 @max(i32 %39, i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* @IGBVF_MAX_TXD, align 8
  %44 = call i64 @min(i64 %42, i64 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* @REQ_TX_DESCRIPTOR_MULTIPLE, align 4
  %47 = call i64 @ALIGN(i64 %45, i32 %46)
  store i64 %47, i64* %10, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %50 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %49, i32 0, i32 2
  %51 = load %struct.igbvf_ring*, %struct.igbvf_ring** %50, align 8
  %52 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %48, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %25
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %57, i32 0, i32 1
  %59 = load %struct.igbvf_ring*, %struct.igbvf_ring** %58, align 8
  %60 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %177

64:                                               ; preds = %55, %25
  br label %65

65:                                               ; preds = %71, %64
  %66 = load i32, i32* @__IGBVF_RESETTING, align 4
  %67 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %67, i32 0, i32 0
  %69 = call i64 @test_and_set_bit(i32 %66, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = call i32 @msleep(i32 1)
  br label %65

73:                                               ; preds = %65
  %74 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %75 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @netif_running(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %73
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %82 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %81, i32 0, i32 2
  %83 = load %struct.igbvf_ring*, %struct.igbvf_ring** %82, align 8
  %84 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %83, i32 0, i32 0
  store i64 %80, i64* %84, align 8
  %85 = load i64, i64* %9, align 8
  %86 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %87 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %86, i32 0, i32 1
  %88 = load %struct.igbvf_ring*, %struct.igbvf_ring** %87, align 8
  %89 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  br label %171

90:                                               ; preds = %73
  %91 = call %struct.igbvf_ring* @vmalloc(i32 8)
  store %struct.igbvf_ring* %91, %struct.igbvf_ring** %7, align 8
  %92 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %93 = icmp ne %struct.igbvf_ring* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %8, align 4
  br label %171

97:                                               ; preds = %90
  %98 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %99 = call i32 @igbvf_down(%struct.igbvf_adapter* %98)
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %102 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %101, i32 0, i32 2
  %103 = load %struct.igbvf_ring*, %struct.igbvf_ring** %102, align 8
  %104 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %100, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %97
  %108 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %109 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %110 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %109, i32 0, i32 2
  %111 = load %struct.igbvf_ring*, %struct.igbvf_ring** %110, align 8
  %112 = call i32 @memcpy(%struct.igbvf_ring* %108, %struct.igbvf_ring* %111, i32 8)
  %113 = load i64, i64* %10, align 8
  %114 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %115 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %117 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %118 = call i32 @igbvf_setup_tx_resources(%struct.igbvf_adapter* %116, %struct.igbvf_ring* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  br label %166

122:                                              ; preds = %107
  %123 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %124 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %123, i32 0, i32 2
  %125 = load %struct.igbvf_ring*, %struct.igbvf_ring** %124, align 8
  %126 = call i32 @igbvf_free_tx_resources(%struct.igbvf_ring* %125)
  %127 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %128 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %127, i32 0, i32 2
  %129 = load %struct.igbvf_ring*, %struct.igbvf_ring** %128, align 8
  %130 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %131 = call i32 @memcpy(%struct.igbvf_ring* %129, %struct.igbvf_ring* %130, i32 8)
  br label %132

132:                                              ; preds = %122, %97
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %135 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %134, i32 0, i32 1
  %136 = load %struct.igbvf_ring*, %struct.igbvf_ring** %135, align 8
  %137 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %133, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %132
  %141 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %142 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %143 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %142, i32 0, i32 1
  %144 = load %struct.igbvf_ring*, %struct.igbvf_ring** %143, align 8
  %145 = call i32 @memcpy(%struct.igbvf_ring* %141, %struct.igbvf_ring* %144, i32 8)
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %148 = getelementptr inbounds %struct.igbvf_ring, %struct.igbvf_ring* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  %149 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %150 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %151 = call i32 @igbvf_setup_rx_resources(%struct.igbvf_adapter* %149, %struct.igbvf_ring* %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %140
  br label %166

155:                                              ; preds = %140
  %156 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %157 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %156, i32 0, i32 1
  %158 = load %struct.igbvf_ring*, %struct.igbvf_ring** %157, align 8
  %159 = call i32 @igbvf_free_rx_resources(%struct.igbvf_ring* %158)
  %160 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %161 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %160, i32 0, i32 1
  %162 = load %struct.igbvf_ring*, %struct.igbvf_ring** %161, align 8
  %163 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %164 = call i32 @memcpy(%struct.igbvf_ring* %162, %struct.igbvf_ring* %163, i32 8)
  br label %165

165:                                              ; preds = %155, %132
  br label %166

166:                                              ; preds = %165, %154, %121
  %167 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %168 = call i32 @igbvf_up(%struct.igbvf_adapter* %167)
  %169 = load %struct.igbvf_ring*, %struct.igbvf_ring** %7, align 8
  %170 = call i32 @vfree(%struct.igbvf_ring* %169)
  br label %171

171:                                              ; preds = %166, %94, %79
  %172 = load i32, i32* @__IGBVF_RESETTING, align 4
  %173 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %174 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %173, i32 0, i32 0
  %175 = call i32 @clear_bit(i32 %172, i32* %174)
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %171, %63, %22
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local %struct.igbvf_ring* @vmalloc(i32) #1

declare dso_local i32 @igbvf_down(%struct.igbvf_adapter*) #1

declare dso_local i32 @memcpy(%struct.igbvf_ring*, %struct.igbvf_ring*, i32) #1

declare dso_local i32 @igbvf_setup_tx_resources(%struct.igbvf_adapter*, %struct.igbvf_ring*) #1

declare dso_local i32 @igbvf_free_tx_resources(%struct.igbvf_ring*) #1

declare dso_local i32 @igbvf_setup_rx_resources(%struct.igbvf_adapter*, %struct.igbvf_ring*) #1

declare dso_local i32 @igbvf_free_rx_resources(%struct.igbvf_ring*) #1

declare dso_local i32 @igbvf_up(%struct.igbvf_adapter*) #1

declare dso_local i32 @vfree(%struct.igbvf_ring*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
