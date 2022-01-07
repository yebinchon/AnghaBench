; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/usb/extr_ems_usb.c_ems_usb_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32, %struct.TYPE_6__, %struct.net_device_stats }
%struct.TYPE_6__ = type { i32 }
%struct.net_device_stats = type { i32 }
%struct.ems_usb = type { i32, i32, i32, i32, %struct.ems_tx_urb_context* }
%struct.ems_tx_urb_context = type { i32, i32, %struct.ems_usb* }
%struct.can_frame = type { i32, i32, i32* }
%struct.ems_cpc_msg = type { %struct.TYPE_5__, i8*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.urb = type { i32, i32 }

@CPC_HEADER_SIZE = common dso_local global i32 0, align 4
@CPC_MSG_HEADER_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"No memory left for URBs\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@CAN_ERR_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CPC_CMD_TYPE_EXT_RTR_FRAME = common dso_local global i32 0, align 4
@CPC_CMD_TYPE_RTR_FRAME = common dso_local global i32 0, align 4
@CPC_CAN_MSG_MIN_SIZE = common dso_local global i8* null, align 8
@CPC_CMD_TYPE_EXT_CAN_FRAME = common dso_local global i32 0, align 4
@CPC_CMD_TYPE_CAN_FRAME = common dso_local global i32 0, align 4
@MAX_TX_URBS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"couldn't find free context\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ems_usb_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"failed tx_urb %d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ems_usb_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_usb_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ems_usb*, align 8
  %7 = alloca %struct.ems_tx_urb_context*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca %struct.can_frame*, align 8
  %10 = alloca %struct.ems_cpc_msg*, align 8
  %11 = alloca %struct.urb*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ems_usb* @netdev_priv(%struct.net_device* %16)
  store %struct.ems_usb* %17, %struct.ems_usb** %6, align 8
  store %struct.ems_tx_urb_context* null, %struct.ems_tx_urb_context** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 2
  store %struct.net_device_stats* %19, %struct.net_device_stats** %8, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.can_frame*
  store %struct.can_frame* %23, %struct.can_frame** %9, align 8
  %24 = load i32, i32* @CPC_HEADER_SIZE, align 4
  %25 = load i32, i32* @CPC_MSG_HEADER_LEN, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  store i64 %28, i64* %15, align 8
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %29)
  store %struct.urb* %30, %struct.urb** %11, align 8
  %31 = load %struct.urb*, %struct.urb** %11, align 8
  %32 = icmp ne %struct.urb* %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %323

39:                                               ; preds = %2
  %40 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %41 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = load %struct.urb*, %struct.urb** %11, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 0
  %47 = call i32* @usb_buffer_alloc(i32 %42, i64 %43, i32 %44, i32* %46)
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %39
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.urb*, %struct.urb** %11, align 8
  %57 = call i32 @usb_free_urb(%struct.urb* %56)
  br label %323

58:                                               ; preds = %39
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* @CPC_HEADER_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = bitcast i32* %62 to %struct.ems_cpc_msg*
  store %struct.ems_cpc_msg* %63, %struct.ems_cpc_msg** %10, align 8
  %64 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %65 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CAN_ERR_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %70 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 8
  %73 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %74 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %77 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  %80 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %81 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CAN_RTR_FLAG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %58
  %87 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CAN_EFF_FLAG, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* @CPC_CMD_TYPE_EXT_RTR_FRAME, align 4
  br label %97

95:                                               ; preds = %86
  %96 = load i32, i32* @CPC_CMD_TYPE_RTR_FRAME, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %100 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** @CPC_CAN_MSG_MIN_SIZE, align 8
  %102 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %103 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  br label %153

104:                                              ; preds = %58
  %105 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %106 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CAN_EFF_FLAG, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %104
  %112 = load i32, i32* @CPC_CMD_TYPE_EXT_CAN_FRAME, align 4
  br label %115

113:                                              ; preds = %104
  %114 = load i32, i32* @CPC_CMD_TYPE_CAN_FRAME, align 4
  br label %115

115:                                              ; preds = %113, %111
  %116 = phi i32 [ %112, %111 ], [ %114, %113 ]
  %117 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %118 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %141, %115
  %120 = load i32, i32* %13, align 4
  %121 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %122 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %144

125:                                              ; preds = %119
  %126 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %127 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %134 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %132, i32* %140, align 4
  br label %141

141:                                              ; preds = %125
  %142 = load i32, i32* %13, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %119

144:                                              ; preds = %119
  %145 = load i8*, i8** @CPC_CAN_MSG_MIN_SIZE, align 8
  %146 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %147 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr i8, i8* %145, i64 %149
  %151 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %152 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %144, %97
  %154 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %155 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @cpu_to_le32(i32 %158)
  %160 = load %struct.ems_cpc_msg*, %struct.ems_cpc_msg** %10, align 8
  %161 = getelementptr inbounds %struct.ems_cpc_msg, %struct.ems_cpc_msg* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i32 %159, i32* %163, align 8
  store i32 0, i32* %13, align 4
  br label %164

164:                                              ; preds = %187, %153
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* @MAX_TX_URBS, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %190

168:                                              ; preds = %164
  %169 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %170 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %169, i32 0, i32 4
  %171 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %171, i64 %173
  %175 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @MAX_TX_URBS, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %168
  %180 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %181 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %180, i32 0, i32 4
  %182 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %181, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %182, i64 %184
  store %struct.ems_tx_urb_context* %185, %struct.ems_tx_urb_context** %7, align 8
  br label %190

186:                                              ; preds = %168
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %13, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %13, align 4
  br label %164

190:                                              ; preds = %179, %164
  %191 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %192 = icmp ne %struct.ems_tx_urb_context* %191, null
  br i1 %192, label %211, label %193

193:                                              ; preds = %190
  %194 = load %struct.urb*, %struct.urb** %11, align 8
  %195 = call i32 @usb_unanchor_urb(%struct.urb* %194)
  %196 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %197 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i64, i64* %15, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = load %struct.urb*, %struct.urb** %11, align 8
  %202 = getelementptr inbounds %struct.urb, %struct.urb* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @usb_buffer_free(i32 %198, i64 %199, i32* %200, i32 %203)
  %205 = load %struct.net_device*, %struct.net_device** %5, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i32, i8*, ...) @dev_warn(i32 %208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %210 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %210, i32* %3, align 4
  br label %335

211:                                              ; preds = %190
  %212 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %213 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %214 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %213, i32 0, i32 2
  store %struct.ems_usb* %212, %struct.ems_usb** %214, align 8
  %215 = load i32, i32* %13, align 4
  %216 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %217 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %216, i32 0, i32 0
  store i32 %215, i32* %217, align 8
  %218 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %219 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %222 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 4
  %223 = load %struct.urb*, %struct.urb** %11, align 8
  %224 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %225 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %228 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @usb_sndbulkpipe(i32 %229, i32 2)
  %231 = load i32*, i32** %12, align 8
  %232 = load i64, i64* %15, align 8
  %233 = load i32, i32* @ems_usb_write_bulk_callback, align 4
  %234 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %235 = call i32 @usb_fill_bulk_urb(%struct.urb* %223, i32 %226, i32 %230, i32* %231, i64 %232, i32 %233, %struct.ems_tx_urb_context* %234)
  %236 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %237 = load %struct.urb*, %struct.urb** %11, align 8
  %238 = getelementptr inbounds %struct.urb, %struct.urb* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 4
  %241 = load %struct.urb*, %struct.urb** %11, align 8
  %242 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %243 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %242, i32 0, i32 3
  %244 = call i32 @usb_anchor_urb(%struct.urb* %241, i32* %243)
  %245 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %246 = load %struct.net_device*, %struct.net_device** %5, align 8
  %247 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %248 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @can_put_echo_skb(%struct.sk_buff* %245, %struct.net_device* %246, i32 %249)
  %251 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %252 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %251, i32 0, i32 1
  %253 = call i32 @atomic_inc(i32* %252)
  %254 = load %struct.urb*, %struct.urb** %11, align 8
  %255 = load i32, i32* @GFP_ATOMIC, align 4
  %256 = call i32 @usb_submit_urb(%struct.urb* %254, i32 %255)
  store i32 %256, i32* %14, align 4
  %257 = load i32, i32* %14, align 4
  %258 = call i64 @unlikely(i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %301

260:                                              ; preds = %211
  %261 = load %struct.net_device*, %struct.net_device** %5, align 8
  %262 = load %struct.ems_tx_urb_context*, %struct.ems_tx_urb_context** %7, align 8
  %263 = getelementptr inbounds %struct.ems_tx_urb_context, %struct.ems_tx_urb_context* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @can_free_echo_skb(%struct.net_device* %261, i32 %264)
  %266 = load %struct.urb*, %struct.urb** %11, align 8
  %267 = call i32 @usb_unanchor_urb(%struct.urb* %266)
  %268 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %269 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = load i64, i64* %15, align 8
  %272 = load i32*, i32** %12, align 8
  %273 = load %struct.urb*, %struct.urb** %11, align 8
  %274 = getelementptr inbounds %struct.urb, %struct.urb* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @usb_buffer_free(i32 %270, i64 %271, i32* %272, i32 %275)
  %277 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %278 = call i32 @dev_kfree_skb(%struct.sk_buff* %277)
  %279 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %280 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %279, i32 0, i32 1
  %281 = call i32 @atomic_dec(i32* %280)
  %282 = load i32, i32* %14, align 4
  %283 = load i32, i32* @ENODEV, align 4
  %284 = sub nsw i32 0, %283
  %285 = icmp eq i32 %282, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %260
  %287 = load %struct.net_device*, %struct.net_device** %5, align 8
  %288 = call i32 @netif_device_detach(%struct.net_device* %287)
  br label %300

289:                                              ; preds = %260
  %290 = load %struct.net_device*, %struct.net_device** %5, align 8
  %291 = getelementptr inbounds %struct.net_device, %struct.net_device* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %14, align 4
  %295 = call i32 (i32, i8*, ...) @dev_warn(i32 %293, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %294)
  %296 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %297 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %297, align 4
  br label %300

300:                                              ; preds = %289, %286
  br label %319

301:                                              ; preds = %211
  %302 = load i32, i32* @jiffies, align 4
  %303 = load %struct.net_device*, %struct.net_device** %5, align 8
  %304 = getelementptr inbounds %struct.net_device, %struct.net_device* %303, i32 0, i32 0
  store i32 %302, i32* %304, align 4
  %305 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %306 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %305, i32 0, i32 1
  %307 = call i32 @atomic_read(i32* %306)
  %308 = load i32, i32* @MAX_TX_URBS, align 4
  %309 = icmp sge i32 %307, %308
  br i1 %309, label %315, label %310

310:                                              ; preds = %301
  %311 = load %struct.ems_usb*, %struct.ems_usb** %6, align 8
  %312 = getelementptr inbounds %struct.ems_usb, %struct.ems_usb* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = icmp slt i32 %313, 5
  br i1 %314, label %315, label %318

315:                                              ; preds = %310, %301
  %316 = load %struct.net_device*, %struct.net_device** %5, align 8
  %317 = call i32 @netif_stop_queue(%struct.net_device* %316)
  br label %318

318:                                              ; preds = %315, %310
  br label %319

319:                                              ; preds = %318, %300
  %320 = load %struct.urb*, %struct.urb** %11, align 8
  %321 = call i32 @usb_free_urb(%struct.urb* %320)
  %322 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %322, i32* %3, align 4
  br label %335

323:                                              ; preds = %50, %33
  %324 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %325 = icmp ne %struct.sk_buff* %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %328 = call i32 @dev_kfree_skb(%struct.sk_buff* %327)
  br label %329

329:                                              ; preds = %326, %323
  %330 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %331 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  %334 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %334, i32* %3, align 4
  br label %335

335:                                              ; preds = %329, %319, %193
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local %struct.ems_usb* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32* @usb_buffer_alloc(i32, i64, i32, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_buffer_free(i32, i64, i32*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i64, i32, %struct.ems_tx_urb_context*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @can_free_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
