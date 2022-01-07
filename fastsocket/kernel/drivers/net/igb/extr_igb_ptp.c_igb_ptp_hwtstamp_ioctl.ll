; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_hwtstamp_ioctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ptp.c_igb_ptp_hwtstamp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@E1000_TSYNCTXCTL_ENABLED = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_ENABLED = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_L4_V1 = common dso_local global i32 0, align 4
@E1000_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE = common dso_local global i32 0, align 4
@E1000_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_EVENT_V2 = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@E1000_TSYNCRXCTL_TYPE_ALL = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i64 0, align 8
@e1000_82580 = common dso_local global i64 0, align 8
@e1000_i210 = common dso_local global i64 0, align 8
@e1000_i211 = common dso_local global i64 0, align 8
@E1000_RXPBS = common dso_local global i32 0, align 4
@E1000_RXPBS_CFG_TS_EN = common dso_local global i32 0, align 4
@E1000_TSYNCTXCTL = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL = common dso_local global i32 0, align 4
@E1000_TSYNCRXCTL_TYPE_MASK = common dso_local global i32 0, align 4
@E1000_TSYNCRXCFG = common dso_local global i32 0, align 4
@E1000_ETQF_FILTER_ENABLE = common dso_local global i32 0, align 4
@E1000_ETQF_1588 = common dso_local global i32 0, align 4
@ETH_P_1588 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@E1000_FTQF_VF_BP = common dso_local global i32 0, align 4
@E1000_FTQF_1588_TIME_STAMP = common dso_local global i32 0, align 4
@E1000_FTQF_MASK = common dso_local global i32 0, align 4
@E1000_FTQF_MASK_PROTO_BP = common dso_local global i32 0, align 4
@PTP_EV_PORT = common dso_local global i32 0, align 4
@E1000_IMIREXT_SIZE_BP = common dso_local global i32 0, align 4
@E1000_IMIREXT_CTRL_BP = common dso_local global i32 0, align 4
@E1000_FTQF_MASK_SOURCE_PORT_BP = common dso_local global i32 0, align 4
@E1000_TXSTMPL = common dso_local global i32 0, align 4
@E1000_TXSTMPH = common dso_local global i32 0, align 4
@E1000_RXSTMPL = common dso_local global i32 0, align 4
@E1000_RXSTMPH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_ptp_hwtstamp_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.igb_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca %struct.hwtstamp_config, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %18)
  store %struct.igb_adapter* %19, %struct.igb_adapter** %8, align 8
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %8, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 0
  store %struct.e1000_hw* %21, %struct.e1000_hw** %9, align 8
  %22 = load i32, i32* @E1000_TSYNCTXCTL_ENABLED, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  store i32 %23, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %24 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %25 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @copy_from_user(%struct.hwtstamp_config* %10, i32 %26, i32 16)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EFAULT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %249

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %10, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %249

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %10, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %44 [
    i32 129, label %42
    i32 128, label %43
  ]

42:                                               ; preds = %39
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %42
  br label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ERANGE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %249

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %10, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %79 [
    i32 142, label %50
    i32 139, label %51
    i32 141, label %56
    i32 137, label %61
    i32 135, label %61
    i32 132, label %61
    i32 130, label %61
    i32 134, label %61
    i32 131, label %61
    i32 138, label %61
    i32 136, label %61
    i32 133, label %61
    i32 140, label %66
    i32 143, label %66
  ]

50:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %83

51:                                               ; preds = %47
  %52 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L4_V1, align 4
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* @E1000_TSYNCRXCFG_PTP_V1_SYNC_MESSAGE, align 4
  store i32 %55, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %83

56:                                               ; preds = %47
  %57 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_L4_V1, align 4
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* @E1000_TSYNCRXCFG_PTP_V1_DELAY_REQ_MESSAGE, align 4
  store i32 %60, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %83

61:                                               ; preds = %47, %47, %47, %47, %47, %47, %47, %47, %47
  %62 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_EVENT_V2, align 4
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %10, i32 0, i32 1
  store i32 137, i32* %65, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  br label %83

66:                                               ; preds = %47, %47
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %68 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @e1000_82576, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_ALL, align 4
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %10, i32 0, i32 1
  store i32 143, i32* %77, align 4
  br label %83

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %47, %78
  %80 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %10, i32 0, i32 1
  store i32 142, i32* %80, align 4
  %81 = load i32, i32* @ERANGE, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %249

83:                                               ; preds = %73, %61, %56, %51, %50
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @e1000_82575, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %83
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %249

98:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %249

99:                                               ; preds = %83
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @e1000_82580, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %99
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %138

109:                                              ; preds = %106
  %110 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_ALL, align 4
  %112 = load i32, i32* %12, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %12, align 4
  %114 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %10, i32 0, i32 1
  store i32 143, i32* %114, align 4
  store i32 1, i32* %15, align 4
  store i32 1, i32* %14, align 4
  %115 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %116 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @e1000_i210, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %128, label %121

121:                                              ; preds = %109
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %123 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @e1000_i211, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %121, %109
  %129 = load i32, i32* @E1000_RXPBS, align 4
  %130 = call i32 @rd32(i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* @E1000_RXPBS_CFG_TS_EN, align 4
  %132 = load i32, i32* %16, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* @E1000_RXPBS, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @wr32(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %128, %121
  br label %138

138:                                              ; preds = %137, %106, %99
  %139 = load i32, i32* @E1000_TSYNCTXCTL, align 4
  %140 = call i32 @rd32(i32 %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* @E1000_TSYNCTXCTL_ENABLED, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %16, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %16, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* @E1000_TSYNCTXCTL, align 4
  %149 = load i32, i32* %16, align 4
  %150 = call i32 @wr32(i32 %148, i32 %149)
  %151 = load i32, i32* @E1000_TSYNCRXCTL, align 4
  %152 = call i32 @rd32(i32 %151)
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* @E1000_TSYNCRXCTL_ENABLED, align 4
  %154 = load i32, i32* @E1000_TSYNCRXCTL_TYPE_MASK, align 4
  %155 = or i32 %153, %154
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %16, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %16, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %16, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* @E1000_TSYNCRXCTL, align 4
  %163 = load i32, i32* %16, align 4
  %164 = call i32 @wr32(i32 %162, i32 %163)
  %165 = load i32, i32* @E1000_TSYNCRXCFG, align 4
  %166 = load i32, i32* %13, align 4
  %167 = call i32 @wr32(i32 %165, i32 %166)
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %138
  %171 = call i32 @E1000_ETQF(i32 3)
  %172 = load i32, i32* @E1000_ETQF_FILTER_ENABLE, align 4
  %173 = load i32, i32* @E1000_ETQF_1588, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @ETH_P_1588, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @wr32(i32 %171, i32 %176)
  br label %181

178:                                              ; preds = %138
  %179 = call i32 @E1000_ETQF(i32 3)
  %180 = call i32 @wr32(i32 %179, i32 0)
  br label %181

181:                                              ; preds = %178, %170
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %224

184:                                              ; preds = %181
  %185 = load i32, i32* @IPPROTO_UDP, align 4
  %186 = load i32, i32* @E1000_FTQF_VF_BP, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @E1000_FTQF_1588_TIME_STAMP, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @E1000_FTQF_MASK, align 4
  %191 = or i32 %189, %190
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* @E1000_FTQF_MASK_PROTO_BP, align 4
  %193 = xor i32 %192, -1
  %194 = load i32, i32* %17, align 4
  %195 = and i32 %194, %193
  store i32 %195, i32* %17, align 4
  %196 = call i32 @E1000_IMIR(i32 3)
  %197 = load i32, i32* @PTP_EV_PORT, align 4
  %198 = call i32 @htons(i32 %197)
  %199 = call i32 @wr32(i32 %196, i32 %198)
  %200 = call i32 @E1000_IMIREXT(i32 3)
  %201 = load i32, i32* @E1000_IMIREXT_SIZE_BP, align 4
  %202 = load i32, i32* @E1000_IMIREXT_CTRL_BP, align 4
  %203 = or i32 %201, %202
  %204 = call i32 @wr32(i32 %200, i32 %203)
  %205 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %206 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @e1000_82576, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %220

211:                                              ; preds = %184
  %212 = call i32 @E1000_SPQF(i32 3)
  %213 = load i32, i32* @PTP_EV_PORT, align 4
  %214 = call i32 @htons(i32 %213)
  %215 = call i32 @wr32(i32 %212, i32 %214)
  %216 = load i32, i32* @E1000_FTQF_MASK_SOURCE_PORT_BP, align 4
  %217 = xor i32 %216, -1
  %218 = load i32, i32* %17, align 4
  %219 = and i32 %218, %217
  store i32 %219, i32* %17, align 4
  br label %220

220:                                              ; preds = %211, %184
  %221 = call i32 @E1000_FTQF(i32 3)
  %222 = load i32, i32* %17, align 4
  %223 = call i32 @wr32(i32 %221, i32 %222)
  br label %228

224:                                              ; preds = %181
  %225 = call i32 @E1000_FTQF(i32 3)
  %226 = load i32, i32* @E1000_FTQF_MASK, align 4
  %227 = call i32 @wr32(i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %224, %220
  %229 = call i32 (...) @wrfl()
  %230 = load i32, i32* @E1000_TXSTMPL, align 4
  %231 = call i32 @rd32(i32 %230)
  store i32 %231, i32* %16, align 4
  %232 = load i32, i32* @E1000_TXSTMPH, align 4
  %233 = call i32 @rd32(i32 %232)
  store i32 %233, i32* %16, align 4
  %234 = load i32, i32* @E1000_RXSTMPL, align 4
  %235 = call i32 @rd32(i32 %234)
  store i32 %235, i32* %16, align 4
  %236 = load i32, i32* @E1000_RXSTMPH, align 4
  %237 = call i32 @rd32(i32 %236)
  store i32 %237, i32* %16, align 4
  %238 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %239 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @copy_to_user(i32 %240, %struct.hwtstamp_config* %10, i32 16)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %228
  %244 = load i32, i32* @EFAULT, align 4
  %245 = sub nsw i32 0, %244
  br label %247

246:                                              ; preds = %228
  br label %247

247:                                              ; preds = %246, %243
  %248 = phi i32 [ %245, %243 ], [ 0, %246 ]
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %247, %98, %95, %79, %44, %36, %29
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @E1000_ETQF(i32) #1

declare dso_local i32 @E1000_IMIR(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @E1000_IMIREXT(i32) #1

declare dso_local i32 @E1000_SPQF(i32) #1

declare dso_local i32 @E1000_FTQF(i32) #1

declare dso_local i32 @wrfl(...) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
