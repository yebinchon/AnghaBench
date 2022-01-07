; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/sja1000/extr_sja1000.c_sja1000_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.net_device_stats }
%struct.TYPE_4__ = type { i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.sja1000_priv = type { i32 (%struct.sja1000_priv*, i32)*, %struct.TYPE_6__, i32 (%struct.sja1000_priv*, i32, i32)* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.can_frame = type { i32, i32*, i64 }
%struct.sk_buff = type { i32, %struct.net_device* }

@ENOMEM = common dso_local global i32 0, align 4
@ETH_P_CAN = common dso_local global i32 0, align 4
@CAN_ERR_FLAG = common dso_local global i32 0, align 4
@CAN_ERR_DLC = common dso_local global i64 0, align 8
@IRQ_DOI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"data overrun interrupt\0A\00", align 1
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@REG_CMR = common dso_local global i32 0, align 4
@CMD_CDO = common dso_local global i32 0, align 4
@IRQ_EI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"error warning interrupt\0A\00", align 1
@SR_BS = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@SR_ES = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@IRQ_BEI = common dso_local global i32 0, align 4
@REG_ECC = common dso_local global i32 0, align 4
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@ECC_MASK = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@CAN_ERR_PROT_UNSPEC = common dso_local global i32 0, align 4
@ECC_SEG = common dso_local global i32 0, align 4
@ECC_DIR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_TX = common dso_local global i32 0, align 4
@IRQ_EPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"error passive interrupt\0A\00", align 1
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@IRQ_ALI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"arbitration lost interrupt\0A\00", align 1
@REG_ALC = common dso_local global i32 0, align 4
@CAN_ERR_LOSTARB = common dso_local global i32 0, align 4
@REG_RXERR = common dso_local global i32 0, align 4
@REG_TXERR = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @sja1000_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1000_err(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sja1000_priv*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca %struct.can_frame*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.sja1000_priv* %18, %struct.sja1000_priv** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  store %struct.net_device_stats* %20, %struct.net_device_stats** %9, align 8
  %21 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %22 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %12, align 4
  %25 = call %struct.sk_buff* @dev_alloc_skb(i32 24)
  store %struct.sk_buff* %25, %struct.sk_buff** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = icmp eq %struct.sk_buff* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %360

31:                                               ; preds = %3
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 1
  store %struct.net_device* %32, %struct.net_device** %34, align 8
  %35 = load i32, i32* @ETH_P_CAN, align 4
  %36 = call i32 @htons(i32 %35)
  %37 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %40 = call i64 @skb_put(%struct.sk_buff* %39, i32 24)
  %41 = inttoptr i64 %40 to %struct.can_frame*
  store %struct.can_frame* %41, %struct.can_frame** %10, align 8
  %42 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %43 = call i32 @memset(%struct.can_frame* %42, i32 0, i32 24)
  %44 = load i32, i32* @CAN_ERR_FLAG, align 4
  %45 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %46 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* @CAN_ERR_DLC, align 8
  %48 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %49 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @IRQ_DOI, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %31
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_dbg(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @CAN_ERR_CRTL, align 4
  %61 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %62 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %66 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %67 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 %65, i32* %69, align 4
  %70 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %71 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %75 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  %78 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %79 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %78, i32 0, i32 2
  %80 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %79, align 8
  %81 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %82 = load i32, i32* @REG_CMR, align 4
  %83 = load i32, i32* @CMD_CDO, align 4
  %84 = call i32 %80(%struct.sja1000_priv* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %54, %31
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @IRQ_EI, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %85
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_dbg(i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @SR_BS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %90
  %101 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %103 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %104 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = call i32 @can_bus_off(%struct.net_device* %107)
  br label %119

109:                                              ; preds = %90
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @SR_ES, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  store i32 %115, i32* %12, align 4
  br label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %116, %114
  br label %119

119:                                              ; preds = %118, %100
  br label %120

120:                                              ; preds = %119, %85
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @IRQ_BEI, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %205

125:                                              ; preds = %120
  %126 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %127 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %133 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %137 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %136, i32 0, i32 0
  %138 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %137, align 8
  %139 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %140 = load i32, i32* @REG_ECC, align 4
  %141 = call i32 %138(%struct.sja1000_priv* %139, i32 %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* @CAN_ERR_PROT, align 4
  %143 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %146 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* @ECC_MASK, align 4
  %151 = and i32 %149, %150
  switch i32 %151, label %176 [
    i32 130, label %152
    i32 129, label %160
    i32 128, label %168
  ]

152:                                              ; preds = %125
  %153 = load i32, i32* @CAN_ERR_PROT_BIT, align 4
  %154 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %155 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %153
  store i32 %159, i32* %157, align 4
  br label %191

160:                                              ; preds = %125
  %161 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %162 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %163 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %161
  store i32 %167, i32* %165, align 4
  br label %191

168:                                              ; preds = %125
  %169 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %170 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %171 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = load i32, i32* %173, align 4
  %175 = or i32 %174, %169
  store i32 %175, i32* %173, align 4
  br label %191

176:                                              ; preds = %125
  %177 = load i32, i32* @CAN_ERR_PROT_UNSPEC, align 4
  %178 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %179 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %177
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @ECC_SEG, align 4
  %186 = and i32 %184, %185
  %187 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %188 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 3
  store i32 %186, i32* %190, align 4
  br label %191

191:                                              ; preds = %176, %168, %160, %152
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @ECC_DIR, align 4
  %194 = and i32 %192, %193
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %191
  %197 = load i32, i32* @CAN_ERR_PROT_TX, align 4
  %198 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %199 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = or i32 %202, %197
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %196, %191
  br label %205

205:                                              ; preds = %204, %120
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @IRQ_EPI, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %225

210:                                              ; preds = %205
  %211 = load %struct.net_device*, %struct.net_device** %5, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @dev_dbg(i32 %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @SR_ES, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %210
  %221 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  store i32 %221, i32* %12, align 4
  br label %224

222:                                              ; preds = %210
  %223 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  store i32 %223, i32* %12, align 4
  br label %224

224:                                              ; preds = %222, %220
  br label %225

225:                                              ; preds = %224, %205
  %226 = load i32, i32* %6, align 4
  %227 = load i32, i32* @IRQ_ALI, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %263

230:                                              ; preds = %225
  %231 = load %struct.net_device*, %struct.net_device** %5, align 8
  %232 = getelementptr inbounds %struct.net_device, %struct.net_device* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @dev_dbg(i32 %234, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %236 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %237 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %236, i32 0, i32 0
  %238 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %237, align 8
  %239 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %240 = load i32, i32* @REG_ALC, align 4
  %241 = call i32 %238(%struct.sja1000_priv* %239, i32 %240)
  store i32 %241, i32* %14, align 4
  %242 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %243 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  %248 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %249 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* @CAN_ERR_LOSTARB, align 4
  %253 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %254 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 8
  %257 = load i32, i32* %14, align 4
  %258 = and i32 %257, 31
  %259 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %260 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 %258, i32* %262, align 4
  br label %263

263:                                              ; preds = %230, %225
  %264 = load i32, i32* %12, align 4
  %265 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %266 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %264, %268
  br i1 %269, label %270, label %340

270:                                              ; preds = %263
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %278, label %274

274:                                              ; preds = %270
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %340

278:                                              ; preds = %274, %270
  %279 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %280 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %279, i32 0, i32 0
  %281 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %280, align 8
  %282 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %283 = load i32, i32* @REG_RXERR, align 4
  %284 = call i32 %281(%struct.sja1000_priv* %282, i32 %283)
  store i32 %284, i32* %15, align 4
  %285 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %286 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %285, i32 0, i32 0
  %287 = load i32 (%struct.sja1000_priv*, i32)*, i32 (%struct.sja1000_priv*, i32)** %286, align 8
  %288 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %289 = load i32, i32* @REG_TXERR, align 4
  %290 = call i32 %287(%struct.sja1000_priv* %288, i32 %289)
  store i32 %290, i32* %16, align 4
  %291 = load i32, i32* @CAN_ERR_CRTL, align 4
  %292 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %293 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = or i32 %294, %291
  store i32 %295, i32* %293, align 8
  %296 = load i32, i32* %12, align 4
  %297 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %319

299:                                              ; preds = %278
  %300 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %301 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %303, align 4
  %306 = load i32, i32* %16, align 4
  %307 = load i32, i32* %15, align 4
  %308 = icmp sgt i32 %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %299
  %310 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  br label %313

311:                                              ; preds = %299
  %312 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  br label %313

313:                                              ; preds = %311, %309
  %314 = phi i32 [ %310, %309 ], [ %312, %311 ]
  %315 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %316 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %315, i32 0, i32 1
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 1
  store i32 %314, i32* %318, align 4
  br label %339

319:                                              ; preds = %278
  %320 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %321 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %323, align 4
  %326 = load i32, i32* %16, align 4
  %327 = load i32, i32* %15, align 4
  %328 = icmp sgt i32 %326, %327
  br i1 %328, label %329, label %331

329:                                              ; preds = %319
  %330 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  br label %333

331:                                              ; preds = %319
  %332 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  br label %333

333:                                              ; preds = %331, %329
  %334 = phi i32 [ %330, %329 ], [ %332, %331 ]
  %335 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %336 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %335, i32 0, i32 1
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  store i32 %334, i32* %338, align 4
  br label %339

339:                                              ; preds = %333, %313
  br label %340

340:                                              ; preds = %339, %274, %263
  %341 = load i32, i32* %12, align 4
  %342 = load %struct.sja1000_priv*, %struct.sja1000_priv** %8, align 8
  %343 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  store i32 %341, i32* %344, align 8
  %345 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %346 = call i32 @netif_rx(%struct.sk_buff* %345)
  %347 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %348 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %348, align 4
  %351 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %352 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %355 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = add nsw i64 %357, %353
  %359 = trunc i64 %358 to i32
  store i32 %359, i32* %355, align 4
  store i32 0, i32* %4, align 4
  br label %360

360:                                              ; preds = %340, %28
  %361 = load i32, i32* %4, align 4
  ret i32 %361
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.can_frame*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
