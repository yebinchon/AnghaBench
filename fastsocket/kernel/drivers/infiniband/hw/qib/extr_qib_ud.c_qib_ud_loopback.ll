; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ud.c_qib_ud_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_ud.c_qib_ud_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_17__, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64, i32, i32, i32 }
%struct.qib_swqe = type { i64, %struct.TYPE_20__, %struct.qib_sge* }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_19__, i64, %struct.TYPE_13__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.qib_sge = type { i64, i64, i64, i64, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__**, i64 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.qib_ibport = type { i32, i32, i32 }
%struct.qib_pportdata = type { i32, i32 }
%struct.ib_ah_attr = type { i32, i64, i32, i32, i32 }
%struct.qib_sge_state = type { %struct.qib_sge*, i64, %struct.qib_sge }
%struct.ib_wc = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_17__*, i32, i32, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.ib_ah_attr }

@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_PROCESS_RECV_OK = common dso_local global i32 0, align 4
@IB_NOTICE_TRAP_BAD_PKEY = common dso_local global i32 0, align 4
@IB_NOTICE_TRAP_BAD_QKEY = common dso_local global i32 0, align 4
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_WC_WITH_IMM = common dso_local global i32 0, align 4
@QIB_R_REUSE_SGE = common dso_local global i32 0, align 4
@IB_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@QIB_SEGSZ = common dso_local global i64 0, align 8
@QIB_R_WRID_VALID = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_QPT_GSI = common dso_local global i64 0, align 8
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_qp*, %struct.qib_swqe*)* @qib_ud_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_ud_loopback(%struct.qib_qp* %0, %struct.qib_swqe* %1) #0 {
  %3 = alloca %struct.qib_qp*, align 8
  %4 = alloca %struct.qib_swqe*, align 8
  %5 = alloca %struct.qib_ibport*, align 8
  %6 = alloca %struct.qib_pportdata*, align 8
  %7 = alloca %struct.qib_qp*, align 8
  %8 = alloca %struct.ib_ah_attr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.qib_sge_state, align 8
  %11 = alloca %struct.qib_sge*, align 8
  %12 = alloca %struct.ib_wc, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %3, align 8
  store %struct.qib_swqe* %1, %struct.qib_swqe** %4, align 8
  %21 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %22 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %26 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.qib_ibport* @to_iport(i32 %24, i32 %27)
  store %struct.qib_ibport* %28, %struct.qib_ibport** %5, align 8
  %29 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %30 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %31 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.qib_qp* @qib_lookup_qpn(%struct.qib_ibport* %29, i32 %35)
  store %struct.qib_qp* %36, %struct.qib_qp** %7, align 8
  %37 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %38 = icmp ne %struct.qib_qp* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %2
  %40 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %41 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %594

44:                                               ; preds = %2
  %45 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %46 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %50 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %49, i32 0, i32 7
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %48, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %44
  %55 = load i32*, i32** @ib_qib_state_ops, align 8
  %56 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %57 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @QIB_PROCESS_RECV_OK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %54, %44
  %65 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %66 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %585

69:                                               ; preds = %54
  %70 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %71 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call %struct.TYPE_11__* @to_iah(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store %struct.ib_ah_attr* %77, %struct.ib_ah_attr** %8, align 8
  %78 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %79 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %78)
  store %struct.qib_pportdata* %79, %struct.qib_pportdata** %6, align 8
  %80 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %81 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %80, i32 0, i32 7
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %141

85:                                               ; preds = %69
  %86 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %87 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %88 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @qib_get_pkey(%struct.qib_ibport* %86, i32 %89)
  store i64 %90, i64* %14, align 8
  %91 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %92 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %93 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @qib_get_pkey(%struct.qib_ibport* %91, i32 %94)
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %14, align 8
  %97 = load i64, i64* %15, align 8
  %98 = call i32 @qib_pkey_ok(i64 %96, i64 %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %85
  %105 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %106 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %109 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %112 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 1, %113
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %110, %115
  %117 = or i32 %107, %116
  %118 = sext i32 %117 to i64
  store i64 %118, i64* %16, align 8
  %119 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %120 = load i32, i32* @IB_NOTICE_TRAP_BAD_PKEY, align 4
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %123 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %126 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %125, i32 0, i32 7
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %130 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %129, i32 0, i32 7
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i64, i64* %16, align 8
  %134 = call i32 @cpu_to_be16(i64 %133)
  %135 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %136 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @cpu_to_be16(i64 %137)
  %139 = call i32 @qib_bad_pqkey(%struct.qib_ibport* %119, i32 %120, i64 %121, i32 %124, i32 %128, i32 %132, i32 %134, i32 %138)
  br label %585

140:                                              ; preds = %85
  br label %141

141:                                              ; preds = %140, %69
  %142 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %143 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %214

147:                                              ; preds = %141
  %148 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %149 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %158 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  br label %167

160:                                              ; preds = %147
  %161 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %162 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  br label %167

167:                                              ; preds = %160, %156
  %168 = phi i64 [ %159, %156 ], [ %166, %160 ]
  store i64 %168, i64* %17, align 8
  %169 = load i64, i64* %17, align 8
  %170 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %171 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %169, %172
  %174 = zext i1 %173 to i32
  %175 = call i64 @unlikely(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %213

177:                                              ; preds = %167
  %178 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %179 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %182 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %185 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = shl i32 1, %186
  %188 = sub nsw i32 %187, 1
  %189 = and i32 %183, %188
  %190 = or i32 %180, %189
  %191 = sext i32 %190 to i64
  store i64 %191, i64* %18, align 8
  %192 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %193 = load i32, i32* @IB_NOTICE_TRAP_BAD_QKEY, align 4
  %194 = load i64, i64* %17, align 8
  %195 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %196 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %199 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %203 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 8
  %206 = load i64, i64* %18, align 8
  %207 = call i32 @cpu_to_be16(i64 %206)
  %208 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %209 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @cpu_to_be16(i64 %210)
  %212 = call i32 @qib_bad_pqkey(%struct.qib_ibport* %192, i32 %193, i64 %194, i32 %197, i32 %201, i32 %205, i32 %207, i32 %211)
  br label %585

213:                                              ; preds = %167
  br label %214

214:                                              ; preds = %213, %141
  %215 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %216 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  store i64 %217, i64* %13, align 8
  %218 = call i32 @memset(%struct.ib_wc* %12, i32 0, i32 64)
  %219 = load i64, i64* %13, align 8
  %220 = add i64 %219, 4
  %221 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 0
  store i64 %220, i64* %221, align 8
  %222 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %223 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %238

228:                                              ; preds = %214
  %229 = load i32, i32* @IB_WC_WITH_IMM, align 4
  %230 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 11
  store i32 %229, i32* %230, align 4
  %231 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %232 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 12
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 8
  br label %238

238:                                              ; preds = %228, %214
  %239 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %240 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %239, i32 0, i32 6
  %241 = load i64, i64* %9, align 8
  %242 = call i32 @spin_lock_irqsave(i32* %240, i64 %241)
  %243 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %244 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @QIB_R_REUSE_SGE, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %256

249:                                              ; preds = %238
  %250 = load i32, i32* @QIB_R_REUSE_SGE, align 4
  %251 = xor i32 %250, -1
  %252 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %253 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 8
  br label %281

256:                                              ; preds = %238
  %257 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %258 = call i32 @qib_get_rwqe(%struct.qib_qp* %257, i32 0)
  store i32 %258, i32* %19, align 4
  %259 = load i32, i32* %19, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %256
  %262 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %263 = load i32, i32* @IB_WC_LOC_QP_OP_ERR, align 4
  %264 = call i32 @qib_rc_error(%struct.qib_qp* %262, i32 %263)
  br label %580

265:                                              ; preds = %256
  %266 = load i32, i32* %19, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %280, label %268

268:                                              ; preds = %265
  %269 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %270 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %268
  %275 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %276 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %274, %268
  br label %580

280:                                              ; preds = %265
  br label %281

281:                                              ; preds = %280, %249
  %282 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %285 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = icmp sgt i64 %283, %286
  %288 = zext i1 %287 to i32
  %289 = call i64 @unlikely(i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %281
  %292 = load i32, i32* @QIB_R_REUSE_SGE, align 4
  %293 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %294 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %298 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %298, align 4
  br label %580

301:                                              ; preds = %281
  %302 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %303 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @IB_AH_GRH, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %318

308:                                              ; preds = %301
  %309 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %310 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %309, i32 0, i32 11
  %311 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %312 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %311, i32 0, i32 4
  %313 = call i32 @qib_copy_sge(i32* %310, i32* %312, i64 4, i32 1)
  %314 = load i32, i32* @IB_WC_GRH, align 4
  %315 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 11
  %316 = load i32, i32* %315, align 4
  %317 = or i32 %316, %314
  store i32 %317, i32* %315, align 4
  br label %322

318:                                              ; preds = %301
  %319 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %320 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %319, i32 0, i32 11
  %321 = call i32 @qib_skip_sge(i32* %320, i32 4, i32 1)
  br label %322

322:                                              ; preds = %318, %308
  %323 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %324 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %323, i32 0, i32 2
  %325 = load %struct.qib_sge*, %struct.qib_sge** %324, align 8
  %326 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %325, i64 1
  %327 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %10, i32 0, i32 0
  store %struct.qib_sge* %326, %struct.qib_sge** %327, align 8
  %328 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %10, i32 0, i32 2
  %329 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %330 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %329, i32 0, i32 2
  %331 = load %struct.qib_sge*, %struct.qib_sge** %330, align 8
  %332 = bitcast %struct.qib_sge* %328 to i8*
  %333 = bitcast %struct.qib_sge* %331 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %332, i8* align 8 %333, i64 48, i1 false)
  %334 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %335 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %10, i32 0, i32 1
  store i64 %337, i64* %338, align 8
  %339 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %10, i32 0, i32 2
  store %struct.qib_sge* %339, %struct.qib_sge** %11, align 8
  br label %340

340:                                              ; preds = %482, %322
  %341 = load i64, i64* %13, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %486

343:                                              ; preds = %340
  %344 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %345 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  store i64 %346, i64* %20, align 8
  %347 = load i64, i64* %20, align 8
  %348 = load i64, i64* %13, align 8
  %349 = icmp sgt i64 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %343
  %351 = load i64, i64* %13, align 8
  store i64 %351, i64* %20, align 8
  br label %352

352:                                              ; preds = %350, %343
  %353 = load i64, i64* %20, align 8
  %354 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %355 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %354, i32 0, i32 1
  %356 = load i64, i64* %355, align 8
  %357 = icmp sgt i64 %353, %356
  br i1 %357, label %358, label %362

358:                                              ; preds = %352
  %359 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %360 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* %20, align 8
  br label %362

362:                                              ; preds = %358, %352
  %363 = load i64, i64* %20, align 8
  %364 = icmp eq i64 %363, 0
  %365 = zext i1 %364 to i32
  %366 = call i32 @BUG_ON(i32 %365)
  %367 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %368 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %367, i32 0, i32 11
  %369 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %370 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %369, i32 0, i32 5
  %371 = load i32*, i32** %370, align 8
  %372 = load i64, i64* %20, align 8
  %373 = call i32 @qib_copy_sge(i32* %368, i32* %371, i64 %372, i32 1)
  %374 = load i64, i64* %20, align 8
  %375 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %376 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %375, i32 0, i32 5
  %377 = load i32*, i32** %376, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 %374
  store i32* %378, i32** %376, align 8
  %379 = load i64, i64* %20, align 8
  %380 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %381 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = sub nsw i64 %382, %379
  store i64 %383, i64* %381, align 8
  %384 = load i64, i64* %20, align 8
  %385 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %386 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %385, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = sub nsw i64 %387, %384
  store i64 %388, i64* %386, align 8
  %389 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %390 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %406

393:                                              ; preds = %362
  %394 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %10, i32 0, i32 1
  %395 = load i64, i64* %394, align 8
  %396 = add nsw i64 %395, -1
  store i64 %396, i64* %394, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %405

398:                                              ; preds = %393
  %399 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %400 = getelementptr inbounds %struct.qib_sge_state, %struct.qib_sge_state* %10, i32 0, i32 0
  %401 = load %struct.qib_sge*, %struct.qib_sge** %400, align 8
  %402 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %401, i32 1
  store %struct.qib_sge* %402, %struct.qib_sge** %400, align 8
  %403 = bitcast %struct.qib_sge* %399 to i8*
  %404 = bitcast %struct.qib_sge* %401 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %403, i8* align 8 %404, i64 48, i1 false)
  br label %405

405:                                              ; preds = %398, %393
  br label %482

406:                                              ; preds = %362
  %407 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %408 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = icmp eq i64 %409, 0
  br i1 %410, label %411, label %481

411:                                              ; preds = %406
  %412 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %413 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %412, i32 0, i32 4
  %414 = load %struct.TYPE_16__*, %struct.TYPE_16__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %414, i32 0, i32 2
  %416 = load i64, i64* %415, align 8
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %481

418:                                              ; preds = %411
  %419 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %420 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = add nsw i64 %421, 1
  store i64 %422, i64* %420, align 8
  %423 = load i64, i64* @QIB_SEGSZ, align 8
  %424 = icmp sge i64 %422, %423
  br i1 %424, label %425, label %440

425:                                              ; preds = %418
  %426 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %427 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %426, i32 0, i32 3
  %428 = load i64, i64* %427, align 8
  %429 = add nsw i64 %428, 1
  store i64 %429, i64* %427, align 8
  %430 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %431 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %430, i32 0, i32 4
  %432 = load %struct.TYPE_16__*, %struct.TYPE_16__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = icmp sge i64 %429, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %425
  br label %486

437:                                              ; preds = %425
  %438 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %439 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %438, i32 0, i32 2
  store i64 0, i64* %439, align 8
  br label %440

440:                                              ; preds = %437, %418
  %441 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %442 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %441, i32 0, i32 4
  %443 = load %struct.TYPE_16__*, %struct.TYPE_16__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %443, i32 0, i32 1
  %445 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %444, align 8
  %446 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %447 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %446, i32 0, i32 3
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %445, i64 %448
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 0
  %452 = load %struct.TYPE_14__*, %struct.TYPE_14__** %451, align 8
  %453 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %454 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %453, i32 0, i32 2
  %455 = load i64, i64* %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %452, i64 %455
  %457 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %456, i32 0, i32 1
  %458 = load i32*, i32** %457, align 8
  %459 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %460 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %459, i32 0, i32 5
  store i32* %458, i32** %460, align 8
  %461 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %462 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %461, i32 0, i32 4
  %463 = load %struct.TYPE_16__*, %struct.TYPE_16__** %462, align 8
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 1
  %465 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %464, align 8
  %466 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %467 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %466, i32 0, i32 3
  %468 = load i64, i64* %467, align 8
  %469 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %465, i64 %468
  %470 = load %struct.TYPE_15__*, %struct.TYPE_15__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %470, i32 0, i32 0
  %472 = load %struct.TYPE_14__*, %struct.TYPE_14__** %471, align 8
  %473 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %474 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %473, i32 0, i32 2
  %475 = load i64, i64* %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %472, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = load %struct.qib_sge*, %struct.qib_sge** %11, align 8
  %480 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %479, i32 0, i32 0
  store i64 %478, i64* %480, align 8
  br label %481

481:                                              ; preds = %440, %411, %406
  br label %482

482:                                              ; preds = %481, %405
  %483 = load i64, i64* %20, align 8
  %484 = load i64, i64* %13, align 8
  %485 = sub nsw i64 %484, %483
  store i64 %485, i64* %13, align 8
  br label %340

486:                                              ; preds = %436, %340
  %487 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %488 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %487, i32 0, i32 11
  %489 = call i32 @qib_put_ss(i32* %488)
  %490 = load i32, i32* @QIB_R_WRID_VALID, align 4
  %491 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %492 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %491, i32 0, i32 10
  %493 = call i32 @test_and_clear_bit(i32 %490, i32* %492)
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %496, label %495

495:                                              ; preds = %486
  br label %580

496:                                              ; preds = %486
  %497 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %498 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %497, i32 0, i32 9
  %499 = load i32, i32* %498, align 4
  %500 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 10
  store i32 %499, i32* %500, align 8
  %501 = load i32, i32* @IB_WC_SUCCESS, align 4
  %502 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 9
  store i32 %501, i32* %502, align 4
  %503 = load i32, i32* @IB_WC_RECV, align 4
  %504 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 8
  store i32 %503, i32* %504, align 8
  %505 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %506 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %505, i32 0, i32 7
  %507 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 7
  store %struct.TYPE_17__* %506, %struct.TYPE_17__** %507, align 8
  %508 = load %struct.qib_qp*, %struct.qib_qp** %3, align 8
  %509 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %508, i32 0, i32 7
  %510 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 8
  %512 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 1
  store i32 %511, i32* %512, align 8
  %513 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %514 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %513, i32 0, i32 7
  %515 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %514, i32 0, i32 0
  %516 = load i64, i64* %515, align 8
  %517 = load i64, i64* @IB_QPT_GSI, align 8
  %518 = icmp eq i64 %516, %517
  br i1 %518, label %519, label %526

519:                                              ; preds = %496
  %520 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %521 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %521, i32 0, i32 2
  %523 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 8
  br label %527

526:                                              ; preds = %496
  br label %527

527:                                              ; preds = %526, %519
  %528 = phi i32 [ %525, %519 ], [ 0, %526 ]
  %529 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 6
  store i32 %528, i32* %529, align 4
  %530 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %531 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %534 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %537 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = shl i32 1, %538
  %540 = sub nsw i32 %539, 1
  %541 = and i32 %535, %540
  %542 = or i32 %532, %541
  %543 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 2
  store i32 %542, i32* %543, align 4
  %544 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %545 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %544, i32 0, i32 3
  %546 = load i32, i32* %545, align 4
  %547 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 5
  store i32 %546, i32* %547, align 8
  %548 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %8, align 8
  %549 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %548, i32 0, i32 1
  %550 = load i64, i64* %549, align 8
  %551 = load %struct.qib_pportdata*, %struct.qib_pportdata** %6, align 8
  %552 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = shl i32 1, %553
  %555 = sub nsw i32 %554, 1
  %556 = sext i32 %555 to i64
  %557 = and i64 %550, %556
  %558 = trunc i64 %557 to i32
  %559 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 3
  store i32 %558, i32* %559, align 8
  %560 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %561 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %560, i32 0, i32 8
  %562 = load i32, i32* %561, align 8
  %563 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %12, i32 0, i32 4
  store i32 %562, i32* %563, align 4
  %564 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %565 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %564, i32 0, i32 7
  %566 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @to_icq(i32 %567)
  %569 = load %struct.qib_swqe*, %struct.qib_swqe** %4, align 8
  %570 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %570, i32 0, i32 1
  %572 = load i32, i32* %571, align 8
  %573 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %574 = and i32 %572, %573
  %575 = call i32 @qib_cq_enter(i32 %568, %struct.ib_wc* %12, i32 %574)
  %576 = load %struct.qib_ibport*, %struct.qib_ibport** %5, align 8
  %577 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %577, align 4
  br label %580

580:                                              ; preds = %527, %495, %291, %279, %261
  %581 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %582 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %581, i32 0, i32 6
  %583 = load i64, i64* %9, align 8
  %584 = call i32 @spin_unlock_irqrestore(i32* %582, i64 %583)
  br label %585

585:                                              ; preds = %580, %177, %104, %64
  %586 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %587 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %586, i32 0, i32 5
  %588 = call i64 @atomic_dec_and_test(i32* %587)
  %589 = icmp ne i64 %588, 0
  br i1 %589, label %590, label %594

590:                                              ; preds = %585
  %591 = load %struct.qib_qp*, %struct.qib_qp** %7, align 8
  %592 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %591, i32 0, i32 4
  %593 = call i32 @wake_up(i32* %592)
  br label %594

594:                                              ; preds = %39, %590, %585
  ret void
}

declare dso_local %struct.qib_ibport* @to_iport(i32, i32) #1

declare dso_local %struct.qib_qp* @qib_lookup_qpn(%struct.qib_ibport*, i32) #1

declare dso_local %struct.TYPE_11__* @to_iah(i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i64 @qib_get_pkey(%struct.qib_ibport*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qib_pkey_ok(i64, i64) #1

declare dso_local i32 @qib_bad_pqkey(%struct.qib_ibport*, i32, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_get_rwqe(%struct.qib_qp*, i32) #1

declare dso_local i32 @qib_rc_error(%struct.qib_qp*, i32) #1

declare dso_local i32 @qib_copy_sge(i32*, i32*, i64, i32) #1

declare dso_local i32 @qib_skip_sge(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @qib_put_ss(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @qib_cq_enter(i32, %struct.ib_wc*, i32) #1

declare dso_local i32 @to_icq(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
