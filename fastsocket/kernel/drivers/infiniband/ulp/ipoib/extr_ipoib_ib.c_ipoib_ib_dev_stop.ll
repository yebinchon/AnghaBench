; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipoib_rx_buf*, i32, i32, %struct.ipoib_tx_buf*, i32 }
%struct.ipoib_rx_buf = type { i32*, i32 }
%struct.ipoib_tx_buf = type { i32* }
%struct.ib_qp_attr = type { i32 }

@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@IB_QP_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to modify QP to ERROR state\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"timing out; %d sends %d receives not completed\0A\00", align 1
@ipoib_sendq_size = common dso_local global i32 0, align 4
@ipoib_recvq_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"All sends and receives done.\0A\00", align 1
@IB_QPS_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Failed to modify QP to RESET state\0A\00", align 1
@IPOIB_STOP_REAPER = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"timing out; will leak address handles\0A\00", align 1
@IB_CQ_NEXT_COMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_stop(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ib_qp_attr, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ipoib_tx_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ipoib_rx_buf*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ipoib_dev_priv* %12, %struct.ipoib_dev_priv** %5, align 8
  %13 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 5
  %16 = call i64 @test_and_clear_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %20 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %19, i32 0, i32 12
  %21 = call i32 @napi_disable(i32* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @ipoib_cm_dev_stop(%struct.net_device* %23)
  %25 = load i32, i32* @IB_QPS_ERR, align 4
  %26 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IB_QP_STATE, align 4
  %31 = call i64 @ib_modify_qp(i32 %29, %struct.ib_qp_attr* %6, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %35 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %22
  %37 = load i64, i64* @jiffies, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %149, %36
  %39 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %40 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %43 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = call i64 @recvs_pending(%struct.net_device* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %46, %38
  %51 = phi i1 [ true, %38 ], [ %49, %46 ]
  br i1 %51, label %52, label %153

52:                                               ; preds = %50
  %53 = load i64, i64* @jiffies, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i32, i32* @HZ, align 4
  %56 = mul nsw i32 5, %55
  %57 = sext i32 %56 to i64
  %58 = add i64 %54, %57
  %59 = call i64 @time_after(i64 %53, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %149

61:                                               ; preds = %52
  %62 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %64 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %67 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %65, %68
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call i64 @recvs_pending(%struct.net_device* %70)
  %72 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %62, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %69, i64 %71)
  br label %73

73:                                               ; preds = %82, %61
  %74 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %75 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %78 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %76, %79
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %111

82:                                               ; preds = %73
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %84 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %83, i32 0, i32 11
  %85 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %84, align 8
  %86 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %87 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ipoib_sendq_size, align 4
  %90 = sub nsw i32 %89, 1
  %91 = and i32 %88, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %85, i64 %92
  store %struct.ipoib_tx_buf* %93, %struct.ipoib_tx_buf** %8, align 8
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %95 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %94, i32 0, i32 10
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %8, align 8
  %98 = call i32 @ipoib_dma_unmap_tx(i32 %96, %struct.ipoib_tx_buf* %97)
  %99 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %8, align 8
  %100 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @dev_kfree_skb_any(i32* %101)
  %103 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %104 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %108 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %108, align 8
  br label %73

111:                                              ; preds = %73
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %145, %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @ipoib_recvq_size, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %148

116:                                              ; preds = %112
  %117 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %118 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %117, i32 0, i32 8
  %119 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %119, i64 %121
  store %struct.ipoib_rx_buf* %122, %struct.ipoib_rx_buf** %10, align 8
  %123 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %10, align 8
  %124 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %128, label %127

127:                                              ; preds = %116
  br label %145

128:                                              ; preds = %116
  %129 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %130 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %131 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %130, i32 0, i32 8
  %132 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %132, i64 %134
  %136 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv* %129, i32 %137)
  %139 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %10, align 8
  %140 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @dev_kfree_skb_any(i32* %141)
  %143 = load %struct.ipoib_rx_buf*, %struct.ipoib_rx_buf** %10, align 8
  %144 = getelementptr inbounds %struct.ipoib_rx_buf, %struct.ipoib_rx_buf* %143, i32 0, i32 0
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %128, %127
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %112

148:                                              ; preds = %112
  br label %156

149:                                              ; preds = %52
  %150 = load %struct.net_device*, %struct.net_device** %3, align 8
  %151 = call i32 @ipoib_drain_cq(%struct.net_device* %150)
  %152 = call i32 @msleep(i32 1)
  br label %38

153:                                              ; preds = %50
  %154 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %155 = call i32 @ipoib_dbg(%struct.ipoib_dev_priv* %154, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %148
  %157 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %158 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %157, i32 0, i32 7
  %159 = call i32 @del_timer_sync(i32* %158)
  %160 = load i32, i32* @IB_QPS_RESET, align 4
  %161 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %6, i32 0, i32 0
  store i32 %160, i32* %161, align 4
  %162 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %163 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @IB_QP_STATE, align 4
  %166 = call i64 @ib_modify_qp(i32 %164, %struct.ib_qp_attr* %6, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %156
  %169 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %170 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %169, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %171

171:                                              ; preds = %168, %156
  %172 = load i32, i32* @IPOIB_STOP_REAPER, align 4
  %173 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %174 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %173, i32 0, i32 5
  %175 = call i32 @set_bit(i32 %172, i32* %174)
  %176 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %177 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %176, i32 0, i32 4
  %178 = call i32 @cancel_delayed_work(i32* %177)
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %171
  %182 = load i32, i32* @ipoib_workqueue, align 4
  %183 = call i32 @flush_workqueue(i32 %182)
  br label %184

184:                                              ; preds = %181, %171
  %185 = load i64, i64* @jiffies, align 8
  store i64 %185, i64* %7, align 8
  br label %186

186:                                              ; preds = %205, %184
  %187 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %188 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %187, i32 0, i32 3
  %189 = call i32 @list_empty(i32* %188)
  %190 = icmp ne i32 %189, 0
  %191 = xor i1 %190, true
  br i1 %191, label %192, label %207

192:                                              ; preds = %186
  %193 = load %struct.net_device*, %struct.net_device** %3, align 8
  %194 = call i32 @__ipoib_reap_ah(%struct.net_device* %193)
  %195 = load i64, i64* @jiffies, align 8
  %196 = load i64, i64* %7, align 8
  %197 = load i32, i32* @HZ, align 4
  %198 = sext i32 %197 to i64
  %199 = add i64 %196, %198
  %200 = call i64 @time_after(i64 %195, i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %192
  %203 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %204 = call i32 (%struct.ipoib_dev_priv*, i8*, ...) @ipoib_warn(%struct.ipoib_dev_priv* %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %207

205:                                              ; preds = %192
  %206 = call i32 @msleep(i32 1)
  br label %186

207:                                              ; preds = %202, %186
  %208 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %209 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @IB_CQ_NEXT_COMP, align 4
  %212 = call i32 @ib_req_notify_cq(i32 %210, i32 %211)
  ret i32 0
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @ipoib_cm_dev_stop(%struct.net_device*) #1

declare dso_local i64 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, ...) #1

declare dso_local i64 @recvs_pending(%struct.net_device*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @ipoib_dma_unmap_tx(i32, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv*, i32) #1

declare dso_local i32 @ipoib_drain_cq(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ipoib_dbg(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @__ipoib_reap_ah(%struct.net_device*) #1

declare dso_local i32 @ib_req_notify_cq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
