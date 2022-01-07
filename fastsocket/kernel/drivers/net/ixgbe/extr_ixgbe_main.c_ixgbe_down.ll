; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_down.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_6__**, %struct.TYPE_5__*, %struct.ixgbe_hw, i32, i32, i32*, i32, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.net_device = type { i32 }

@__IXGBE_DOWN = common dso_local global i32 0, align 4
@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_RXEN = common dso_local global i32 0, align 4
@IXGBE_FLAG2_FDIR_REQUIRES_REINIT = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RESET_REQUESTED = common dso_local global i32 0, align 4
@IXGBE_FLAG_NEED_LINK_UPDATE = common dso_local global i32 0, align 4
@IXGBE_EITRSEL = common dso_local global i32 0, align 4
@IXGBE_TXDCTL_SWFLSH = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL_TE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbe_down(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %8, i32 0, i32 12
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 7
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %4, align 8
  %13 = load i32, i32* @__IXGBE_DOWN, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 11
  %16 = call i32 @set_bit(i32 %13, i32* %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %18 = load i32, i32* @IXGBE_RXCTRL, align 4
  %19 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %21 = load i32, i32* @IXGBE_RXCTRL, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @IXGBE_RXCTRL_RXEN, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 %25)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %43, %1
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %35, i32 0, i32 10
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ixgbe_disable_rx_queue(%struct.ixgbe_adapter* %34, i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %27

46:                                               ; preds = %27
  %47 = call i32 @usleep_range(i32 10000, i32 20000)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %48)
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netif_carrier_off(%struct.net_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %3, align 8
  %53 = call i32 @netif_tx_disable(%struct.net_device* %52)
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %55 = call i32 @ixgbe_irq_disable(%struct.ixgbe_adapter* %54)
  %56 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %57 = call i32 @ixgbe_napi_disable_all(%struct.ixgbe_adapter* %56)
  %58 = load i32, i32* @IXGBE_FLAG2_FDIR_REQUIRES_REINIT, align 4
  %59 = load i32, i32* @IXGBE_FLAG2_RESET_REQUESTED, align 4
  %60 = or i32 %58, %59
  %61 = xor i32 %60, -1
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load i32, i32* @IXGBE_FLAG_NEED_LINK_UPDATE, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %68, i32 0, i32 9
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 4
  %72 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %72, i32 0, i32 8
  %74 = call i32 @del_timer_sync(i32* %73)
  %75 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %106

79:                                               ; preds = %46
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %80, i32 0, i32 7
  %82 = load i32, i32* @IXGBE_EITRSEL, align 4
  %83 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %81, i32 %82, i32 0)
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %98, %79
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %87 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %84
  %91 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %92 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %91, i32 0, i32 6
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %84

101:                                              ; preds = %84
  %102 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %103 = call i32 @ixgbe_ping_all_vfs(%struct.ixgbe_adapter* %102)
  %104 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %105 = call i32 @ixgbe_disable_tx_rx(%struct.ixgbe_adapter* %104)
  br label %106

106:                                              ; preds = %101, %46
  store i32 0, i32* %6, align 4
  br label %107

107:                                              ; preds = %128, %106
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %131

113:                                              ; preds = %107
  %114 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %114, i32 0, i32 5
  %116 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %116, i64 %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %7, align 4
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @IXGBE_TXDCTL(i32 %124)
  %126 = load i32, i32* @IXGBE_TXDCTL_SWFLSH, align 4
  %127 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %123, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %113
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %107

131:                                              ; preds = %107
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %133 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  switch i32 %135, label %146 [
    i32 129, label %136
    i32 128, label %136
  ]

136:                                              ; preds = %131, %131
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %138 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %140 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %141 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %139, i32 %140)
  %142 = load i32, i32* @IXGBE_DMATXCTL_TE, align 4
  %143 = xor i32 %142, -1
  %144 = and i32 %141, %143
  %145 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %137, i32 %138, i32 %144)
  br label %147

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146, %136
  %148 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %149 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @pci_channel_offline(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %155 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %154)
  br label %156

156:                                              ; preds = %153, %147
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %158 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %160, align 8
  %162 = icmp ne i32 (%struct.ixgbe_hw.0*)* %161, null
  br i1 %162, label %163, label %172

163:                                              ; preds = %156
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %165 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %167, align 8
  %169 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %170 = bitcast %struct.ixgbe_hw* %169 to %struct.ixgbe_hw.0*
  %171 = call i32 %168(%struct.ixgbe_hw.0* %170)
  br label %172

172:                                              ; preds = %163, %156
  %173 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %174 = call i32 @ixgbe_clean_all_tx_rings(%struct.ixgbe_adapter* %173)
  %175 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %176 = call i32 @ixgbe_clean_all_rx_rings(%struct.ixgbe_adapter* %175)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_disable_rx_queue(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @ixgbe_irq_disable(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_napi_disable_all(%struct.ixgbe_adapter*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @ixgbe_ping_all_vfs(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_disable_tx_rx(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_TXDCTL(i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_clean_all_tx_rings(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_clean_all_rx_rings(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
