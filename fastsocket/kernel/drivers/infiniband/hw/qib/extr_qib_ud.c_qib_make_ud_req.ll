; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ud.c_qib_make_ud_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ud.c_qib_make_ud_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_23__, i32, i32, %struct.TYPE_20__*, %struct.TYPE_16__, %struct.qib_swqe*, i32, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_23__ = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i8**, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.qib_other_headers, %struct.TYPE_17__ }
%struct.qib_other_headers = type { %struct.TYPE_22__, i8** }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i8**, i32 }
%struct.TYPE_17__ = type { %struct.qib_other_headers, i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32 }
%struct.qib_swqe = type { i32, %struct.TYPE_14__, i32* }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_13__, %struct.TYPE_19__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.ib_ah_attr = type { i32, i32, i32, i32, i32, i32 }
%struct.qib_pportdata = type { i32, i32 }
%struct.qib_ibport = type { i32*, i32, i32 }
%struct.TYPE_15__ = type { %struct.ib_ah_attr }

@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_PROCESS_NEXT_SEND_OK = common dso_local global i32 0, align 4
@QIB_FLUSH_SEND = common dso_local global i32 0, align 4
@QIB_S_WAIT_DMA = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@QIB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@QIB_PERMISSIVE_LID = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@QIB_LRH_GRH = common dso_local global i32 0, align 4
@QIB_LRH_BTH = common dso_local global i32 0, align 4
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i64 0, align 8
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i8* null, align 8
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@IB_BTH_SOLICITED = common dso_local global i32 0, align 4
@QIB_DEFAULT_P_KEY = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@QIB_MULTICAST_QPN = common dso_local global i32 0, align 4
@QIB_PSN_MASK = common dso_local global i32 0, align 4
@QIB_S_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_make_ud_req(%struct.qib_qp* %0) #0 {
  %2 = alloca %struct.qib_qp*, align 8
  %3 = alloca %struct.qib_other_headers*, align 8
  %4 = alloca %struct.ib_ah_attr*, align 8
  %5 = alloca %struct.qib_pportdata*, align 8
  %6 = alloca %struct.qib_ibport*, align 8
  %7 = alloca %struct.qib_swqe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.qib_qp* %0, %struct.qib_qp** %2, align 8
  store i32 0, i32* %14, align 4
  %16 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %17 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %16, i32 0, i32 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load i32*, i32** @ib_qib_state_ops, align 8
  %21 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %22 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QIB_PROCESS_NEXT_SEND_OK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %1
  %30 = load i32*, i32** @ib_qib_state_ops, align 8
  %31 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %32 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @QIB_FLUSH_SEND, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %551

40:                                               ; preds = %29
  %41 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %42 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %45 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %551

49:                                               ; preds = %40
  %50 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %51 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %50, i32 0, i32 18
  %52 = call i64 @atomic_read(i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load i32, i32* @QIB_S_WAIT_DMA, align 4
  %56 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %57 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %551

60:                                               ; preds = %49
  %61 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %62 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %63 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %61, i32 %65)
  store %struct.qib_swqe* %66, %struct.qib_swqe** %7, align 8
  %67 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %68 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %69 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %70 = call i32 @qib_send_complete(%struct.qib_qp* %67, %struct.qib_swqe* %68, i32 %69)
  br label %550

71:                                               ; preds = %1
  %72 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %73 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %77 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %551

81:                                               ; preds = %71
  %82 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %83 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %84 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %82, i32 %85)
  store %struct.qib_swqe* %86, %struct.qib_swqe** %7, align 8
  %87 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %88 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %93 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp sge i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  store i32 0, i32* %15, align 4
  br label %97

97:                                               ; preds = %96, %81
  %98 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %99 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %98, i32 0, i32 10
  %100 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %103 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %102, i32 0, i32 19
  %104 = load i32, i32* %103, align 4
  %105 = call %struct.qib_ibport* @to_iport(i32 %101, i32 %104)
  store %struct.qib_ibport* %105, %struct.qib_ibport** %6, align 8
  %106 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %107 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %106)
  store %struct.qib_pportdata* %107, %struct.qib_pportdata** %5, align 8
  %108 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %109 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.TYPE_15__* @to_iah(i32 %113)
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  store %struct.ib_ah_attr* %115, %struct.ib_ah_attr** %4, align 8
  %116 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %117 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @QIB_MULTICAST_LID_BASE, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %97
  %122 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %123 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @QIB_PERMISSIVE_LID, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %132

127:                                              ; preds = %121
  %128 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %129 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %137

132:                                              ; preds = %121
  %133 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %134 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  br label %137

137:                                              ; preds = %132, %127
  br label %192

138:                                              ; preds = %97
  %139 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %140 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  %143 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %144 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %147 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = shl i32 1, %148
  %150 = sub nsw i32 %149, 1
  %151 = xor i32 %150, -1
  %152 = and i32 %145, %151
  store i32 %152, i32* %13, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %155 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %153, %156
  %158 = zext i1 %157 to i32
  %159 = call i64 @unlikely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %191

161:                                              ; preds = %138
  %162 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %163 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %162, i32 0, i32 18
  %164 = call i64 @atomic_read(i32* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* @QIB_S_WAIT_DMA, align 4
  %168 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %169 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %168, i32 0, i32 9
  %170 = load i32, i32* %169, align 8
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 8
  br label %551

172:                                              ; preds = %161
  %173 = load i32, i32* %15, align 4
  %174 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %175 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 8
  %176 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %177 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %176, i32 0, i32 8
  %178 = load i64, i64* %8, align 8
  %179 = call i32 @spin_unlock_irqrestore(i32* %177, i64 %178)
  %180 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %181 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %182 = call i32 @qib_ud_loopback(%struct.qib_qp* %180, %struct.qib_swqe* %181)
  %183 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %184 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %183, i32 0, i32 8
  %185 = load i64, i64* %8, align 8
  %186 = call i32 @spin_lock_irqsave(i32* %184, i64 %185)
  %187 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %188 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %189 = load i32, i32* @IB_WC_SUCCESS, align 4
  %190 = call i32 @qib_send_complete(%struct.qib_qp* %187, %struct.qib_swqe* %188, i32 %189)
  br label %550

191:                                              ; preds = %138
  br label %192

192:                                              ; preds = %191, %137
  %193 = load i32, i32* %15, align 4
  %194 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %195 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %194, i32 0, i32 3
  store i32 %193, i32* %195, align 8
  %196 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %197 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = sub nsw i32 0, %198
  %200 = and i32 %199, 3
  store i32 %200, i32* %10, align 4
  %201 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %202 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %203, %204
  %206 = ashr i32 %205, 2
  store i32 %206, i32* %9, align 4
  %207 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %208 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %207, i32 0, i32 5
  store i32 7, i32* %208, align 8
  %209 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %210 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %213 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %212, i32 0, i32 6
  store i32 %211, i32* %213, align 4
  %214 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %215 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %214, i32 0, i32 14
  %216 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %217 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %216, i32 0, i32 17
  store %struct.TYPE_16__* %215, %struct.TYPE_16__** %217, align 8
  %218 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %219 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %222 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %221, i32 0, i32 16
  store i32 %220, i32* %222, align 8
  %223 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %224 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %225 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %224, i32 0, i32 15
  store %struct.qib_swqe* %223, %struct.qib_swqe** %225, align 8
  %226 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %227 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %232 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %231, i32 0, i32 14
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  store i32 %230, i32* %233, align 8
  %234 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %235 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %234, i32 0, i32 2
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %239 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %238, i32 0, i32 14
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 2
  store i32* %237, i32** %240, align 8
  %241 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %242 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %246 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %245, i32 0, i32 14
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 1
  store i32 %244, i32* %247, align 4
  %248 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %249 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %252 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %251, i32 0, i32 14
  %253 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 8
  %254 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %255 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @IB_AH_GRH, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %288

260:                                              ; preds = %192
  %261 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %262 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %263 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %262, i32 0, i32 13
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %266, i32 0, i32 1
  %268 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %269 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %268, i32 0, i32 4
  %270 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %271 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = call i64 @qib_make_grh(%struct.qib_ibport* %261, i32* %267, i32* %269, i32 %272, i32 %273)
  %275 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %276 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 8
  %278 = sext i32 %277 to i64
  %279 = add nsw i64 %278, %274
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %276, align 8
  %281 = load i32, i32* @QIB_LRH_GRH, align 4
  store i32 %281, i32* %12, align 4
  %282 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %283 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %282, i32 0, i32 13
  %284 = load %struct.TYPE_20__*, %struct.TYPE_20__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 0
  store %struct.qib_other_headers* %287, %struct.qib_other_headers** %3, align 8
  br label %295

288:                                              ; preds = %192
  %289 = load i32, i32* @QIB_LRH_BTH, align 4
  store i32 %289, i32* %12, align 4
  %290 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %291 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %290, i32 0, i32 13
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 0
  store %struct.qib_other_headers* %294, %struct.qib_other_headers** %3, align 8
  br label %295

295:                                              ; preds = %288, %260
  %296 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %297 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %318

302:                                              ; preds = %295
  %303 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %304 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 8
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %304, align 8
  %307 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %308 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.qib_other_headers*, %struct.qib_other_headers** %3, align 8
  %313 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 1
  store i32 %311, i32* %315, align 8
  %316 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE, align 4
  %317 = shl i32 %316, 24
  store i32 %317, i32* %11, align 4
  br label %321

318:                                              ; preds = %295
  %319 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %320 = shl i32 %319, 24
  store i32 %320, i32* %11, align 4
  br label %321

321:                                              ; preds = %318, %302
  %322 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %323 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 4
  %325 = shl i32 %324, 4
  %326 = load i32, i32* %12, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %12, align 4
  %328 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %329 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %328, i32 0, i32 10
  %330 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = load i64, i64* @IB_QPT_SMI, align 8
  %333 = icmp eq i64 %331, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %321
  %335 = load i32, i32* %12, align 4
  %336 = or i32 %335, 61440
  store i32 %336, i32* %12, align 4
  br label %350

337:                                              ; preds = %321
  %338 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %339 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %338, i32 0, i32 0
  %340 = load i32*, i32** %339, align 8
  %341 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %342 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %340, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = shl i32 %346, 12
  %348 = load i32, i32* %12, align 4
  %349 = or i32 %348, %347
  store i32 %349, i32* %12, align 4
  br label %350

350:                                              ; preds = %337, %334
  %351 = load i32, i32* %12, align 4
  %352 = call i8* @cpu_to_be16(i32 %351)
  %353 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %354 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %353, i32 0, i32 13
  %355 = load %struct.TYPE_20__*, %struct.TYPE_20__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %355, i32 0, i32 0
  %357 = load i8**, i8*** %356, align 8
  %358 = getelementptr inbounds i8*, i8** %357, i64 0
  store i8* %352, i8** %358, align 8
  %359 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %360 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i8* @cpu_to_be16(i32 %361)
  %363 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %364 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %363, i32 0, i32 13
  %365 = load %struct.TYPE_20__*, %struct.TYPE_20__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %365, i32 0, i32 0
  %367 = load i8**, i8*** %366, align 8
  %368 = getelementptr inbounds i8*, i8** %367, i64 1
  store i8* %362, i8** %368, align 8
  %369 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %370 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %369, i32 0, i32 5
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* %9, align 4
  %373 = add nsw i32 %371, %372
  %374 = load i32, i32* @SIZE_OF_CRC, align 4
  %375 = add nsw i32 %373, %374
  %376 = call i8* @cpu_to_be16(i32 %375)
  %377 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %378 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %377, i32 0, i32 13
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 0
  %381 = load i8**, i8*** %380, align 8
  %382 = getelementptr inbounds i8*, i8** %381, i64 2
  store i8* %376, i8** %382, align 8
  %383 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %384 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %13, align 4
  %386 = load i32, i32* %13, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %408

388:                                              ; preds = %350
  %389 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %390 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %389, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = load %struct.qib_pportdata*, %struct.qib_pportdata** %5, align 8
  %393 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = shl i32 1, %394
  %396 = sub nsw i32 %395, 1
  %397 = and i32 %391, %396
  %398 = load i32, i32* %13, align 4
  %399 = or i32 %398, %397
  store i32 %399, i32* %13, align 4
  %400 = load i32, i32* %13, align 4
  %401 = call i8* @cpu_to_be16(i32 %400)
  %402 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %403 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %402, i32 0, i32 13
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 0
  %406 = load i8**, i8*** %405, align 8
  %407 = getelementptr inbounds i8*, i8** %406, i64 3
  store i8* %401, i8** %407, align 8
  br label %416

408:                                              ; preds = %350
  %409 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %410 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %411 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %410, i32 0, i32 13
  %412 = load %struct.TYPE_20__*, %struct.TYPE_20__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %412, i32 0, i32 0
  %414 = load i8**, i8*** %413, align 8
  %415 = getelementptr inbounds i8*, i8** %414, i64 3
  store i8* %409, i8** %415, align 8
  br label %416

416:                                              ; preds = %408, %388
  %417 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %418 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %417, i32 0, i32 1
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 1
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %422 = and i32 %420, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %428

424:                                              ; preds = %416
  %425 = load i32, i32* @IB_BTH_SOLICITED, align 4
  %426 = load i32, i32* %11, align 4
  %427 = or i32 %426, %425
  store i32 %427, i32* %11, align 4
  br label %428

428:                                              ; preds = %424, %416
  %429 = load i32, i32* %10, align 4
  %430 = shl i32 %429, 20
  %431 = load i32, i32* %11, align 4
  %432 = or i32 %431, %430
  store i32 %432, i32* %11, align 4
  %433 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %434 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %433, i32 0, i32 10
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %434, i32 0, i32 0
  %436 = load i64, i64* %435, align 8
  %437 = load i64, i64* @IB_QPT_SMI, align 8
  %438 = icmp eq i64 %436, %437
  br i1 %438, label %439, label %441

439:                                              ; preds = %428
  %440 = load i32, i32* @QIB_DEFAULT_P_KEY, align 4
  br label %463

441:                                              ; preds = %428
  %442 = load %struct.qib_ibport*, %struct.qib_ibport** %6, align 8
  %443 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %444 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %443, i32 0, i32 10
  %445 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %444, i32 0, i32 0
  %446 = load i64, i64* %445, align 8
  %447 = load i64, i64* @IB_QPT_GSI, align 8
  %448 = icmp eq i64 %446, %447
  br i1 %448, label %449, label %456

449:                                              ; preds = %441
  %450 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %451 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %451, i32 0, i32 2
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %453, i32 0, i32 2
  %455 = load i32, i32* %454, align 4
  br label %460

456:                                              ; preds = %441
  %457 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %458 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %457, i32 0, i32 12
  %459 = load i32, i32* %458, align 4
  br label %460

460:                                              ; preds = %456, %449
  %461 = phi i32 [ %455, %449 ], [ %459, %456 ]
  %462 = call i32 @qib_get_pkey(%struct.qib_ibport* %442, i32 %461)
  br label %463

463:                                              ; preds = %460, %439
  %464 = phi i32 [ %440, %439 ], [ %462, %460 ]
  %465 = load i32, i32* %11, align 4
  %466 = or i32 %465, %464
  store i32 %466, i32* %11, align 4
  %467 = load i32, i32* %11, align 4
  %468 = call i8* @cpu_to_be32(i32 %467)
  %469 = load %struct.qib_other_headers*, %struct.qib_other_headers** %3, align 8
  %470 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %469, i32 0, i32 1
  %471 = load i8**, i8*** %470, align 8
  %472 = getelementptr inbounds i8*, i8** %471, i64 0
  store i8* %468, i8** %472, align 8
  %473 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %474 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = load i32, i32* @QIB_MULTICAST_LID_BASE, align 4
  %477 = icmp sge i32 %475, %476
  br i1 %477, label %478, label %487

478:                                              ; preds = %463
  %479 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %4, align 8
  %480 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @QIB_PERMISSIVE_LID, align 4
  %483 = icmp ne i32 %481, %482
  br i1 %483, label %484, label %487

484:                                              ; preds = %478
  %485 = load i32, i32* @QIB_MULTICAST_QPN, align 4
  %486 = call i8* @cpu_to_be32(i32 %485)
  br label %495

487:                                              ; preds = %478, %463
  %488 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %489 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %489, i32 0, i32 2
  %491 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = call i8* @cpu_to_be32(i32 %493)
  br label %495

495:                                              ; preds = %487, %484
  %496 = phi i8* [ %486, %484 ], [ %494, %487 ]
  %497 = load %struct.qib_other_headers*, %struct.qib_other_headers** %3, align 8
  %498 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %497, i32 0, i32 1
  %499 = load i8**, i8*** %498, align 8
  %500 = getelementptr inbounds i8*, i8** %499, i64 1
  store i8* %496, i8** %500, align 8
  %501 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %502 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %501, i32 0, i32 11
  %503 = load i32, i32* %502, align 8
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %502, align 8
  %505 = load i32, i32* @QIB_PSN_MASK, align 4
  %506 = and i32 %503, %505
  %507 = call i8* @cpu_to_be32(i32 %506)
  %508 = load %struct.qib_other_headers*, %struct.qib_other_headers** %3, align 8
  %509 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %508, i32 0, i32 1
  %510 = load i8**, i8*** %509, align 8
  %511 = getelementptr inbounds i8*, i8** %510, i64 2
  store i8* %507, i8** %511, align 8
  %512 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %513 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %512, i32 0, i32 1
  %514 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = icmp slt i32 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %495
  %520 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %521 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %520, i32 0, i32 7
  %522 = load i32, i32* %521, align 8
  br label %530

523:                                              ; preds = %495
  %524 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %525 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %524, i32 0, i32 1
  %526 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %525, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %526, i32 0, i32 0
  %528 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %527, i32 0, i32 1
  %529 = load i32, i32* %528, align 4
  br label %530

530:                                              ; preds = %523, %519
  %531 = phi i32 [ %522, %519 ], [ %529, %523 ]
  %532 = call i8* @cpu_to_be32(i32 %531)
  %533 = load %struct.qib_other_headers*, %struct.qib_other_headers** %3, align 8
  %534 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %533, i32 0, i32 0
  %535 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %534, i32 0, i32 0
  %536 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %535, i32 0, i32 0
  %537 = load i8**, i8*** %536, align 8
  %538 = getelementptr inbounds i8*, i8** %537, i64 0
  store i8* %532, i8** %538, align 8
  %539 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %540 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %539, i32 0, i32 10
  %541 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %540, i32 0, i32 1
  %542 = load i32, i32* %541, align 8
  %543 = call i8* @cpu_to_be32(i32 %542)
  %544 = load %struct.qib_other_headers*, %struct.qib_other_headers** %3, align 8
  %545 = getelementptr inbounds %struct.qib_other_headers, %struct.qib_other_headers* %544, i32 0, i32 0
  %546 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %545, i32 0, i32 0
  %547 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %546, i32 0, i32 0
  %548 = load i8**, i8*** %547, align 8
  %549 = getelementptr inbounds i8*, i8** %548, i64 1
  store i8* %543, i8** %549, align 8
  br label %550

550:                                              ; preds = %530, %172, %60
  store i32 1, i32* %14, align 4
  br label %558

551:                                              ; preds = %166, %80, %54, %48, %39
  %552 = load i32, i32* @QIB_S_BUSY, align 4
  %553 = xor i32 %552, -1
  %554 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %555 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %554, i32 0, i32 9
  %556 = load i32, i32* %555, align 8
  %557 = and i32 %556, %553
  store i32 %557, i32* %555, align 8
  br label %558

558:                                              ; preds = %551, %550
  %559 = load %struct.qib_qp*, %struct.qib_qp** %2, align 8
  %560 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %559, i32 0, i32 8
  %561 = load i64, i64* %8, align 8
  %562 = call i32 @spin_unlock_irqrestore(i32* %560, i64 %561)
  %563 = load i32, i32* %14, align 4
  ret i32 %563
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i32) #1

declare dso_local i32 @qib_send_complete(%struct.qib_qp*, %struct.qib_swqe*, i32) #1

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local %struct.TYPE_15__* @to_iah(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_ud_loopback(%struct.qib_qp*, %struct.qib_swqe*) #1

declare dso_local i64 @qib_make_grh(%struct.qib_ibport*, i32*, i32*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @qib_get_pkey(%struct.qib_ibport*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
