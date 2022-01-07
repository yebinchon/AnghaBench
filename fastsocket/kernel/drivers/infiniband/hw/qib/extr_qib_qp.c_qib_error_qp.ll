; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_error_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_qp.c_qib_error_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i32, i64, i64, %struct.TYPE_4__, %struct.TYPE_6__, i32, i32, i32*, i32*, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, %struct.qib_rwq* }
%struct.qib_rwq = type { i64, i64 }
%struct.qib_ibdev = type { i32 }
%struct.ib_wc = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }

@IB_QPS_ERR = common dso_local global i64 0, align 8
@IB_QPS_RESET = common dso_local global i64 0, align 8
@QIB_S_TIMER = common dso_local global i32 0, align 4
@QIB_S_WAIT_RNR = common dso_local global i32 0, align 4
@QIB_S_ANY_WAIT_SEND = common dso_local global i32 0, align 4
@QIB_S_BUSY = common dso_local global i32 0, align 4
@QIB_S_ANY_WAIT_IO = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@QIB_R_WRID_VALID = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_error_qp(%struct.qib_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qib_ibdev*, align 8
  %6 = alloca %struct.ib_wc, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qib_rwq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %12 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.qib_ibdev* @to_idev(i32 %14)
  store %struct.qib_ibdev* %15, %struct.qib_ibdev** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %17 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IB_QPS_ERR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %23 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IB_QPS_RESET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21, %2
  br label %249

28:                                               ; preds = %21
  %29 = load i64, i64* @IB_QPS_ERR, align 8
  %30 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %31 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %33 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @QIB_S_TIMER, align 4
  %36 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %28
  %41 = load i32, i32* @QIB_S_TIMER, align 4
  %42 = load i32, i32* @QIB_S_WAIT_RNR, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %46 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %50 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %49, i32 0, i32 12
  %51 = call i32 @del_timer(i32* %50)
  br label %52

52:                                               ; preds = %40, %28
  %53 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %54 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @QIB_S_ANY_WAIT_SEND, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load i32, i32* @QIB_S_ANY_WAIT_SEND, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %63 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.qib_ibdev*, %struct.qib_ibdev** %5, align 8
  %68 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %67, i32 0, i32 0
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %71 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %70, i32 0, i32 11
  %72 = call i32 @list_empty(i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %66
  %75 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %76 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @QIB_S_BUSY, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* @QIB_S_ANY_WAIT_IO, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %85 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %89 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %88, i32 0, i32 11
  %90 = call i32 @list_del_init(i32* %89)
  br label %91

91:                                               ; preds = %81, %74, %66
  %92 = load %struct.qib_ibdev*, %struct.qib_ibdev** %5, align 8
  %93 = getelementptr inbounds %struct.qib_ibdev, %struct.qib_ibdev* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %96 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @QIB_S_BUSY, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %128, label %101

101:                                              ; preds = %91
  %102 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %103 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %102, i32 0, i32 10
  store i64 0, i64* %103, align 8
  %104 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %105 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %104, i32 0, i32 9
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %115

108:                                              ; preds = %101
  %109 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %110 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %109, i32 0, i32 9
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @qib_put_mr(i32* %111)
  %113 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %114 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %113, i32 0, i32 9
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %108, %101
  %116 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %117 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %116, i32 0, i32 8
  %118 = load i32*, i32** %117, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %122 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %121, i32 0, i32 8
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @qib_put_txreq(i32* %123)
  %125 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %126 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %125, i32 0, i32 8
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %120, %115
  br label %128

128:                                              ; preds = %127, %91
  %129 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %130 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %133 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %131, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %138 = call i32 @qib_schedule_send(%struct.qib_qp* %137)
  br label %139

139:                                              ; preds = %136, %128
  %140 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %141 = call i32 @clear_mr_refs(%struct.qib_qp* %140, i32 0)
  %142 = call i32 @memset(%struct.ib_wc* %6, i32 0, i32 24)
  %143 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %144 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 3
  store %struct.TYPE_4__* %144, %struct.TYPE_4__** %145, align 8
  %146 = load i32, i32* @IB_WC_RECV, align 4
  %147 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 2
  store i32 %146, i32* %147, align 8
  %148 = load i32, i32* @QIB_R_WRID_VALID, align 4
  %149 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %150 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %149, i32 0, i32 7
  %151 = call i64 @test_and_clear_bit(i32 %148, i32* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %139
  %154 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %155 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  store i32 %156, i32* %157, align 4
  %158 = load i32, i32* %4, align 4
  %159 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  store i32 %158, i32* %159, align 8
  %160 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %161 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @to_icq(i32 %163)
  %165 = call i32 @qib_cq_enter(i32 %164, %struct.ib_wc* %6, i32 1)
  br label %166

166:                                              ; preds = %153, %139
  %167 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %168 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 0
  store i32 %167, i32* %168, align 8
  %169 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %170 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load %struct.qib_rwq*, %struct.qib_rwq** %171, align 8
  %173 = icmp ne %struct.qib_rwq* %172, null
  br i1 %173, label %174, label %240

174:                                              ; preds = %166
  %175 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %176 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  %178 = call i32 @spin_lock(i32* %177)
  %179 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %180 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  %182 = load %struct.qib_rwq*, %struct.qib_rwq** %181, align 8
  store %struct.qib_rwq* %182, %struct.qib_rwq** %8, align 8
  %183 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %184 = getelementptr inbounds %struct.qib_rwq, %struct.qib_rwq* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  store i64 %185, i64* %9, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %188 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp sge i64 %186, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %174
  store i64 0, i64* %9, align 8
  br label %193

193:                                              ; preds = %192, %174
  %194 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %195 = getelementptr inbounds %struct.qib_rwq, %struct.qib_rwq* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  store i64 %196, i64* %10, align 8
  %197 = load i64, i64* %10, align 8
  %198 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %199 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp sge i64 %197, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %193
  store i64 0, i64* %10, align 8
  br label %204

204:                                              ; preds = %203, %193
  br label %205

205:                                              ; preds = %225, %204
  %206 = load i64, i64* %10, align 8
  %207 = load i64, i64* %9, align 8
  %208 = icmp ne i64 %206, %207
  br i1 %208, label %209, label %232

209:                                              ; preds = %205
  %210 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %211 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %210, i32 0, i32 5
  %212 = load i64, i64* %10, align 8
  %213 = call %struct.TYPE_5__* @get_rwqe_ptr(%struct.TYPE_6__* %211, i64 %212)
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %6, i32 0, i32 1
  store i32 %215, i32* %216, align 4
  %217 = load i64, i64* %10, align 8
  %218 = add nsw i64 %217, 1
  store i64 %218, i64* %10, align 8
  %219 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %220 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp sge i64 %218, %222
  br i1 %223, label %224, label %225

224:                                              ; preds = %209
  store i64 0, i64* %10, align 8
  br label %225

225:                                              ; preds = %224, %209
  %226 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %227 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @to_icq(i32 %229)
  %231 = call i32 @qib_cq_enter(i32 %230, %struct.ib_wc* %6, i32 1)
  br label %205

232:                                              ; preds = %205
  %233 = load i64, i64* %10, align 8
  %234 = load %struct.qib_rwq*, %struct.qib_rwq** %8, align 8
  %235 = getelementptr inbounds %struct.qib_rwq, %struct.qib_rwq* %234, i32 0, i32 1
  store i64 %233, i64* %235, align 8
  %236 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %237 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = call i32 @spin_unlock(i32* %238)
  br label %248

240:                                              ; preds = %166
  %241 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %242 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %240
  store i32 1, i32* %7, align 4
  br label %247

247:                                              ; preds = %246, %240
  br label %248

248:                                              ; preds = %247, %232
  br label %249

249:                                              ; preds = %248, %27
  %250 = load i32, i32* %7, align 4
  ret i32 %250
}

declare dso_local %struct.qib_ibdev* @to_idev(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @qib_put_mr(i32*) #1

declare dso_local i32 @qib_put_txreq(i32*) #1

declare dso_local i32 @qib_schedule_send(%struct.qib_qp*) #1

declare dso_local i32 @clear_mr_refs(%struct.qib_qp*, i32) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qib_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

declare dso_local %struct.TYPE_5__* @get_rwqe_ptr(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
