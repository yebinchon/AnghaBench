; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_ResetAdapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_ResetAdapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i64, i64, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TLAN_HOST_CMD = common dso_local global i32 0, align 4
@TLAN_HC_AD_RST = common dso_local global i32 0, align 4
@TLAN_HC_INT_OFF = common dso_local global i32 0, align 4
@TLAN_AREG_0 = common dso_local global i32 0, align 4
@TLAN_HASH_2 = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1FRAG = common dso_local global i32 0, align 4
@TLAN_NET_CFG_1CHAN = common dso_local global i32 0, align 4
@TLAN_NET_CFG_PHY_EN = common dso_local global i32 0, align 4
@TLAN_NET_CONFIG = common dso_local global i32 0, align 4
@TLAN_HC_LD_TMR = common dso_local global i32 0, align 4
@TLAN_HC_LD_THR = common dso_local global i32 0, align 4
@TLAN_NET_SIO = common dso_local global i32 0, align 4
@TLAN_DIO_ADR = common dso_local global i32 0, align 4
@TLAN_DIO_DATA = common dso_local global i32 0, align 4
@TLAN_NET_SIO_NMRST = common dso_local global i32 0, align 4
@TLAN_ID_TX_EOC = common dso_local global i32 0, align 4
@TLAN_ID_RX_EOC = common dso_local global i32 0, align 4
@TLAN_INT_DIS = common dso_local global i32 0, align 4
@TLAN_ADAPTER_BIT_RATE_PHY = common dso_local global i32 0, align 4
@TLAN_NET_CFG_BIT = common dso_local global i32 0, align 4
@TLAN_ACOMMIT = common dso_local global i32 0, align 4
@TLAN_DUPLEX_FULL = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@TLAN_ADAPTER_UNMANAGED_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @TLan_ResetAdapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLan_ResetAdapter(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %8)
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %3, align 8
  %10 = load i32, i32* @FALSE, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  store i32 %10, i32* %12, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call i32 @netif_carrier_off(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TLAN_HOST_CMD, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @inl(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @TLAN_HC_AD_RST, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TLAN_HOST_CMD, align 4
  %31 = add nsw i32 %29, %30
  %32 = call i32 @outl(i32 %26, i32 %31)
  %33 = call i32 @udelay(i32 1000)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @TLAN_HOST_CMD, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @inl(i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* @TLAN_HC_INT_OFF, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TLAN_HOST_CMD, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @outl(i32 %43, i32 %48)
  %50 = load i32, i32* @TLAN_AREG_0, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %61, %1
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @TLAN_HASH_2, align 4
  %54 = icmp sle i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @TLan_DioWrite32(i32 %58, i32 %59, i32 0)
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 4
  store i32 %63, i32* %4, align 4
  br label %51

64:                                               ; preds = %51
  %65 = load i32, i32* @TLAN_NET_CFG_1FRAG, align 4
  %66 = load i32, i32* @TLAN_NET_CFG_1CHAN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @TLAN_NET_CFG_PHY_EN, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %6, align 4
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @TLAN_NET_CONFIG, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @TLan_DioWrite16(i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* @TLAN_HC_LD_TMR, align 4
  %77 = or i32 %76, 63
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TLAN_HOST_CMD, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @outl(i32 %77, i32 %82)
  %84 = load i32, i32* @TLAN_HC_LD_THR, align 4
  %85 = or i32 %84, 9
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TLAN_HOST_CMD, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @outl(i32 %85, i32 %90)
  %92 = load i32, i32* @TLAN_NET_SIO, align 4
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @TLAN_DIO_ADR, align 4
  %97 = add nsw i32 %95, %96
  %98 = call i32 @outw(i32 %92, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @TLAN_DIO_DATA, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* @TLAN_NET_SIO, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* @TLAN_NET_SIO_NMRST, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @TLan_SetBit(i32 %106, i32 %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp sge i32 %111, 48
  br i1 %112, label %113, label %123

113:                                              ; preds = %64
  %114 = load i32, i32* @TLAN_ID_TX_EOC, align 4
  %115 = load i32, i32* @TLAN_ID_RX_EOC, align 4
  %116 = or i32 %114, %115
  store i32 %116, i32* %7, align 4
  %117 = load %struct.net_device*, %struct.net_device** %2, align 8
  %118 = getelementptr inbounds %struct.net_device, %struct.net_device* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @TLAN_INT_DIS, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @TLan_DioWrite8(i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %113, %64
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = call i32 @TLan_PhyDetect(%struct.net_device* %124)
  %126 = load i32, i32* @TLAN_NET_CFG_1FRAG, align 4
  %127 = load i32, i32* @TLAN_NET_CFG_1CHAN, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %6, align 4
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @TLAN_ADAPTER_BIT_RATE_PHY, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %174

137:                                              ; preds = %123
  %138 = load i32, i32* @TLAN_NET_CFG_BIT, align 4
  %139 = load i32, i32* %6, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %6, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %151

145:                                              ; preds = %137
  %146 = load %struct.net_device*, %struct.net_device** %2, align 8
  %147 = getelementptr inbounds %struct.net_device, %struct.net_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @TLAN_ACOMMIT, align 4
  %150 = call i32 @TLan_DioWrite8(i32 %148, i32 %149, i32 10)
  br label %173

151:                                              ; preds = %137
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @TLAN_DUPLEX_FULL, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %151
  %158 = load %struct.net_device*, %struct.net_device** %2, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @TLAN_ACOMMIT, align 4
  %162 = call i32 @TLan_DioWrite8(i32 %160, i32 %161, i32 0)
  %163 = load i32, i32* @TRUE, align 4
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  br label %172

166:                                              ; preds = %151
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @TLAN_ACOMMIT, align 4
  %171 = call i32 @TLan_DioWrite8(i32 %169, i32 %170, i32 8)
  br label %172

172:                                              ; preds = %166, %157
  br label %173

173:                                              ; preds = %172, %145
  br label %174

174:                                              ; preds = %173, %123
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load i32, i32* @TLAN_NET_CFG_PHY_EN, align 4
  %181 = load i32, i32* %6, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %6, align 4
  br label %183

183:                                              ; preds = %179, %174
  %184 = load %struct.net_device*, %struct.net_device** %2, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @TLAN_NET_CONFIG, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @TLan_DioWrite16(i32 %186, i32 %187, i32 %188)
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @TLAN_ADAPTER_UNMANAGED_PHY, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %183
  %199 = load %struct.net_device*, %struct.net_device** %2, align 8
  %200 = call i32 @TLan_FinishReset(%struct.net_device* %199)
  br label %204

201:                                              ; preds = %183
  %202 = load %struct.net_device*, %struct.net_device** %2, align 8
  %203 = call i32 @TLan_PhyPowerDown(%struct.net_device* %202)
  br label %204

204:                                              ; preds = %201, %198
  ret void
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @TLan_DioWrite32(i32, i32, i32) #1

declare dso_local i32 @TLan_DioWrite16(i32, i32, i32) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @TLan_SetBit(i32, i32) #1

declare dso_local i32 @TLan_DioWrite8(i32, i32, i32) #1

declare dso_local i32 @TLan_PhyDetect(%struct.net_device*) #1

declare dso_local i32 @TLan_FinishReset(%struct.net_device*) #1

declare dso_local i32 @TLan_PhyPowerDown(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
