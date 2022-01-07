; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ud.c_ipath_make_ud_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_ud.c_ipath_make_ud_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_25__, i32, i32, %struct.TYPE_22__, %struct.TYPE_18__, %struct.ipath_swqe*, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_25__ = type { i64, i32, i32 }
%struct.TYPE_22__ = type { i8**, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.ipath_other_headers, %struct.TYPE_19__ }
%struct.ipath_other_headers = type { %struct.TYPE_24__, i8** }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i8**, i32 }
%struct.TYPE_19__ = type { %struct.ipath_other_headers, i32 }
%struct.TYPE_18__ = type { i32, i32*, i32 }
%struct.ipath_swqe = type { i32, %struct.TYPE_15__, i32* }
%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_14__, %struct.TYPE_21__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.ipath_ibdev = type { %struct.TYPE_17__*, i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.ib_ah_attr = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.ib_ah_attr }

@ib_ipath_state_ops = common dso_local global i32* null, align 8
@IPATH_PROCESS_NEXT_SEND_OK = common dso_local global i32 0, align 4
@IPATH_FLUSH_SEND = common dso_local global i32 0, align 4
@IPATH_S_WAIT_DMA = common dso_local global i32 0, align 4
@IB_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IPATH_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@IPATH_PERMISSIVE_LID = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_AH_GRH = common dso_local global i32 0, align 4
@IPATH_LRH_GRH = common dso_local global i32 0, align 4
@IPATH_LRH_BTH = common dso_local global i32 0, align 4
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4
@IB_QPT_SMI = common dso_local global i64 0, align 8
@SIZE_OF_CRC = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i8* null, align 8
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@IPATH_DEFAULT_P_KEY = common dso_local global i32 0, align 4
@IPATH_MULTICAST_QPN = common dso_local global i32 0, align 4
@IPATH_PSN_MASK = common dso_local global i32 0, align 4
@IPATH_S_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipath_make_ud_req(%struct.ipath_qp* %0) #0 {
  %2 = alloca %struct.ipath_qp*, align 8
  %3 = alloca %struct.ipath_ibdev*, align 8
  %4 = alloca %struct.ipath_other_headers*, align 8
  %5 = alloca %struct.ib_ah_attr*, align 8
  %6 = alloca %struct.ipath_swqe*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ipath_qp* %0, %struct.ipath_qp** %2, align 8
  %15 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %16 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.ipath_ibdev* @to_idev(i32 %18)
  store %struct.ipath_ibdev* %19, %struct.ipath_ibdev** %3, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %21 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %20, i32 0, i32 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32*, i32** @ib_ipath_state_ops, align 8
  %25 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %26 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IPATH_PROCESS_NEXT_SEND_OK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %75, label %33

33:                                               ; preds = %1
  %34 = load i32*, i32** @ib_ipath_state_ops, align 8
  %35 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %36 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IPATH_FLUSH_SEND, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %33
  br label %511

44:                                               ; preds = %33
  %45 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %46 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %49 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %511

53:                                               ; preds = %44
  %54 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %55 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %54, i32 0, i32 18
  %56 = call i64 @atomic_read(i32* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* @IPATH_S_WAIT_DMA, align 4
  %60 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %61 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %511

64:                                               ; preds = %53
  %65 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %66 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %67 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = call %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp* %65, i32 %69)
  store %struct.ipath_swqe* %70, %struct.ipath_swqe** %6, align 8
  %71 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %72 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %73 = load i32, i32* @IB_WC_WR_FLUSH_ERR, align 4
  %74 = call i32 @ipath_send_complete(%struct.ipath_qp* %71, %struct.ipath_swqe* %72, i32 %73)
  br label %510

75:                                               ; preds = %1
  %76 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %77 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %81 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %511

85:                                               ; preds = %75
  %86 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %87 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %88 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp* %86, i32 %89)
  store %struct.ipath_swqe* %90, %struct.ipath_swqe** %6, align 8
  %91 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %92 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %97 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %85
  store i32 0, i32* %14, align 4
  br label %101

101:                                              ; preds = %100, %85
  %102 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %103 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call %struct.TYPE_16__* @to_iah(i32 %107)
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  store %struct.ib_ah_attr* %109, %struct.ib_ah_attr** %5, align 8
  %110 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %111 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IPATH_MULTICAST_LID_BASE, align 4
  %114 = icmp sge i32 %112, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %101
  %116 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %117 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IPATH_PERMISSIVE_LID, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %123 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %131

126:                                              ; preds = %115
  %127 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %128 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %126, %121
  br label %190

132:                                              ; preds = %101
  %133 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %134 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 8
  %137 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %138 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %141 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %140, i32 0, i32 0
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = shl i32 1, %144
  %146 = sub nsw i32 %145, 1
  %147 = xor i32 %146, -1
  %148 = and i32 %139, %147
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %151 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %150, i32 0, i32 0
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %149, %154
  %156 = zext i1 %155 to i32
  %157 = call i64 @unlikely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %189

159:                                              ; preds = %132
  %160 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %161 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %160, i32 0, i32 18
  %162 = call i64 @atomic_read(i32* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = load i32, i32* @IPATH_S_WAIT_DMA, align 4
  %166 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %167 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %166, i32 0, i32 9
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  br label %511

170:                                              ; preds = %159
  %171 = load i32, i32* %14, align 4
  %172 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %173 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  %174 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %175 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %174, i32 0, i32 8
  %176 = load i64, i64* %7, align 8
  %177 = call i32 @spin_unlock_irqrestore(i32* %175, i64 %176)
  %178 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %179 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %180 = call i32 @ipath_ud_loopback(%struct.ipath_qp* %178, %struct.ipath_swqe* %179)
  %181 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %182 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %181, i32 0, i32 8
  %183 = load i64, i64* %7, align 8
  %184 = call i32 @spin_lock_irqsave(i32* %182, i64 %183)
  %185 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %186 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %187 = load i32, i32* @IB_WC_SUCCESS, align 4
  %188 = call i32 @ipath_send_complete(%struct.ipath_qp* %185, %struct.ipath_swqe* %186, i32 %187)
  br label %510

189:                                              ; preds = %132
  br label %190

190:                                              ; preds = %189, %131
  %191 = load i32, i32* %14, align 4
  %192 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %193 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 8
  %194 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %195 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 0, %196
  %198 = and i32 %197, 3
  store i32 %198, i32* %9, align 4
  %199 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %200 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %201, %202
  %204 = ashr i32 %203, 2
  store i32 %204, i32* %8, align 4
  %205 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %206 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %205, i32 0, i32 5
  store i32 7, i32* %206, align 8
  %207 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %208 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %211 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 4
  %212 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %213 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %212, i32 0, i32 14
  %214 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %215 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %214, i32 0, i32 17
  store %struct.TYPE_18__* %213, %struct.TYPE_18__** %215, align 8
  %216 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %217 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %220 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %219, i32 0, i32 16
  store i32 %218, i32* %220, align 8
  %221 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %222 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %223 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %222, i32 0, i32 15
  store %struct.ipath_swqe* %221, %struct.ipath_swqe** %223, align 8
  %224 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %225 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %230 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %229, i32 0, i32 14
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 2
  store i32 %228, i32* %231, align 8
  %232 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %233 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  %236 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %237 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %236, i32 0, i32 14
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 1
  store i32* %235, i32** %238, align 8
  %239 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %240 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %244 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %243, i32 0, i32 14
  %245 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %244, i32 0, i32 0
  store i32 %242, i32* %245, align 8
  %246 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %247 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @IB_AH_GRH, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %278

252:                                              ; preds = %190
  %253 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %254 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %255 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %254, i32 0, i32 13
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 1
  %259 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %260 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %259, i32 0, i32 4
  %261 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %262 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = call i64 @ipath_make_grh(%struct.ipath_ibdev* %253, i32* %258, i32* %260, i32 %263, i32 %264)
  %266 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %267 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %266, i32 0, i32 5
  %268 = load i32, i32* %267, align 8
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, %265
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %267, align 8
  %272 = load i32, i32* @IPATH_LRH_GRH, align 4
  store i32 %272, i32* %11, align 4
  %273 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %274 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %273, i32 0, i32 13
  %275 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %276, i32 0, i32 0
  store %struct.ipath_other_headers* %277, %struct.ipath_other_headers** %4, align 8
  br label %284

278:                                              ; preds = %190
  %279 = load i32, i32* @IPATH_LRH_BTH, align 4
  store i32 %279, i32* %11, align 4
  %280 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %281 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %280, i32 0, i32 13
  %282 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 0
  store %struct.ipath_other_headers* %283, %struct.ipath_other_headers** %4, align 8
  br label %284

284:                                              ; preds = %278, %252
  %285 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %286 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %307

291:                                              ; preds = %284
  %292 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %293 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 8
  %296 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %297 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %297, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.ipath_other_headers*, %struct.ipath_other_headers** %4, align 8
  %302 = getelementptr inbounds %struct.ipath_other_headers, %struct.ipath_other_headers* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %303, i32 0, i32 1
  store i32 %300, i32* %304, align 8
  %305 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE, align 4
  %306 = shl i32 %305, 24
  store i32 %306, i32* %10, align 4
  br label %310

307:                                              ; preds = %284
  %308 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %309 = shl i32 %308, 24
  store i32 %309, i32* %10, align 4
  br label %310

310:                                              ; preds = %307, %291
  %311 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %312 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = shl i32 %313, 4
  %315 = load i32, i32* %11, align 4
  %316 = or i32 %315, %314
  store i32 %316, i32* %11, align 4
  %317 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %318 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %317, i32 0, i32 10
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @IB_QPT_SMI, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %326

323:                                              ; preds = %310
  %324 = load i32, i32* %11, align 4
  %325 = or i32 %324, 61440
  store i32 %325, i32* %11, align 4
  br label %326

326:                                              ; preds = %323, %310
  %327 = load i32, i32* %11, align 4
  %328 = call i8* @cpu_to_be16(i32 %327)
  %329 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %330 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %329, i32 0, i32 13
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 0
  %332 = load i8**, i8*** %331, align 8
  %333 = getelementptr inbounds i8*, i8** %332, i64 0
  store i8* %328, i8** %333, align 8
  %334 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %335 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 4
  %337 = call i8* @cpu_to_be16(i32 %336)
  %338 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %339 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %338, i32 0, i32 13
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 0
  %341 = load i8**, i8*** %340, align 8
  %342 = getelementptr inbounds i8*, i8** %341, i64 1
  store i8* %337, i8** %342, align 8
  %343 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %344 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %8, align 4
  %347 = add nsw i32 %345, %346
  %348 = load i32, i32* @SIZE_OF_CRC, align 4
  %349 = add nsw i32 %347, %348
  %350 = call i8* @cpu_to_be16(i32 %349)
  %351 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %352 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %351, i32 0, i32 13
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 0
  %354 = load i8**, i8*** %353, align 8
  %355 = getelementptr inbounds i8*, i8** %354, i64 2
  store i8* %350, i8** %355, align 8
  %356 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %357 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %356, i32 0, i32 0
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  store i32 %360, i32* %12, align 4
  %361 = load i32, i32* %12, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %384

363:                                              ; preds = %326
  %364 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %365 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %368 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %367, i32 0, i32 0
  %369 = load %struct.TYPE_17__*, %struct.TYPE_17__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = shl i32 1, %371
  %373 = sub nsw i32 %372, 1
  %374 = and i32 %366, %373
  %375 = load i32, i32* %12, align 4
  %376 = or i32 %375, %374
  store i32 %376, i32* %12, align 4
  %377 = load i32, i32* %12, align 4
  %378 = call i8* @cpu_to_be16(i32 %377)
  %379 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %380 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %379, i32 0, i32 13
  %381 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i32 0, i32 0
  %382 = load i8**, i8*** %381, align 8
  %383 = getelementptr inbounds i8*, i8** %382, i64 3
  store i8* %378, i8** %383, align 8
  br label %391

384:                                              ; preds = %326
  %385 = load i8*, i8** @IB_LID_PERMISSIVE, align 8
  %386 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %387 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %386, i32 0, i32 13
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 0
  %389 = load i8**, i8*** %388, align 8
  %390 = getelementptr inbounds i8*, i8** %389, i64 3
  store i8* %385, i8** %390, align 8
  br label %391

391:                                              ; preds = %384, %363
  %392 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %393 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %392, i32 0, i32 1
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %397 = and i32 %395, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %402

399:                                              ; preds = %391
  %400 = load i32, i32* %10, align 4
  %401 = or i32 %400, 8388608
  store i32 %401, i32* %10, align 4
  br label %402

402:                                              ; preds = %399, %391
  %403 = load i32, i32* %9, align 4
  %404 = shl i32 %403, 20
  %405 = load i32, i32* %10, align 4
  %406 = or i32 %405, %404
  store i32 %406, i32* %10, align 4
  %407 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %408 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %407, i32 0, i32 10
  %409 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @IB_QPT_SMI, align 8
  %412 = icmp eq i64 %410, %411
  br i1 %412, label %413, label %415

413:                                              ; preds = %402
  %414 = load i32, i32* @IPATH_DEFAULT_P_KEY, align 4
  br label %423

415:                                              ; preds = %402
  %416 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %3, align 8
  %417 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %416, i32 0, i32 0
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %417, align 8
  %419 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %420 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %419, i32 0, i32 12
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @ipath_get_pkey(%struct.TYPE_17__* %418, i32 %421)
  br label %423

423:                                              ; preds = %415, %413
  %424 = phi i32 [ %414, %413 ], [ %422, %415 ]
  %425 = load i32, i32* %10, align 4
  %426 = or i32 %425, %424
  store i32 %426, i32* %10, align 4
  %427 = load i32, i32* %10, align 4
  %428 = call i8* @cpu_to_be32(i32 %427)
  %429 = load %struct.ipath_other_headers*, %struct.ipath_other_headers** %4, align 8
  %430 = getelementptr inbounds %struct.ipath_other_headers, %struct.ipath_other_headers* %429, i32 0, i32 1
  %431 = load i8**, i8*** %430, align 8
  %432 = getelementptr inbounds i8*, i8** %431, i64 0
  store i8* %428, i8** %432, align 8
  %433 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %434 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @IPATH_MULTICAST_LID_BASE, align 4
  %437 = icmp sge i32 %435, %436
  br i1 %437, label %438, label %447

438:                                              ; preds = %423
  %439 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %5, align 8
  %440 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @IPATH_PERMISSIVE_LID, align 4
  %443 = icmp ne i32 %441, %442
  br i1 %443, label %444, label %447

444:                                              ; preds = %438
  %445 = load i32, i32* @IPATH_MULTICAST_QPN, align 4
  %446 = call i8* @cpu_to_be32(i32 %445)
  br label %455

447:                                              ; preds = %438, %423
  %448 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %449 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %449, i32 0, i32 2
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i8* @cpu_to_be32(i32 %453)
  br label %455

455:                                              ; preds = %447, %444
  %456 = phi i8* [ %446, %444 ], [ %454, %447 ]
  %457 = load %struct.ipath_other_headers*, %struct.ipath_other_headers** %4, align 8
  %458 = getelementptr inbounds %struct.ipath_other_headers, %struct.ipath_other_headers* %457, i32 0, i32 1
  %459 = load i8**, i8*** %458, align 8
  %460 = getelementptr inbounds i8*, i8** %459, i64 1
  store i8* %456, i8** %460, align 8
  %461 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %462 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %461, i32 0, i32 11
  %463 = load i32, i32* %462, align 8
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %462, align 8
  %465 = load i32, i32* @IPATH_PSN_MASK, align 4
  %466 = and i32 %463, %465
  %467 = call i8* @cpu_to_be32(i32 %466)
  %468 = load %struct.ipath_other_headers*, %struct.ipath_other_headers** %4, align 8
  %469 = getelementptr inbounds %struct.ipath_other_headers, %struct.ipath_other_headers* %468, i32 0, i32 1
  %470 = load i8**, i8*** %469, align 8
  %471 = getelementptr inbounds i8*, i8** %470, i64 2
  store i8* %467, i8** %471, align 8
  %472 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %473 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %472, i32 0, i32 1
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %473, i32 0, i32 2
  %475 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = icmp slt i32 %477, 0
  br i1 %478, label %479, label %483

479:                                              ; preds = %455
  %480 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %481 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %480, i32 0, i32 7
  %482 = load i32, i32* %481, align 8
  br label %490

483:                                              ; preds = %455
  %484 = load %struct.ipath_swqe*, %struct.ipath_swqe** %6, align 8
  %485 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %484, i32 0, i32 1
  %486 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %485, i32 0, i32 2
  %487 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %486, i32 0, i32 0
  %488 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  br label %490

490:                                              ; preds = %483, %479
  %491 = phi i32 [ %482, %479 ], [ %489, %483 ]
  %492 = call i8* @cpu_to_be32(i32 %491)
  %493 = load %struct.ipath_other_headers*, %struct.ipath_other_headers** %4, align 8
  %494 = getelementptr inbounds %struct.ipath_other_headers, %struct.ipath_other_headers* %493, i32 0, i32 0
  %495 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %495, i32 0, i32 0
  %497 = load i8**, i8*** %496, align 8
  %498 = getelementptr inbounds i8*, i8** %497, i64 0
  store i8* %492, i8** %498, align 8
  %499 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %500 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %499, i32 0, i32 10
  %501 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %500, i32 0, i32 1
  %502 = load i32, i32* %501, align 8
  %503 = call i8* @cpu_to_be32(i32 %502)
  %504 = load %struct.ipath_other_headers*, %struct.ipath_other_headers** %4, align 8
  %505 = getelementptr inbounds %struct.ipath_other_headers, %struct.ipath_other_headers* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %505, i32 0, i32 0
  %507 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %506, i32 0, i32 0
  %508 = load i8**, i8*** %507, align 8
  %509 = getelementptr inbounds i8*, i8** %508, i64 1
  store i8* %503, i8** %509, align 8
  br label %510

510:                                              ; preds = %490, %170, %64
  store i32 1, i32* %13, align 4
  br label %518

511:                                              ; preds = %164, %84, %58, %52, %43
  %512 = load i32, i32* @IPATH_S_BUSY, align 4
  %513 = xor i32 %512, -1
  %514 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %515 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %514, i32 0, i32 9
  %516 = load i32, i32* %515, align 8
  %517 = and i32 %516, %513
  store i32 %517, i32* %515, align 8
  br label %518

518:                                              ; preds = %511, %510
  %519 = load %struct.ipath_qp*, %struct.ipath_qp** %2, align 8
  %520 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %519, i32 0, i32 8
  %521 = load i64, i64* %7, align 8
  %522 = call i32 @spin_unlock_irqrestore(i32* %520, i64 %521)
  %523 = load i32, i32* %13, align 4
  ret i32 %523
}

declare dso_local %struct.ipath_ibdev* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp*, i32) #1

declare dso_local i32 @ipath_send_complete(%struct.ipath_qp*, %struct.ipath_swqe*, i32) #1

declare dso_local %struct.TYPE_16__* @to_iah(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipath_ud_loopback(%struct.ipath_qp*, %struct.ipath_swqe*) #1

declare dso_local i64 @ipath_make_grh(%struct.ipath_ibdev*, i32*, i32*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ipath_get_pkey(%struct.TYPE_17__*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
