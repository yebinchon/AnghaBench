; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_disconn_true.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_nes_cm_disconn_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_qp = type { i64, i64, i64, i32, i64, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64, i32, %struct.iw_cm_id*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)*, i32 (%struct.iw_cm_id*)*, i32, i32, %struct.nes_qp* }
%struct.iw_cm_event = type opaque
%struct.iw_cm_event.0 = type { i32, i64, i32*, i32, i32, %struct.nes_qp*, i32 }
%struct.nes_vnic = type { i32 }
%struct.ib_event.1 = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@NES_CQP_FLUSH_RQ = common dso_local global i32 0, align 4
@NES_DBG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"disconnect_worker nesqp is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"QP%u disconnect_worker cmid is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Disconnecting QP%u\0A\00", align 1
@NES_AEQE_TCP_STATE_CLOSE_WAIT = common dso_local global i64 0, align 8
@IB_QPS_RTS = common dso_local global i64 0, align 8
@NES_AEQE_AEID_LLP_CONNECTION_RESET = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@NES_AEQE_TCP_STATE_CLOSED = common dso_local global i64 0, align 8
@NES_AEQE_TCP_STATE_TIME_WAIT = common dso_local global i64 0, align 8
@NES_AEQE_AEID_RDMAP_ROE_BAD_LLP_CLOSE = common dso_local global i64 0, align 8
@NES_AEQE_IWARP_STATE_TERMINATE = common dso_local global i64 0, align 8
@NES_CQP_FLUSH_SQ = common dso_local global i32 0, align 4
@cm_disconnects = common dso_local global i32 0, align 4
@IW_CM_EVENT_DISCONNECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [100 x i8] c"Generating a CM Disconnect Event for  QP%u, SQ Head = %u, SQ Tail = %u. cm_id = %p, refcount = %u.\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"OFA CM event_handler returned, ret=%d\0A\00", align 1
@cm_closes = common dso_local global i32 0, align 4
@IW_CM_EVENT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_qp*)* @nes_cm_disconn_true to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_cm_disconn_true(%struct.nes_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nes_qp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iw_cm_id*, align 8
  %7 = alloca %struct.iw_cm_event.0, align 8
  %8 = alloca %struct.nes_vnic*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ib_event.1, align 8
  store %struct.nes_qp* %0, %struct.nes_qp** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* @NES_CQP_FLUSH_RQ, align 4
  store i32 %18, i32* %16, align 4
  %19 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %20 = icmp ne %struct.nes_qp* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @NES_DBG_CM, align 4
  %23 = call i32 (i32, i8*, ...) @nes_debug(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %302

24:                                               ; preds = %1
  %25 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %26 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %25, i32 0, i32 11
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %30 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %29, i32 0, i32 12
  %31 = load %struct.iw_cm_id*, %struct.iw_cm_id** %30, align 8
  store %struct.iw_cm_id* %31, %struct.iw_cm_id** %6, align 8
  %32 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %33 = icmp ne %struct.iw_cm_id* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @NES_DBG_CM, align 4
  %36 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %37 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @nes_debug(i32 %35, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %42 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %41, i32 0, i32 11
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 -1, i32* %2, align 4
  br label %302

45:                                               ; preds = %24
  %46 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %47 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call %struct.nes_vnic* @to_nesvnic(i32 %49)
  store %struct.nes_vnic* %50, %struct.nes_vnic** %8, align 8
  %51 = load i32, i32* @NES_DBG_CM, align 4
  %52 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %53 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %52, i32 0, i32 7
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, ...) @nes_debug(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  %57 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %58 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %10, align 8
  %60 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %61 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %64 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %9, align 8
  %66 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %67 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %66, i32 0, i32 10
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %84

70:                                               ; preds = %45
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %71 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %72 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %71, i32 0, i32 12
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %72, align 8
  %73 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %74 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %73, i32 0, i32 13
  %75 = call i32 @del_timer(i32* %74)
  %76 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %77 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %82 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %81, i32 0, i32 3
  store i32 1, i32* %82, align 8
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %80, %70
  br label %105

84:                                               ; preds = %45
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* @NES_AEQE_TCP_STATE_CLOSE_WAIT, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* @IB_QPS_RTS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %88
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* @NES_AEQE_AEID_LLP_CONNECTION_RESET, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92, %84
  store i32 1, i32* %13, align 4
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* @NES_AEQE_AEID_LLP_CONNECTION_RESET, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %96
  %101 = load i32, i32* @ECONNRESET, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %100, %96
  br label %104

104:                                              ; preds = %103, %92, %88
  br label %105

105:                                              ; preds = %104, %83
  %106 = load i64, i64* %10, align 8
  %107 = load i64, i64* @NES_AEQE_TCP_STATE_CLOSED, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %121, label %109

109:                                              ; preds = %105
  %110 = load i64, i64* %10, align 8
  %111 = load i64, i64* @NES_AEQE_TCP_STATE_TIME_WAIT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* %9, align 8
  %115 = load i64, i64* @NES_AEQE_AEID_RDMAP_ROE_BAD_LLP_CLOSE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i64, i64* %9, align 8
  %119 = load i64, i64* @NES_AEQE_AEID_LLP_CONNECTION_RESET, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117, %113, %109, %105
  store i32 1, i32* %14, align 4
  %122 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %123 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %122, i32 0, i32 12
  store %struct.iw_cm_id* null, %struct.iw_cm_id** %123, align 8
  %124 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %125 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %130 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %129, i32 0, i32 3
  store i32 1, i32* %130, align 8
  store i32 1, i32* %15, align 4
  br label %131

131:                                              ; preds = %128, %121
  br label %132

132:                                              ; preds = %131, %117
  %133 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %134 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %133, i32 0, i32 11
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %197

139:                                              ; preds = %132
  %140 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %141 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %197

144:                                              ; preds = %139
  %145 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %146 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %145, i32 0, i32 5
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @NES_AEQE_IWARP_STATE_TERMINATE, align 8
  %149 = icmp sge i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* @NES_CQP_FLUSH_SQ, align 4
  %152 = load i32, i32* %16, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %16, align 4
  br label %154

154:                                              ; preds = %150, %144
  %155 = load %struct.nes_vnic*, %struct.nes_vnic** %8, align 8
  %156 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %159 = load i32, i32* %16, align 4
  %160 = call i32 @flush_wqes(i32 %157, %struct.nes_qp* %158, i32 %159, i32 1)
  %161 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %162 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %161, i32 0, i32 10
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %154
  %166 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %167 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %166, i32 0, i32 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %17, i32 0, i32 2
  store i32 %169, i32* %170, align 4
  %171 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %172 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 8
  %174 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %17, i32 0, i32 1
  store i32 %173, i32* %174, align 8
  %175 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %176 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %175, i32 0, i32 8
  %177 = getelementptr inbounds %struct.ib_event.1, %struct.ib_event.1* %17, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  store %struct.TYPE_5__* %176, %struct.TYPE_5__** %178, align 8
  %179 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %180 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %181, align 8
  %183 = icmp ne i32 (%struct.ib_event*, i32)* %182, null
  br i1 %183, label %184, label %195

184:                                              ; preds = %165
  %185 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %186 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %185, i32 0, i32 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 1
  %188 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %187, align 8
  %189 = bitcast %struct.ib_event.1* %17 to %struct.ib_event*
  %190 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %191 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 %188(%struct.ib_event* %189, i32 %193)
  br label %195

195:                                              ; preds = %184, %165
  br label %196

196:                                              ; preds = %195, %154
  br label %197

197:                                              ; preds = %196, %139, %132
  %198 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %199 = icmp ne %struct.iw_cm_id* %198, null
  br i1 %199, label %200, label %301

200:                                              ; preds = %197
  %201 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %202 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %201, i32 0, i32 0
  %203 = load i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)*, i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)** %202, align 8
  %204 = icmp ne i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)* %203, null
  br i1 %204, label %205, label %301

205:                                              ; preds = %200
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %255

208:                                              ; preds = %205
  %209 = call i32 @atomic_inc(i32* @cm_disconnects)
  %210 = load i32, i32* @IW_CM_EVENT_DISCONNECT, align 4
  %211 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 6
  store i32 %210, i32* %211, align 8
  %212 = load i32, i32* %12, align 4
  %213 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 0
  store i32 %212, i32* %213, align 8
  %214 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %215 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 4
  store i32 %216, i32* %217, align 4
  %218 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %219 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 3
  store i32 %220, i32* %221, align 8
  %222 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 2
  store i32* null, i32** %222, align 8
  %223 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 1
  store i64 0, i64* %223, align 8
  %224 = load i32, i32* @NES_DBG_CM, align 4
  %225 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %226 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %225, i32 0, i32 7
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %230 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %229, i32 0, i32 7
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %234 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %233, i32 0, i32 7
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %238 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %239 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %238, i32 0, i32 6
  %240 = call i32 @atomic_read(i32* %239)
  %241 = call i32 (i32, i8*, ...) @nes_debug(i32 %224, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0), i32 %228, i32 %232, i32 %236, %struct.iw_cm_id* %237, i32 %240)
  %242 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %243 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %242, i32 0, i32 0
  %244 = load i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)*, i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)** %243, align 8
  %245 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %246 = bitcast %struct.iw_cm_event.0* %7 to %struct.iw_cm_event*
  %247 = call i32 %244(%struct.iw_cm_id* %245, %struct.iw_cm_event* %246)
  store i32 %247, i32* %5, align 4
  %248 = load i32, i32* %5, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %208
  %251 = load i32, i32* @NES_DBG_CM, align 4
  %252 = load i32, i32* %5, align 4
  %253 = call i32 (i32, i8*, ...) @nes_debug(i32 %251, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %252)
  br label %254

254:                                              ; preds = %250, %208
  br label %255

255:                                              ; preds = %254, %205
  %256 = load i32, i32* %14, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %300

258:                                              ; preds = %255
  %259 = call i32 @atomic_inc(i32* @cm_closes)
  %260 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %261 = call i32 @nes_disconnect(%struct.nes_qp* %260, i32 1)
  %262 = load %struct.nes_qp*, %struct.nes_qp** %3, align 8
  %263 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %264 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %263, i32 0, i32 4
  store %struct.nes_qp* %262, %struct.nes_qp** %264, align 8
  %265 = load i32, i32* @IW_CM_EVENT_CLOSE, align 4
  %266 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 6
  store i32 %265, i32* %266, align 8
  %267 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 0
  store i32 0, i32* %267, align 8
  %268 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %269 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %268, i32 0, i32 4
  %270 = load %struct.nes_qp*, %struct.nes_qp** %269, align 8
  %271 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 5
  store %struct.nes_qp* %270, %struct.nes_qp** %271, align 8
  %272 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %273 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 4
  store i32 %274, i32* %275, align 4
  %276 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %277 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 3
  store i32 %278, i32* %279, align 8
  %280 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 2
  store i32* null, i32** %280, align 8
  %281 = getelementptr inbounds %struct.iw_cm_event.0, %struct.iw_cm_event.0* %7, i32 0, i32 1
  store i64 0, i64* %281, align 8
  %282 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %283 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %282, i32 0, i32 0
  %284 = load i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)*, i32 (%struct.iw_cm_id*, %struct.iw_cm_event*)** %283, align 8
  %285 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %286 = bitcast %struct.iw_cm_event.0* %7 to %struct.iw_cm_event*
  %287 = call i32 %284(%struct.iw_cm_id* %285, %struct.iw_cm_event* %286)
  store i32 %287, i32* %5, align 4
  %288 = load i32, i32* %5, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %258
  %291 = load i32, i32* @NES_DBG_CM, align 4
  %292 = load i32, i32* %5, align 4
  %293 = call i32 (i32, i8*, ...) @nes_debug(i32 %291, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %290, %258
  %295 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %296 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %295, i32 0, i32 1
  %297 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %296, align 8
  %298 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %299 = call i32 %297(%struct.iw_cm_id* %298)
  br label %300

300:                                              ; preds = %294, %255
  br label %301

301:                                              ; preds = %300, %200, %197
  store i32 0, i32* %2, align 4
  br label %302

302:                                              ; preds = %301, %34, %21
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local i32 @nes_debug(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.nes_vnic* @to_nesvnic(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @flush_wqes(i32, %struct.nes_qp*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @nes_disconnect(%struct.nes_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
