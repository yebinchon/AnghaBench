; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_process_rmpp_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_mad_rmpp.c_process_rmpp_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.ib_mad_send_wr_private = type { i32, i64, i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ib_rmpp_mad = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.ib_mad_send_wc = type { %struct.TYPE_7__*, i64, i64 }

@IB_MGMT_RMPP_STATUS_BAD_STATUS = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_STATUS_W2S = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@IB_MGMT_RMPP_STATUS_S2B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*)* @process_rmpp_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_rmpp_ack(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_agent_private*, align 8
  %4 = alloca %struct.ib_mad_recv_wc*, align 8
  %5 = alloca %struct.ib_mad_send_wr_private*, align 8
  %6 = alloca %struct.ib_rmpp_mad*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_mad_send_wc, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %3, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %4, align 8
  %12 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %13 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ib_rmpp_mad*
  store %struct.ib_rmpp_mad* %16, %struct.ib_rmpp_mad** %6, align 8
  %17 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %18 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %24 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %25 = load i32, i32* @IB_MGMT_RMPP_STATUS_BAD_STATUS, align 4
  %26 = call i32 @abort_send(%struct.ib_mad_agent_private* %23, %struct.ib_mad_recv_wc* %24, i32 %25)
  %27 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %28 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %29 = load i32, i32* @IB_MGMT_RMPP_STATUS_BAD_STATUS, align 4
  %30 = call i32 @nack_recv(%struct.ib_mad_agent_private* %27, %struct.ib_mad_recv_wc* %28, i32 %29)
  br label %270

31:                                               ; preds = %2
  %32 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %33 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %38 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @be32_to_cpu(i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %31
  %46 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %47 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %48 = load i32, i32* @IB_MGMT_RMPP_STATUS_W2S, align 4
  %49 = call i32 @abort_send(%struct.ib_mad_agent_private* %46, %struct.ib_mad_recv_wc* %47, i32 %48)
  %50 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %51 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %52 = load i32, i32* @IB_MGMT_RMPP_STATUS_W2S, align 4
  %53 = call i32 @nack_recv(%struct.ib_mad_agent_private* %50, %struct.ib_mad_recv_wc* %51, i32 %52)
  br label %270

54:                                               ; preds = %31
  %55 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %56 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %60 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %61 = call %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private* %59, %struct.ib_mad_recv_wc* %60)
  store %struct.ib_mad_send_wr_private* %61, %struct.ib_mad_send_wr_private** %5, align 8
  %62 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %63 = icmp ne %struct.ib_mad_send_wr_private* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %54
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %69 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @process_ds_ack(%struct.ib_mad_agent_private* %68, %struct.ib_mad_recv_wc* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %64
  br label %265

73:                                               ; preds = %54
  %74 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %75 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %78 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %76, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %73
  %83 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %84 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %83, i32 0, i32 10
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %89 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %88, i32 0, i32 0
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  %92 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %93 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %94 = call i32 @ack_ds_ack(%struct.ib_mad_agent_private* %92, %struct.ib_mad_recv_wc* %93)
  br label %270

95:                                               ; preds = %82, %73
  %96 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %97 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %100 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %98, %102
  br i1 %103, label %115, label %104

104:                                              ; preds = %95
  %105 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %106 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %105, i32 0, i32 10
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %111 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IB_WC_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %104, %95
  br label %265

116:                                              ; preds = %109
  %117 = load i32, i32* %8, align 4
  %118 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %119 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %117, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %116
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %126 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp sgt i32 %124, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %123, %116
  %130 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %131 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %130, i32 0, i32 0
  %132 = load i64, i64* %7, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32* %131, i64 %132)
  %134 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %135 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %136 = load i32, i32* @IB_MGMT_RMPP_STATUS_S2B, align 4
  %137 = call i32 @abort_send(%struct.ib_mad_agent_private* %134, %struct.ib_mad_recv_wc* %135, i32 %136)
  %138 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %139 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %140 = load i32, i32* @IB_MGMT_RMPP_STATUS_S2B, align 4
  %141 = call i32 @nack_recv(%struct.ib_mad_agent_private* %138, %struct.ib_mad_recv_wc* %139, i32 %140)
  br label %270

142:                                              ; preds = %123
  %143 = load i32, i32* %9, align 4
  %144 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %145 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %8, align 4
  %150 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %151 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %148, %142
  br label %265

155:                                              ; preds = %148
  %156 = load i32, i32* %8, align 4
  %157 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %158 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %156, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %155
  %162 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @adjust_last_ack(%struct.ib_mad_send_wr_private* %162, i32 %163)
  %165 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %166 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %169 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %168, i32 0, i32 9
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %161, %155
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %173 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 8
  %174 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %175 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %178 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %177, i32 0, i32 7
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %176, %180
  br i1 %181, label %182, label %223

182:                                              ; preds = %170
  %183 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %184 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %183, i32 0, i32 7
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %182
  %189 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %190 = call i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private* %189)
  %191 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %192 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %191, i32 0, i32 0
  %193 = load i64, i64* %7, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* %192, i64 %193)
  %195 = load i64, i64* @IB_WC_SUCCESS, align 8
  %196 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %11, i32 0, i32 2
  store i64 %195, i64* %196, align 8
  %197 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %11, i32 0, i32 1
  store i64 0, i64* %197, align 8
  %198 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %199 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.ib_mad_send_wc, %struct.ib_mad_send_wc* %11, i32 0, i32 0
  store %struct.TYPE_7__* %199, %struct.TYPE_7__** %200, align 8
  %201 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %202 = call i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private* %201, %struct.ib_mad_send_wc* %11)
  br label %270

203:                                              ; preds = %182
  %204 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %205 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %215

208:                                              ; preds = %203
  %209 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %210 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %211 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ib_reset_mad_timeout(%struct.ib_mad_send_wr_private* %209, i32 %213)
  br label %215

215:                                              ; preds = %208, %203
  %216 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %217 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %216, i32 0, i32 0
  %218 = load i64, i64* %7, align 8
  %219 = call i32 @spin_unlock_irqrestore(i32* %217, i64 %218)
  %220 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %221 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %4, align 8
  %222 = call i32 @ack_ds_ack(%struct.ib_mad_agent_private* %220, %struct.ib_mad_recv_wc* %221)
  br label %270

223:                                              ; preds = %170
  %224 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %225 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %263

228:                                              ; preds = %223
  %229 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %230 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %233 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp slt i32 %231, %234
  br i1 %235, label %236, label %263

236:                                              ; preds = %228
  %237 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %238 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %241 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %240, i32 0, i32 7
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %239, %243
  br i1 %244, label %245, label %263

245:                                              ; preds = %236
  %246 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %247 = call i32 @send_next_seg(%struct.ib_mad_send_wr_private* %246)
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %265

251:                                              ; preds = %245
  %252 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %253 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 4
  %256 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %257 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %256, i32 0, i32 6
  %258 = load %struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wr_private** %5, align 8
  %259 = getelementptr inbounds %struct.ib_mad_send_wr_private, %struct.ib_mad_send_wr_private* %258, i32 0, i32 5
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = call i32 @list_move_tail(i32* %257, i32* %261)
  br label %263

263:                                              ; preds = %251, %236, %228, %223
  br label %264

264:                                              ; preds = %263
  br label %265

265:                                              ; preds = %264, %250, %154, %115, %72
  %266 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %3, align 8
  %267 = getelementptr inbounds %struct.ib_mad_agent_private, %struct.ib_mad_agent_private* %266, i32 0, i32 0
  %268 = load i64, i64* %7, align 8
  %269 = call i32 @spin_unlock_irqrestore(i32* %267, i64 %268)
  br label %270

270:                                              ; preds = %265, %215, %188, %129, %87, %45, %22
  ret void
}

declare dso_local i32 @abort_send(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i32) #1

declare dso_local i32 @nack_recv(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ib_mad_send_wr_private* @ib_find_send_mad(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @process_ds_ack(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ack_ds_ack(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @adjust_last_ack(%struct.ib_mad_send_wr_private*, i32) #1

declare dso_local i32 @ib_mark_mad_done(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @ib_mad_complete_send_wr(%struct.ib_mad_send_wr_private*, %struct.ib_mad_send_wc*) #1

declare dso_local i32 @ib_reset_mad_timeout(%struct.ib_mad_send_wr_private*, i32) #1

declare dso_local i32 @send_next_seg(%struct.ib_mad_send_wr_private*) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
