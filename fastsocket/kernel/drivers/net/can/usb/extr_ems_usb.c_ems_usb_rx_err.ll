; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_rx_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_rx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ems_usb = type { %struct.TYPE_16__, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.ems_cpc_msg = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.can_frame = type { i32, i32*, i64 }
%struct.sk_buff = type { i32 }

@ETH_P_CAN = common dso_local global i32 0, align 4
@CAN_ERR_FLAG = common dso_local global i32 0, align 4
@CAN_ERR_DLC = common dso_local global i64 0, align 8
@CPC_MSG_TYPE_CAN_STATE = common dso_local global i64 0, align 8
@SJA1000_SR_BS = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i64 0, align 8
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@SJA1000_SR_ES = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i64 0, align 8
@CAN_STATE_ERROR_ACTIVE = common dso_local global i64 0, align 8
@CPC_MSG_TYPE_CAN_FRAME_ERROR = common dso_local global i64 0, align 8
@CAN_ERR_PROT = common dso_local global i32 0, align 4
@CAN_ERR_BUSERROR = common dso_local global i32 0, align 4
@SJA1000_ECC_MASK = common dso_local global i32 0, align 4
@CAN_ERR_PROT_BIT = common dso_local global i32 0, align 4
@CAN_ERR_PROT_FORM = common dso_local global i32 0, align 4
@CAN_ERR_PROT_STUFF = common dso_local global i32 0, align 4
@CAN_ERR_PROT_UNSPEC = common dso_local global i32 0, align 4
@SJA1000_ECC_SEG = common dso_local global i32 0, align 4
@SJA1000_ECC_DIR = common dso_local global i32 0, align 4
@CAN_ERR_PROT_TX = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i64 0, align 8
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CPC_MSG_TYPE_OVERRUN = common dso_local global i64 0, align 8
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ems_usb*, %struct.ems_cpc_msg*)* @ems_usb_rx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ems_usb_rx_err(%struct.ems_usb* %0, %struct.ems_cpc_msg* %1) #0 {
  %3 = alloca %struct.ems_usb*, align 8
  %4 = alloca %struct.ems_cpc_msg*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ems_usb* %0, %struct.ems_usb** %3, align 8
  store %struct.ems_cpc_msg* %1, %struct.ems_cpc_msg** %4, align 8
  %12 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %13 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %12, i32 0, i32 1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %7, align 8
  %16 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %17 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_17__* %18, i32 24)
  store %struct.sk_buff* %19, %struct.sk_buff** %6, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %271

23:                                               ; preds = %2
  %24 = load i32, i32* @ETH_P_CAN, align 4
  %25 = call i32 @htons(i32 %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i64 @skb_put(%struct.sk_buff* %28, i32 24)
  %30 = inttoptr i64 %29 to %struct.can_frame*
  store %struct.can_frame* %30, %struct.can_frame** %5, align 8
  %31 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %32 = call i32 @memset(%struct.can_frame* %31, i32 0, i32 24)
  %33 = load i32, i32* @CAN_ERR_FLAG, align 4
  %34 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %35 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @CAN_ERR_DLC, align 8
  %37 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %38 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %40 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CPC_MSG_TYPE_CAN_STATE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %96

44:                                               ; preds = %23
  %45 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %46 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @SJA1000_SR_BS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %44
  %54 = load i64, i64* @CAN_STATE_BUS_OFF, align 8
  %55 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %56 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %59 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %60 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %64 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = call i32 @can_bus_off(%struct.TYPE_17__* %65)
  br label %95

67:                                               ; preds = %44
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @SJA1000_SR_ES, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %74 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %75 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  %77 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %78 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %94

83:                                               ; preds = %67
  %84 = load i64, i64* @CAN_STATE_ERROR_ACTIVE, align 8
  %85 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %86 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  store i64 %84, i64* %87, align 8
  %88 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %89 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %83, %72
  br label %95

95:                                               ; preds = %94, %53
  br label %255

96:                                               ; preds = %23
  %97 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %98 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CPC_MSG_TYPE_CAN_FRAME_ERROR, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %228

102:                                              ; preds = %96
  %103 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %104 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %9, align 4
  %111 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %112 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %10, align 4
  %119 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %120 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %11, align 4
  %127 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %128 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 8
  %133 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %134 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* @CAN_ERR_PROT, align 4
  %138 = load i32, i32* @CAN_ERR_BUSERROR, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %141 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @SJA1000_ECC_MASK, align 4
  %146 = and i32 %144, %145
  switch i32 %146, label %171 [
    i32 130, label %147
    i32 129, label %155
    i32 128, label %163
  ]

147:                                              ; preds = %102
  %148 = load i32, i32* @CAN_ERR_PROT_BIT, align 4
  %149 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %150 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 2
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %148
  store i32 %154, i32* %152, align 4
  br label %186

155:                                              ; preds = %102
  %156 = load i32, i32* @CAN_ERR_PROT_FORM, align 4
  %157 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %158 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 2
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %156
  store i32 %162, i32* %160, align 4
  br label %186

163:                                              ; preds = %102
  %164 = load i32, i32* @CAN_ERR_PROT_STUFF, align 4
  %165 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %166 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %164
  store i32 %170, i32* %168, align 4
  br label %186

171:                                              ; preds = %102
  %172 = load i32, i32* @CAN_ERR_PROT_UNSPEC, align 4
  %173 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %174 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %172
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @SJA1000_ECC_SEG, align 4
  %181 = and i32 %179, %180
  %182 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %183 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 3
  store i32 %181, i32* %185, align 4
  br label %186

186:                                              ; preds = %171, %163, %155, %147
  %187 = load i32, i32* %9, align 4
  %188 = load i32, i32* @SJA1000_ECC_DIR, align 4
  %189 = and i32 %187, %188
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %186
  %192 = load i32, i32* @CAN_ERR_PROT_TX, align 4
  %193 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %194 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %192
  store i32 %198, i32* %196, align 4
  br label %199

199:                                              ; preds = %191, %186
  %200 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %201 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @CAN_STATE_ERROR_WARNING, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %213, label %206

206:                                              ; preds = %199
  %207 = load %struct.ems_usb*, %struct.ems_usb** %3, align 8
  %208 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @CAN_STATE_ERROR_PASSIVE, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %227

213:                                              ; preds = %206, %199
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %11, align 4
  %216 = icmp sgt i32 %214, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  br label %221

219:                                              ; preds = %213
  %220 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  br label %221

221:                                              ; preds = %219, %217
  %222 = phi i32 [ %218, %217 ], [ %220, %219 ]
  %223 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %224 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  store i32 %222, i32* %226, align 4
  br label %227

227:                                              ; preds = %221, %206
  br label %254

228:                                              ; preds = %96
  %229 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %4, align 8
  %230 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @CPC_MSG_TYPE_OVERRUN, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %253

234:                                              ; preds = %228
  %235 = load i32, i32* @CAN_ERR_CRTL, align 4
  %236 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %237 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %235
  store i32 %239, i32* %237, align 8
  %240 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %241 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %242 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 1
  store i32 %240, i32* %244, align 4
  %245 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %246 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 4
  %249 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %250 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 4
  br label %253

253:                                              ; preds = %234, %228
  br label %254

254:                                              ; preds = %253, %227
  br label %255

255:                                              ; preds = %254, %95
  %256 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %257 = call i32 @netif_rx(%struct.sk_buff* %256)
  %258 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %259 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %259, align 4
  %262 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %263 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %266 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = add nsw i64 %268, %264
  %270 = trunc i64 %269 to i32
  store i32 %270, i32* %266, align 4
  br label %271

271:                                              ; preds = %255, %22
  ret void
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.can_frame*, i32, i32) #1

declare dso_local i32 @can_bus_off(%struct.TYPE_17__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
