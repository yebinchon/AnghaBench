; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_handle_rx_wc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_handle_rx_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ipoib_cm_rx* }
%struct.ipoib_cm_rx = type { i64, i32, i32, i64, %struct.ipoib_cm_rx_buf* }
%struct.ipoib_cm_rx_buf = type { i32*, %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.net_device*, i64, i64, i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, %struct.ipoib_cm_rx_buf*, i32 }
%struct.ipoib_header = type { i32 }

@IPOIB_OP_CM = common dso_local global i32 0, align 4
@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@IPOIB_CM_RX_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"cm recv completion: id %d, status: %d\0A\00", align 1
@ipoib_recvq_size = common dso_local global i32 0, align 4
@IPOIB_CM_RX_DRAIN_WRID = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"cm recv completion event with wrid %d (> %d)\0A\00", align 1
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"cm recv error (status=%d, wrid=%d vend_err %x)\0A\00", align 1
@IPOIB_CM_RX_UPDATE_MASK = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IPOIB_CM_RX_UPDATE_TIME = common dso_local global i64 0, align 8
@IPOIB_CM_RX_LIVE = common dso_local global i64 0, align 8
@IPOIB_CM_COPYBREAK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@IPOIB_CM_HEAD_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"failed to allocate receive buffer %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"received %d bytes, SLID 0x%04x\0A\00", align 1
@IPOIB_ENCAP_LEN = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"ipoib_cm_post_receive_srq failed for buf %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"ipoib_cm_post_receive_nonsrq failed for buf %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_cm_handle_rx_wc(%struct.net_device* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ib_wc*, align 8
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ipoib_cm_rx_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ipoib_cm_rx*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.ipoib_dev_priv* %20, %struct.ipoib_dev_priv** %5, align 8
  %21 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %22 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IPOIB_OP_CM, align 4
  %25 = load i32, i32* @IPOIB_OP_RECV, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = and i32 %23, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @IPOIB_CM_RX_SG, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %12, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %13, align 8
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %36 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %33, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @ipoib_recvq_size, align 4
  %41 = icmp uge i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %83

45:                                               ; preds = %2
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IPOIB_CM_RX_DRAIN_WRID, align 4
  %48 = load i32, i32* @IPOIB_OP_CM, align 4
  %49 = load i32, i32* @IPOIB_OP_RECV, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %47, %51
  %53 = icmp eq i32 %46, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %45
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %56 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %55, i32 0, i32 2
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %60 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  %62 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %63 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 4
  %65 = call i32 @list_splice_init(i32* %61, i32* %64)
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %67 = call i32 @ipoib_cm_start_rx_drain(%struct.ipoib_dev_priv* %66)
  %68 = load i32, i32* @ipoib_workqueue, align 4
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 3
  %72 = call i32 @queue_work(i32 %68, i32* %71)
  %73 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %74 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %73, i32 0, i32 2
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  br label %82

77:                                               ; preds = %45
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @ipoib_recvq_size, align 4
  %81 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %78, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %54
  store i32 1, i32* %17, align 4
  br label %414

83:                                               ; preds = %2
  %84 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %85 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %84, i32 0, i32 5
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %87, align 8
  store %struct.ipoib_cm_rx* %88, %struct.ipoib_cm_rx** %10, align 8
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = call i32 @ipoib_cm_has_srq(%struct.net_device* %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %95 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 5
  %97 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %96, align 8
  br label %102

98:                                               ; preds = %83
  %99 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %100 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %99, i32 0, i32 4
  %101 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %100, align 8
  br label %102

102:                                              ; preds = %98, %93
  %103 = phi %struct.ipoib_cm_rx_buf* [ %97, %93 ], [ %101, %98 ]
  store %struct.ipoib_cm_rx_buf* %103, %struct.ipoib_cm_rx_buf** %6, align 8
  %104 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %104, i64 %106
  %108 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %107, i32 0, i32 1
  %109 = load %struct.sk_buff*, %struct.sk_buff** %108, align 8
  store %struct.sk_buff* %109, %struct.sk_buff** %8, align 8
  %110 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %111 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @IB_WC_SUCCESS, align 4
  %114 = icmp ne i32 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %163

118:                                              ; preds = %102
  %119 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %120 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %121 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %125 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_dbg(%struct.ipoib_dev_priv* %119, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %122, i32 %123, i32 %126)
  %128 = load %struct.net_device*, %struct.net_device** %3, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %118
  br label %376

136:                                              ; preds = %118
  %137 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %138 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %138, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %162, label %142

142:                                              ; preds = %136
  %143 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %144 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %143, i32 0, i32 2
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @spin_lock_irqsave(i32* %144, i64 %145)
  %147 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %148 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %147, i32 0, i32 2
  %149 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %150 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 4
  %152 = call i32 @list_move(i32* %148, i32* %151)
  %153 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %154 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %153, i32 0, i32 2
  %155 = load i64, i64* %11, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  %157 = load i32, i32* @ipoib_workqueue, align 4
  %158 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %159 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = call i32 @queue_work(i32 %157, i32* %160)
  br label %162

162:                                              ; preds = %142, %136
  store i32 1, i32* %17, align 4
  br label %414

163:                                              ; preds = %102
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @IPOIB_CM_RX_UPDATE_MASK, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i64 @unlikely(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %210

172:                                              ; preds = %163
  %173 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %174 = icmp ne %struct.ipoib_cm_rx* %173, null
  br i1 %174, label %175, label %209

175:                                              ; preds = %172
  %176 = load i64, i64* @jiffies, align 8
  %177 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %178 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @IPOIB_CM_RX_UPDATE_TIME, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i64 @time_after_eq(i64 %176, i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %209

184:                                              ; preds = %175
  %185 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %186 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %185, i32 0, i32 2
  %187 = load i64, i64* %11, align 8
  %188 = call i32 @spin_lock_irqsave(i32* %186, i64 %187)
  %189 = load i64, i64* @jiffies, align 8
  %190 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %191 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %190, i32 0, i32 3
  store i64 %189, i64* %191, align 8
  %192 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %193 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @IPOIB_CM_RX_LIVE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %184
  %198 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %199 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %198, i32 0, i32 2
  %200 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %201 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = call i32 @list_move(i32* %199, i32* %202)
  br label %204

204:                                              ; preds = %197, %184
  %205 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %206 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %205, i32 0, i32 2
  %207 = load i64, i64* %11, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  br label %209

209:                                              ; preds = %204, %175, %172
  br label %210

210:                                              ; preds = %209, %163
  %211 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %212 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @IPOIB_CM_COPYBREAK, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %267

216:                                              ; preds = %210
  %217 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %218 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %18, align 4
  %221 = add nsw i32 %220, 12
  %222 = call %struct.sk_buff* @dev_alloc_skb(i32 %221)
  store %struct.sk_buff* %222, %struct.sk_buff** %16, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %224 = icmp ne %struct.sk_buff* %223, null
  br i1 %224, label %225, label %266

225:                                              ; preds = %216
  %226 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %227 = call i32 @skb_reserve(%struct.sk_buff* %226, i32 12)
  %228 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %229 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %232 = load i32, i32* %7, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %231, i64 %233
  %235 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %18, align 4
  %240 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %241 = call i32 @ib_dma_sync_single_for_cpu(i32 %230, i32 %238, i32 %239, i32 %240)
  %242 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* %18, align 4
  %247 = call i32 @skb_copy_from_linear_data(%struct.sk_buff* %242, i64 %245, i32 %246)
  %248 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %249 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %252 = load i32, i32* %7, align 4
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %251, i64 %253
  %255 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %18, align 4
  %260 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %261 = call i32 @ib_dma_sync_single_for_device(i32 %250, i32 %258, i32 %259, i32 %260)
  %262 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %263 = load i32, i32* %18, align 4
  %264 = call i32 @skb_put(%struct.sk_buff* %262, i32 %263)
  %265 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %265, %struct.sk_buff** %8, align 8
  br label %339

266:                                              ; preds = %216
  br label %267

267:                                              ; preds = %266, %210
  %268 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %269 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %273 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load i64, i64* @IPOIB_CM_HEAD_SIZE, align 8
  %276 = trunc i64 %275 to i32
  %277 = call i64 @min(i32 %274, i32 %276)
  %278 = sub nsw i64 %271, %277
  %279 = call i32 @PAGE_ALIGN(i64 %278)
  %280 = load i32, i32* @PAGE_SIZE, align 4
  %281 = sdiv i32 %279, %280
  store i32 %281, i32* %14, align 4
  %282 = load %struct.net_device*, %struct.net_device** %3, align 8
  %283 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %284 = load i32, i32* %7, align 4
  %285 = load i32, i32* %14, align 4
  %286 = call %struct.sk_buff* @ipoib_cm_alloc_rx_skb(%struct.net_device* %282, %struct.ipoib_cm_rx_buf* %283, i32 %284, i32 %285, i32* %32)
  store %struct.sk_buff* %286, %struct.sk_buff** %9, align 8
  %287 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %288 = icmp ne %struct.sk_buff* %287, null
  %289 = xor i1 %288, true
  %290 = zext i1 %289 to i32
  %291 = call i64 @unlikely(i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %267
  %294 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %295 = load i32, i32* %7, align 4
  %296 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_dbg(%struct.ipoib_dev_priv* %294, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %295)
  %297 = load %struct.net_device*, %struct.net_device** %3, align 8
  %298 = getelementptr inbounds %struct.net_device, %struct.net_device* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %299, align 4
  br label %376

302:                                              ; preds = %267
  %303 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %304 = load i32, i32* %14, align 4
  %305 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %306 = load i32, i32* %7, align 4
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %305, i64 %307
  %309 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = call i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv* %303, i32 %304, i32* %310)
  %312 = load %struct.ipoib_cm_rx_buf*, %struct.ipoib_cm_rx_buf** %6, align 8
  %313 = load i32, i32* %7, align 4
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %312, i64 %314
  %316 = getelementptr inbounds %struct.ipoib_cm_rx_buf, %struct.ipoib_cm_rx_buf* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load i32, i32* %14, align 4
  %319 = add nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = mul i64 %320, 4
  %322 = trunc i64 %321 to i32
  %323 = call i32 @memcpy(i32* %317, i32* %32, i32 %322)
  %324 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %325 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %326 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %329 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @ipoib_dbg_data(%struct.ipoib_dev_priv* %324, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %327, i32 %330)
  %332 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %333 = load i64, i64* @IPOIB_CM_HEAD_SIZE, align 8
  %334 = load %struct.ib_wc*, %struct.ib_wc** %4, align 8
  %335 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %338 = call i32 @skb_put_frags(%struct.sk_buff* %332, i64 %333, i32 %336, %struct.sk_buff* %337)
  br label %339

339:                                              ; preds = %302, %225
  %340 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %341 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %340, i32 0, i32 3
  %342 = load i64, i64* %341, align 8
  %343 = inttoptr i64 %342 to %struct.ipoib_header*
  %344 = getelementptr inbounds %struct.ipoib_header, %struct.ipoib_header* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %347 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %346, i32 0, i32 4
  store i32 %345, i32* %347, align 8
  %348 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %349 = call i32 @skb_reset_mac_header(%struct.sk_buff* %348)
  %350 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %351 = load i32, i32* @IPOIB_ENCAP_LEN, align 4
  %352 = call i32 @skb_pull(%struct.sk_buff* %350, i32 %351)
  %353 = load %struct.net_device*, %struct.net_device** %3, align 8
  %354 = getelementptr inbounds %struct.net_device, %struct.net_device* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %355, align 4
  %358 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %359 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %358, i32 0, i32 2
  %360 = load i64, i64* %359, align 8
  %361 = load %struct.net_device*, %struct.net_device** %3, align 8
  %362 = getelementptr inbounds %struct.net_device, %struct.net_device* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %365, %360
  %367 = trunc i64 %366 to i32
  store i32 %367, i32* %363, align 4
  %368 = load %struct.net_device*, %struct.net_device** %3, align 8
  %369 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %370 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %369, i32 0, i32 1
  store %struct.net_device* %368, %struct.net_device** %370, align 8
  %371 = load i32, i32* @PACKET_HOST, align 4
  %372 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %373 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %372, i32 0, i32 0
  store i32 %371, i32* %373, align 8
  %374 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %375 = call i32 @netif_receive_skb(%struct.sk_buff* %374)
  br label %376

376:                                              ; preds = %339, %293, %135
  %377 = load i32, i32* %15, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %390

379:                                              ; preds = %376
  %380 = load %struct.net_device*, %struct.net_device** %3, align 8
  %381 = load i32, i32* %7, align 4
  %382 = call i32 @ipoib_cm_post_receive_srq(%struct.net_device* %380, i32 %381)
  %383 = call i64 @unlikely(i32 %382)
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %379
  %386 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %387 = load i32, i32* %7, align 4
  %388 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %386, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %387)
  br label %389

389:                                              ; preds = %385, %379
  br label %413

390:                                              ; preds = %376
  %391 = load %struct.net_device*, %struct.net_device** %3, align 8
  %392 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %393 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %394 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %394, i32 0, i32 1
  %396 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %397 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* %7, align 4
  %401 = call i32 @ipoib_cm_post_receive_nonsrq(%struct.net_device* %391, %struct.ipoib_cm_rx* %392, i32* %395, i32 %399, i32 %400)
  %402 = call i64 @unlikely(i32 %401)
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %412

404:                                              ; preds = %390
  %405 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %10, align 8
  %406 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = add nsw i32 %407, -1
  store i32 %408, i32* %406, align 8
  %409 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %410 = load i32, i32* %7, align 4
  %411 = call i32 (%struct.ipoib_dev_priv*, i8*, i32, ...) @ipoib_warn(%struct.ipoib_dev_priv* %409, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %410)
  br label %412

412:                                              ; preds = %404, %390
  br label %413

413:                                              ; preds = %412, %389
  store i32 0, i32* %17, align 4
  br label %414

414:                                              ; preds = %413, %162, %82
  %415 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %415)
  %416 = load i32, i32* %17, align 4
  switch i32 %416, label %418 [
    i32 0, label %417
    i32 1, label %417
  ]

417:                                              ; preds = %414, %414
  ret void

418:                                              ; preds = %414
  unreachable
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ipoib_dbg_data(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @ipoib_cm_start_rx_drain(%struct.ipoib_dev_priv*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, ...) #1

declare dso_local i32 @ipoib_cm_has_srq(%struct.net_device*) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*, i32, ...) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_copy_from_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @PAGE_ALIGN(i64) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local %struct.sk_buff* @ipoib_cm_alloc_rx_skb(%struct.net_device*, %struct.ipoib_cm_rx_buf*, i32, i32, i32*) #1

declare dso_local i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv*, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @skb_put_frags(%struct.sk_buff*, i64, i32, %struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @ipoib_cm_post_receive_srq(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_cm_post_receive_nonsrq(%struct.net_device*, %struct.ipoib_cm_rx*, i32*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
