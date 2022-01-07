; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_post_one_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_verbs.c_qib_post_one_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_qp = type { i64, i32, i64, i64, i64, i32, i32, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.ib_send_wr = type { i32, i64, i32, %struct.TYPE_11__, %struct.TYPE_17__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.qib_swqe = type { i32, %struct.qib_sge*, i64, %struct.ib_send_wr }
%struct.qib_sge = type { i32 }
%struct.qib_lkey_table = type { i32 }
%struct.qib_pd = type { i32 }
%struct.TYPE_13__ = type { %struct.qib_lkey_table }
%struct.TYPE_18__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@ib_qib_state_ops = common dso_local global i32* null, align 8
@QIB_POST_SEND_OK = common dso_local global i32 0, align 4
@IB_WR_FAST_REG_MR = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_WR_RDMA_READ = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_WR_SEND = common dso_local global i64 0, align 8
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i32 0, align 4
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_qp*, %struct.ib_send_wr*, i32*)* @qib_post_one_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_post_one_send(%struct.qib_qp* %0, %struct.ib_send_wr* %1, i32* %2) #0 {
  %4 = alloca %struct.qib_qp*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qib_swqe*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.qib_lkey_table*, align 8
  %15 = alloca %struct.qib_pd*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.qib_sge*, align 8
  store %struct.qib_qp* %0, %struct.qib_qp** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %20 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %19, i32 0, i32 6
  %21 = load i64, i64* %13, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32*, i32** @ib_qib_state_ops, align 8
  %24 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %25 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @QIB_POST_SEND_OK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %364

37:                                               ; preds = %3
  %38 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %39 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %42 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %364

46:                                               ; preds = %37
  %47 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %48 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @IB_WR_FAST_REG_MR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %54 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %55 = call i64 @qib_fast_reg_mr(%struct.qib_qp* %53, %struct.ib_send_wr* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %364

58:                                               ; preds = %52
  br label %167

59:                                               ; preds = %46
  %60 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %61 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IB_QPT_UC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %68 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %72 = icmp uge i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %364

74:                                               ; preds = %66
  br label %166

75:                                               ; preds = %59
  %76 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %77 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %76, i32 0, i32 7
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IB_QPT_RC, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %75
  %83 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %84 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IB_WR_SEND, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %90 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %364

95:                                               ; preds = %88, %82
  %96 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %97 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %101 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %99, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %364

109:                                              ; preds = %95
  br label %165

110:                                              ; preds = %75
  %111 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %112 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = trunc i64 %113 to i32
  %115 = load i32, i32* @IB_WR_ATOMIC_FETCH_AND_ADD, align 4
  %116 = icmp ugt i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %364

118:                                              ; preds = %110
  %119 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %120 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %123 = icmp sge i64 %121, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %118
  %125 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %126 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %148, label %129

129:                                              ; preds = %124
  %130 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %131 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %130, i32 0, i32 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i64 0
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp ult i64 %136, 4
  br i1 %137, label %148, label %138

138:                                              ; preds = %129
  %139 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %140 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %139, i32 0, i32 4
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i64 0
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = and i64 %145, 3
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138, %129, %124
  br label %364

149:                                              ; preds = %138, %118
  %150 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %151 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %154 = zext i32 %153 to i64
  %155 = icmp sge i64 %152, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %149
  %157 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %158 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %156
  br label %364

162:                                              ; preds = %156, %149
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164, %109
  br label %166

166:                                              ; preds = %165, %74
  br label %167

167:                                              ; preds = %166, %58
  %168 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %169 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %8, align 8
  %172 = load i64, i64* %8, align 8
  %173 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %174 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp sge i64 %172, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %167
  store i64 0, i64* %8, align 8
  br label %178

178:                                              ; preds = %177, %167
  %179 = load i64, i64* %8, align 8
  %180 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %181 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = icmp eq i64 %179, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %178
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = sub nsw i32 0, %185
  store i32 %186, i32* %12, align 4
  br label %367

187:                                              ; preds = %178
  %188 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %189 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call %struct.TYPE_13__* @to_idev(i32 %191)
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  store %struct.qib_lkey_table* %193, %struct.qib_lkey_table** %14, align 8
  %194 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %195 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %194, i32 0, i32 7
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call %struct.qib_pd* @to_ipd(i32 %197)
  store %struct.qib_pd* %198, %struct.qib_pd** %15, align 8
  %199 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %200 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %201 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = call %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp* %199, i64 %202)
  store %struct.qib_swqe* %203, %struct.qib_swqe** %7, align 8
  %204 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %205 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %204, i32 0, i32 3
  %206 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %207 = bitcast %struct.ib_send_wr* %205 to i8*
  %208 = bitcast %struct.ib_send_wr* %206 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %207, i8* align 8 %208, i64 40, i1 false)
  %209 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %210 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %209, i32 0, i32 0
  store i32 0, i32* %210, align 8
  store i32 0, i32* %10, align 4
  %211 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %212 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %284

215:                                              ; preds = %187
  %216 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %217 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %220 = zext i32 %219 to i64
  %221 = icmp sge i64 %218, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %215
  %223 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  br label %225

224:                                              ; preds = %215
  br label %225

225:                                              ; preds = %224, %222
  %226 = phi i32 [ %223, %222 ], [ 0, %224 ]
  store i32 %226, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %227

227:                                              ; preds = %276, %225
  %228 = load i32, i32* %9, align 4
  %229 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %230 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %279

233:                                              ; preds = %227
  %234 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %235 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %234, i32 0, i32 4
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %235, align 8
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  store i64 %242, i64* %16, align 8
  %243 = load i64, i64* %16, align 8
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %245, label %246

245:                                              ; preds = %233
  br label %276

246:                                              ; preds = %233
  %247 = load %struct.qib_lkey_table*, %struct.qib_lkey_table** %14, align 8
  %248 = load %struct.qib_pd*, %struct.qib_pd** %15, align 8
  %249 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %250 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %249, i32 0, i32 1
  %251 = load %struct.qib_sge*, %struct.qib_sge** %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %251, i64 %253
  %255 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %256 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %255, i32 0, i32 4
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %256, align 8
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i64 %259
  %261 = load i32, i32* %11, align 4
  %262 = call i32 @qib_lkey_ok(%struct.qib_lkey_table* %247, %struct.qib_pd* %248, %struct.qib_sge* %254, %struct.TYPE_17__* %260, i32 %261)
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %17, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %246
  br label %347

266:                                              ; preds = %246
  %267 = load i64, i64* %16, align 8
  %268 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %269 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  %272 = add nsw i64 %271, %267
  %273 = trunc i64 %272 to i32
  store i32 %273, i32* %269, align 8
  %274 = load i32, i32* %10, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %10, align 4
  br label %276

276:                                              ; preds = %266, %245
  %277 = load i32, i32* %9, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %9, align 4
  br label %227

279:                                              ; preds = %227
  %280 = load i32, i32* %10, align 4
  %281 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %282 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %282, i32 0, i32 0
  store i32 %280, i32* %283, align 8
  br label %284

284:                                              ; preds = %279, %187
  %285 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %286 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %285, i32 0, i32 7
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @IB_QPT_UC, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %298, label %291

291:                                              ; preds = %284
  %292 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %293 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %292, i32 0, i32 7
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @IB_QPT_RC, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %305

298:                                              ; preds = %291, %284
  %299 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %300 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp ugt i32 %301, -2147483648
  br i1 %302, label %303, label %304

303:                                              ; preds = %298
  br label %347

304:                                              ; preds = %298
  br label %336

305:                                              ; preds = %291
  %306 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %307 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %310 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %309, i32 0, i32 7
  %311 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = call %struct.TYPE_18__* @dd_from_ibdev(i32 %312)
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 0
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %314, align 8
  %316 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %317 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i64 -1
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = icmp sgt i32 %308, %323
  br i1 %324, label %325, label %326

325:                                              ; preds = %305
  br label %347

326:                                              ; preds = %305
  %327 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %328 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %327, i32 0, i32 3
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %330, align 8
  %332 = call %struct.TYPE_14__* @to_iah(%struct.TYPE_15__* %331)
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 0
  %334 = call i32 @atomic_inc(i32* %333)
  br label %335

335:                                              ; preds = %326
  br label %336

336:                                              ; preds = %335, %304
  %337 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %338 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %337, i32 0, i32 8
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 8
  %341 = sext i32 %339 to i64
  %342 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %343 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %342, i32 0, i32 2
  store i64 %341, i64* %343, align 8
  %344 = load i64, i64* %8, align 8
  %345 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %346 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %345, i32 0, i32 2
  store i64 %344, i64* %346, align 8
  store i32 0, i32* %12, align 4
  br label %367

347:                                              ; preds = %325, %303, %265
  br label %348

348:                                              ; preds = %351, %347
  %349 = load i32, i32* %10, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %363

351:                                              ; preds = %348
  %352 = load %struct.qib_swqe*, %struct.qib_swqe** %7, align 8
  %353 = getelementptr inbounds %struct.qib_swqe, %struct.qib_swqe* %352, i32 0, i32 1
  %354 = load %struct.qib_sge*, %struct.qib_sge** %353, align 8
  %355 = load i32, i32* %10, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %10, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %354, i64 %357
  store %struct.qib_sge* %358, %struct.qib_sge** %18, align 8
  %359 = load %struct.qib_sge*, %struct.qib_sge** %18, align 8
  %360 = getelementptr inbounds %struct.qib_sge, %struct.qib_sge* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @qib_put_mr(i32 %361)
  br label %348

363:                                              ; preds = %348
  br label %364

364:                                              ; preds = %363, %161, %148, %117, %108, %94, %73, %57, %45, %36
  %365 = load i32, i32* @EINVAL, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %12, align 4
  br label %367

367:                                              ; preds = %364, %336, %184
  %368 = load i32, i32* %12, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %395, label %370

370:                                              ; preds = %367
  %371 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %372 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %395, label %375

375:                                              ; preds = %370
  %376 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %377 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %376, i32 0, i32 7
  %378 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 8
  %380 = call %struct.TYPE_18__* @dd_from_ibdev(i32 %379)
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %381, align 8
  %383 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %384 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 8
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i64 %386
  %388 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %387, i64 -1
  %389 = call i32 @qib_sdma_empty(%struct.TYPE_16__* %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %375
  %392 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %393 = call i32 @qib_schedule_send(%struct.qib_qp* %392)
  %394 = load i32*, i32** %6, align 8
  store i32 1, i32* %394, align 4
  br label %395

395:                                              ; preds = %391, %375, %370, %367
  %396 = load %struct.qib_qp*, %struct.qib_qp** %4, align 8
  %397 = getelementptr inbounds %struct.qib_qp, %struct.qib_qp* %396, i32 0, i32 6
  %398 = load i64, i64* %13, align 8
  %399 = call i32 @spin_unlock_irqrestore(i32* %397, i64 %398)
  %400 = load i32, i32* %12, align 4
  ret i32 %400
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qib_fast_reg_mr(%struct.qib_qp*, %struct.ib_send_wr*) #1

declare dso_local %struct.TYPE_13__* @to_idev(i32) #1

declare dso_local %struct.qib_pd* @to_ipd(i32) #1

declare dso_local %struct.qib_swqe* @get_swqe_ptr(%struct.qib_qp*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @qib_lkey_ok(%struct.qib_lkey_table*, %struct.qib_pd*, %struct.qib_sge*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.TYPE_18__* @dd_from_ibdev(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_14__* @to_iah(%struct.TYPE_15__*) #1

declare dso_local i32 @qib_put_mr(i32) #1

declare dso_local i32 @qib_sdma_empty(%struct.TYPE_16__*) #1

declare dso_local i32 @qib_schedule_send(%struct.qib_qp*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
