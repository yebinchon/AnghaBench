; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_rc.c_do_rc_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_rc.c_do_rc_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i64, i32, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ipath_ibdev = type { i64, i32, i32, i32, i32, i32, i32*, i32 }
%struct.ib_wc = type { i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.ipath_swqe = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i64 }

@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@RDMA_READ_RESPONSE_ONLY = common dso_local global i32 0, align 4
@RDMA_READ_RESPONSE_LAST = common dso_local global i32 0, align 4
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i64 0, align 8
@ATOMIC_ACKNOWLEDGE = common dso_local global i32 0, align 4
@IPATH_S_FENCE_PENDING = common dso_local global i32 0, align 4
@IPATH_S_RDMAR_PENDING = common dso_local global i32 0, align 4
@IPATH_S_SIGNAL_REQ_WR = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@ib_ipath_wc_opcode = common dso_local global i32* null, align 8
@SEND_LAST = common dso_local global i32 0, align 4
@IB_QPS_SQD = common dso_local global i64 0, align 8
@IB_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IPATH_PSN_MASK = common dso_local global i32 0, align 4
@ib_ipath_rnr_table = common dso_local global i32* null, align 8
@IPATH_AETH_CREDIT_SHIFT = common dso_local global i32 0, align 4
@IPATH_AETH_CREDIT_MASK = common dso_local global i32 0, align 4
@IB_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IB_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_qp*, i32, i32, i32, i32)* @do_rc_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rc_ack(%struct.ipath_qp* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ipath_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipath_ibdev*, align 8
  %12 = alloca %struct.ib_wc, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ipath_swqe*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ipath_qp* %0, %struct.ipath_qp** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %19 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %18, i32 0, i32 15
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.ipath_ibdev* @to_idev(i32 %21)
  store %struct.ipath_ibdev* %22, %struct.ipath_ibdev** %11, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %24 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %23, i32 0, i32 5
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %27 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %26, i32 0, i32 13
  %28 = call i64 @list_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %5
  %31 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %32 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %31, i32 0, i32 13
  %33 = call i32 @list_del_init(i32* %32)
  br label %34

34:                                               ; preds = %30, %5
  %35 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %36 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %35, i32 0, i32 5
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 29
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %16, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %42, %34
  %46 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %47 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %48 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp* %46, i64 %49)
  store %struct.ipath_swqe* %50, %struct.ipath_swqe** %14, align 8
  br label %51

51:                                               ; preds = %356, %45
  %52 = load i32, i32* %16, align 4
  %53 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %54 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ipath_cmp24(i32 %52, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %357

58:                                               ; preds = %51
  %59 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %60 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @RDMA_READ_RESPONSE_ONLY, align 4
  %68 = call i32 @OP(i32 %67)
  %69 = icmp eq i32 %66, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* %17, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 1, i32* %15, align 4
  br label %582

74:                                               ; preds = %70, %65, %58
  %75 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %76 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @RDMA_READ_RESPONSE_LAST, align 4
  %84 = call i32 @OP(i32 %83)
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %111, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %111, label %89

89:                                               ; preds = %86, %74
  %90 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %91 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %103, label %96

96:                                               ; preds = %89
  %97 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %98 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %96, %89
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @ATOMIC_ACKNOWLEDGE, align 4
  %106 = call i32 @OP(i32 %105)
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108, %103, %86, %81
  %112 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %113 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %114 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @update_last_psn(%struct.ipath_qp* %112, i32 %116)
  %118 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %119 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %120 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ipath_restart_rc(%struct.ipath_qp* %118, i32 %121)
  br label %582

123:                                              ; preds = %108, %96
  %124 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %125 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %137, label %130

130:                                              ; preds = %123
  %131 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %132 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %146

137:                                              ; preds = %130, %123
  %138 = load i32, i32* %10, align 4
  %139 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %140 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %139, i32 0, i32 4
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i32*
  store i32 %138, i32* %145, align 4
  br label %146

146:                                              ; preds = %137, %130
  %147 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %148 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %147, i32 0, i32 18
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %199

151:                                              ; preds = %146
  %152 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %153 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %172, label %158

158:                                              ; preds = %151
  %159 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %160 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %172, label %165

165:                                              ; preds = %158
  %166 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %167 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @IB_WR_ATOMIC_FETCH_AND_ADD, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %199

172:                                              ; preds = %165, %158, %151
  %173 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %174 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %173, i32 0, i32 18
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %175, -1
  store i64 %176, i64* %174, align 8
  %177 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %178 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @IPATH_S_FENCE_PENDING, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %172
  %184 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %185 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %184, i32 0, i32 18
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %183, %172
  %189 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %190 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @IPATH_S_RDMAR_PENDING, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %188, %183
  %196 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %197 = call i32 @ipath_schedule_send(%struct.ipath_qp* %196)
  br label %198

198:                                              ; preds = %195, %188
  br label %199

199:                                              ; preds = %198, %165, %146
  %200 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %201 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @IPATH_S_SIGNAL_REQ_WR, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %199
  %207 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %208 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %207, i32 0, i32 2
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %258

214:                                              ; preds = %206, %199
  %215 = call i32 @memset(%struct.ib_wc* %12, i32 0, i32 40)
  %216 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %217 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 7
  store i32 %219, i32* %220, align 4
  %221 = load i32, i32* @IB_WC_SUCCESS, align 4
  %222 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 6
  store i32 %221, i32* %222, align 8
  %223 = load i32*, i32** @ib_ipath_wc_opcode, align 8
  %224 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %225 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds i32, i32* %223, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 5
  store i32 %229, i32* %230, align 4
  %231 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %232 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 4
  store i32 %233, i32* %234, align 8
  %235 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %236 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %235, i32 0, i32 15
  %237 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 3
  store %struct.TYPE_6__* %236, %struct.TYPE_6__** %237, align 8
  %238 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %239 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %238, i32 0, i32 17
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 2
  store i32 %240, i32* %241, align 8
  %242 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %243 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %242, i32 0, i32 16
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 1
  store i32 %245, i32* %246, align 4
  %247 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %248 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %247, i32 0, i32 16
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 0
  store i32 %250, i32* %251, align 8
  %252 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %253 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %252, i32 0, i32 15
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @to_icq(i32 %255)
  %257 = call i32 @ipath_cq_enter(i32 %256, %struct.ib_wc* %12, i32 0)
  br label %258

258:                                              ; preds = %214, %206
  %259 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %260 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %259, i32 0, i32 11
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %263 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %262, i32 0, i32 12
  store i32 %261, i32* %263, align 8
  %264 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %265 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %268 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = icmp eq i64 %266, %269
  br i1 %270, label %271, label %312

271:                                              ; preds = %258
  %272 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %273 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, 1
  store i64 %275, i64* %273, align 8
  %276 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %277 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %276, i32 0, i32 3
  %278 = load i64, i64* %277, align 8
  %279 = icmp sge i64 %275, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %271
  %281 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %282 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %281, i32 0, i32 2
  store i64 0, i64* %282, align 8
  br label %283

283:                                              ; preds = %280, %271
  %284 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %285 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %284, i32 0, i32 2
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %288 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %287, i32 0, i32 0
  store i64 %286, i64* %288, align 8
  %289 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %290 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %293 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = icmp eq i64 %291, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %283
  br label %357

297:                                              ; preds = %283
  %298 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %299 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %300 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = call %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp* %298, i64 %301)
  store %struct.ipath_swqe* %302, %struct.ipath_swqe** %14, align 8
  %303 = load i32, i32* @SEND_LAST, align 4
  %304 = call i32 @OP(i32 %303)
  %305 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %306 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %305, i32 0, i32 5
  store i32 %304, i32* %306, align 8
  %307 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %308 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %311 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %310, i32 0, i32 6
  store i32 %309, i32* %311, align 4
  br label %356

312:                                              ; preds = %258
  %313 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %314 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %313, i32 0, i32 0
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %315, 1
  store i64 %316, i64* %314, align 8
  %317 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %318 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = icmp sge i64 %316, %319
  br i1 %320, label %321, label %324

321:                                              ; preds = %312
  %322 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %323 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %322, i32 0, i32 0
  store i64 0, i64* %323, align 8
  br label %324

324:                                              ; preds = %321, %312
  %325 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %326 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %325, i32 0, i32 7
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @IB_QPS_SQD, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %341

330:                                              ; preds = %324
  %331 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %332 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %335 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = icmp eq i64 %333, %336
  br i1 %337, label %338, label %341

338:                                              ; preds = %330
  %339 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %340 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %339, i32 0, i32 14
  store i64 0, i64* %340, align 8
  br label %341

341:                                              ; preds = %338, %330, %324
  %342 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %343 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %346 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %345, i32 0, i32 4
  %347 = load i64, i64* %346, align 8
  %348 = icmp eq i64 %344, %347
  br i1 %348, label %349, label %350

349:                                              ; preds = %341
  br label %357

350:                                              ; preds = %341
  %351 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %352 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %353 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = call %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp* %351, i64 %354)
  store %struct.ipath_swqe* %355, %struct.ipath_swqe** %14, align 8
  br label %356

356:                                              ; preds = %350, %297
  br label %51

357:                                              ; preds = %349, %296, %51
  %358 = load i32, i32* %7, align 4
  %359 = ashr i32 %358, 29
  switch i32 %359, label %580 [
    i32 0, label %360
    i32 1, label %443
    i32 3, label %520
  ]

360:                                              ; preds = %357
  %361 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %362 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %361, i32 0, i32 7
  %363 = load i32, i32* %362, align 8
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %362, align 8
  %365 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %366 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %369 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %368, i32 0, i32 4
  %370 = load i64, i64* %369, align 8
  %371 = icmp ne i64 %367, %370
  br i1 %371, label %372, label %409

372:                                              ; preds = %360
  %373 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %374 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %373, i32 0, i32 5
  %375 = call i32 @spin_lock(i32* %374)
  %376 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %377 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %376, i32 0, i32 13
  %378 = call i64 @list_empty(i32* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %391

380:                                              ; preds = %372
  %381 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %382 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %381, i32 0, i32 13
  %383 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %384 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %383, i32 0, i32 6
  %385 = load i32*, i32** %384, align 8
  %386 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %387 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = getelementptr inbounds i32, i32* %385, i64 %388
  %390 = call i32 @list_add_tail(i32* %382, i32* %389)
  br label %391

391:                                              ; preds = %380, %372
  %392 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %393 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %392, i32 0, i32 5
  %394 = call i32 @spin_unlock(i32* %393)
  %395 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %396 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %8, align 4
  %399 = call i32 @ipath_cmp24(i32 %397, i32 %398)
  %400 = icmp sle i32 %399, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %391
  %402 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %403 = load i32, i32* %8, align 4
  %404 = add nsw i32 %403, 1
  %405 = call i32 @reset_psn(%struct.ipath_qp* %402, i32 %404)
  %406 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %407 = call i32 @ipath_schedule_send(%struct.ipath_qp* %406)
  br label %408

408:                                              ; preds = %401, %391
  br label %426

409:                                              ; preds = %360
  %410 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %411 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %410, i32 0, i32 6
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* %8, align 4
  %414 = call i32 @ipath_cmp24(i32 %412, i32 %413)
  %415 = icmp sle i32 %414, 0
  br i1 %415, label %416, label %425

416:                                              ; preds = %409
  %417 = load i32, i32* @SEND_LAST, align 4
  %418 = call i32 @OP(i32 %417)
  %419 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %420 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %419, i32 0, i32 5
  store i32 %418, i32* %420, align 8
  %421 = load i32, i32* %8, align 4
  %422 = add nsw i32 %421, 1
  %423 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %424 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %423, i32 0, i32 6
  store i32 %422, i32* %424, align 4
  br label %425

425:                                              ; preds = %416, %409
  br label %426

426:                                              ; preds = %425, %408
  %427 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %428 = load i32, i32* %7, align 4
  %429 = call i32 @ipath_get_credit(%struct.ipath_qp* %427, i32 %428)
  %430 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %431 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %430, i32 0, i32 9
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %434 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %433, i32 0, i32 8
  store i32 %432, i32* %434, align 8
  %435 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %436 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %435, i32 0, i32 11
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %439 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %438, i32 0, i32 12
  store i32 %437, i32* %439, align 8
  %440 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %441 = load i32, i32* %8, align 4
  %442 = call i32 @update_last_psn(%struct.ipath_qp* %440, i32 %441)
  store i32 1, i32* %15, align 4
  br label %582

443:                                              ; preds = %357
  %444 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %445 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %444, i32 0, i32 4
  %446 = load i32, i32* %445, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %445, align 4
  %448 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %449 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %448, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %452 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %451, i32 0, i32 4
  %453 = load i64, i64* %452, align 8
  %454 = icmp eq i64 %450, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %443
  br label %582

456:                                              ; preds = %443
  %457 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %458 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %457, i32 0, i32 8
  %459 = load i32, i32* %458, align 8
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %463

461:                                              ; preds = %456
  %462 = load i32, i32* @IB_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %462, i32* %13, align 4
  br label %565

463:                                              ; preds = %456
  %464 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %465 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %464, i32 0, i32 9
  %466 = load i32, i32* %465, align 4
  %467 = icmp slt i32 %466, 7
  br i1 %467, label %468, label %473

468:                                              ; preds = %463
  %469 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %470 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %469, i32 0, i32 8
  %471 = load i32, i32* %470, align 8
  %472 = add nsw i32 %471, -1
  store i32 %472, i32* %470, align 8
  br label %473

473:                                              ; preds = %468, %463
  %474 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %475 = load i32, i32* %8, align 4
  %476 = sub nsw i32 %475, 1
  %477 = call i32 @update_last_psn(%struct.ipath_qp* %474, i32 %476)
  %478 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %479 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %478, i32 0, i32 2
  %480 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %483 = icmp eq i64 %481, %482
  br i1 %483, label %484, label %489

484:                                              ; preds = %473
  %485 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %486 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 8
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %486, align 8
  br label %501

489:                                              ; preds = %473
  %490 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %491 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %490, i32 0, i32 6
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %8, align 4
  %494 = sub nsw i32 %492, %493
  %495 = load i32, i32* @IPATH_PSN_MASK, align 4
  %496 = and i32 %494, %495
  %497 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %498 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %497, i32 0, i32 1
  %499 = load i32, i32* %498, align 8
  %500 = add nsw i32 %499, %496
  store i32 %500, i32* %498, align 8
  br label %501

501:                                              ; preds = %489, %484
  %502 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %503 = load i32, i32* %8, align 4
  %504 = call i32 @reset_psn(%struct.ipath_qp* %502, i32 %503)
  %505 = load i32*, i32** @ib_ipath_rnr_table, align 8
  %506 = load i32, i32* %7, align 4
  %507 = load i32, i32* @IPATH_AETH_CREDIT_SHIFT, align 4
  %508 = ashr i32 %506, %507
  %509 = load i32, i32* @IPATH_AETH_CREDIT_MASK, align 4
  %510 = and i32 %508, %509
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %505, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %515 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %514, i32 0, i32 10
  store i32 %513, i32* %515, align 8
  %516 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %517 = call i32 @ipath_insert_rnr_queue(%struct.ipath_qp* %516)
  %518 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %519 = call i32 @ipath_schedule_send(%struct.ipath_qp* %518)
  br label %582

520:                                              ; preds = %357
  %521 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %522 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %521, i32 0, i32 0
  %523 = load i64, i64* %522, align 8
  %524 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %525 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %524, i32 0, i32 4
  %526 = load i64, i64* %525, align 8
  %527 = icmp eq i64 %523, %526
  br i1 %527, label %528, label %529

528:                                              ; preds = %520
  br label %582

529:                                              ; preds = %520
  %530 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %531 = load i32, i32* %8, align 4
  %532 = sub nsw i32 %531, 1
  %533 = call i32 @update_last_psn(%struct.ipath_qp* %530, i32 %532)
  %534 = load i32, i32* %7, align 4
  %535 = load i32, i32* @IPATH_AETH_CREDIT_SHIFT, align 4
  %536 = ashr i32 %534, %535
  %537 = load i32, i32* @IPATH_AETH_CREDIT_MASK, align 4
  %538 = and i32 %536, %537
  switch i32 %538, label %573 [
    i32 0, label %539
    i32 1, label %547
    i32 2, label %553
    i32 3, label %559
  ]

539:                                              ; preds = %529
  %540 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %541 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %540, i32 0, i32 3
  %542 = load i32, i32* %541, align 8
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %541, align 8
  %544 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %545 = load i32, i32* %8, align 4
  %546 = call i32 @ipath_restart_rc(%struct.ipath_qp* %544, i32 %545)
  br label %574

547:                                              ; preds = %529
  %548 = load i32, i32* @IB_WC_REM_INV_REQ_ERR, align 4
  store i32 %548, i32* %13, align 4
  %549 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %550 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* %550, align 4
  br label %565

553:                                              ; preds = %529
  %554 = load i32, i32* @IB_WC_REM_ACCESS_ERR, align 4
  store i32 %554, i32* %13, align 4
  %555 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %556 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %555, i32 0, i32 2
  %557 = load i32, i32* %556, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %556, align 4
  br label %565

559:                                              ; preds = %529
  %560 = load i32, i32* @IB_WC_REM_OP_ERR, align 4
  store i32 %560, i32* %13, align 4
  %561 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %11, align 8
  %562 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %561, i32 0, i32 2
  %563 = load i32, i32* %562, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %562, align 4
  br label %565

565:                                              ; preds = %559, %553, %547, %461
  %566 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %567 = load %struct.ipath_swqe*, %struct.ipath_swqe** %14, align 8
  %568 = load i32, i32* %13, align 4
  %569 = call i32 @ipath_send_complete(%struct.ipath_qp* %566, %struct.ipath_swqe* %567, i32 %568)
  %570 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %571 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %572 = call i32 @ipath_error_qp(%struct.ipath_qp* %570, i32 %571)
  br label %574

573:                                              ; preds = %529
  br label %581

574:                                              ; preds = %565, %539
  %575 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %576 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %575, i32 0, i32 9
  %577 = load i32, i32* %576, align 4
  %578 = load %struct.ipath_qp*, %struct.ipath_qp** %6, align 8
  %579 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %578, i32 0, i32 8
  store i32 %577, i32* %579, align 8
  br label %582

580:                                              ; preds = %357
  br label %581

581:                                              ; preds = %580, %573
  br label %582

582:                                              ; preds = %581, %574, %528, %501, %455, %426, %111, %73
  %583 = load i32, i32* %15, align 4
  ret i32 %583
}

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp*, i64) #1

declare dso_local i32 @ipath_cmp24(i32, i32) #1

declare dso_local i32 @OP(i32) #1

declare dso_local i32 @update_last_psn(%struct.ipath_qp*, i32) #1

declare dso_local i32 @ipath_restart_rc(%struct.ipath_qp*, i32) #1

declare dso_local i32 @ipath_schedule_send(%struct.ipath_qp*) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @ipath_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @reset_psn(%struct.ipath_qp*, i32) #1

declare dso_local i32 @ipath_get_credit(%struct.ipath_qp*, i32) #1

declare dso_local i32 @ipath_insert_rnr_queue(%struct.ipath_qp*) #1

declare dso_local i32 @ipath_send_complete(%struct.ipath_qp*, %struct.ipath_swqe*, i32) #1

declare dso_local i32 @ipath_error_qp(%struct.ipath_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
