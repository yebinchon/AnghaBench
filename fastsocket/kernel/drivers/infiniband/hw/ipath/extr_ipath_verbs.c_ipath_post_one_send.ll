; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_post_one_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_post_one_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_qp = type { i64, i32, i64, i64, i64, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i64, i32 }
%struct.ib_send_wr = type { i32, i64, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ipath_swqe = type { i32, i64, %struct.ib_send_wr, i32* }
%struct.ipath_devdata = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.ipath_devdata* }

@IB_QPT_SMI = common dso_local global i64 0, align 8
@IPATH_LINKACTIVE = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@ib_ipath_state_ops = common dso_local global i32* null, align 8
@IPATH_POST_SEND_OK = common dso_local global i32 0, align 4
@IB_QPT_UC = common dso_local global i64 0, align 8
@IB_WR_RDMA_READ = common dso_local global i32 0, align 4
@IB_QPT_UD = common dso_local global i64 0, align 8
@IB_WR_SEND = common dso_local global i64 0, align 8
@IB_WR_SEND_WITH_IMM = common dso_local global i64 0, align 8
@IB_WR_ATOMIC_FETCH_AND_ADD = common dso_local global i32 0, align 4
@IB_WR_ATOMIC_CMP_AND_SWP = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_qp*, %struct.ib_send_wr*)* @ipath_post_one_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_post_one_send(%struct.ipath_qp* %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca %struct.ipath_qp*, align 8
  %4 = alloca %struct.ib_send_wr*, align 8
  %5 = alloca %struct.ipath_swqe*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.ipath_devdata*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ipath_qp* %0, %struct.ipath_qp** %3, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %4, align 8
  %15 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_11__* @to_idev(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %20, align 8
  store %struct.ipath_devdata* %21, %struct.ipath_devdata** %12, align 8
  %22 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %23 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %22, i32 0, i32 5
  %24 = load i64, i64* %11, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %27 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IB_QPT_SMI, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %2
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %12, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IPATH_LINKACTIVE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENETDOWN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %329

42:                                               ; preds = %32, %2
  %43 = load i32*, i32** @ib_ipath_state_ops, align 8
  %44 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %45 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IPATH_POST_SEND_OK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %326

57:                                               ; preds = %42
  %58 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %59 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %62 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %326

66:                                               ; preds = %57
  %67 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %68 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IB_QPT_UC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %75 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %79 = icmp uge i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %326

81:                                               ; preds = %73
  br label %173

82:                                               ; preds = %66
  %83 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %84 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @IB_QPT_UD, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %117

89:                                               ; preds = %82
  %90 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %91 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IB_WR_SEND, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %97 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @IB_WR_SEND_WITH_IMM, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %326

102:                                              ; preds = %95, %89
  %103 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %104 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %108 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %106, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %102
  br label %326

116:                                              ; preds = %102
  br label %172

117:                                              ; preds = %82
  %118 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %119 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = load i32, i32* @IB_WR_ATOMIC_FETCH_AND_ADD, align 4
  %123 = icmp ugt i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  br label %326

125:                                              ; preds = %117
  %126 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %127 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IB_WR_ATOMIC_CMP_AND_SWP, align 8
  %130 = icmp sge i64 %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %125
  %132 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %133 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %155, label %136

136:                                              ; preds = %131
  %137 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %138 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %137, i32 0, i32 2
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %143, 4
  br i1 %144, label %155, label %145

145:                                              ; preds = %136
  %146 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %147 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %146, i32 0, i32 2
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i64 0
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = and i64 %152, 3
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %145, %136, %131
  br label %326

156:                                              ; preds = %145, %125
  %157 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %158 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %161 = zext i32 %160 to i64
  %162 = icmp sge i64 %159, %161
  br i1 %162, label %163, label %169

163:                                              ; preds = %156
  %164 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %165 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %164, i32 0, i32 8
  %166 = load i32, i32* %165, align 8
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %163
  br label %326

169:                                              ; preds = %163, %156
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170
  br label %172

172:                                              ; preds = %171, %116
  br label %173

173:                                              ; preds = %172, %81
  %174 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %175 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 1
  store i64 %177, i64* %6, align 8
  %178 = load i64, i64* %6, align 8
  %179 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %180 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp sge i64 %178, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  store i64 0, i64* %6, align 8
  br label %184

184:                                              ; preds = %183, %173
  %185 = load i64, i64* %6, align 8
  %186 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %187 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %186, i32 0, i32 4
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %185, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %10, align 4
  br label %329

193:                                              ; preds = %184
  %194 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %195 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %196 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = call %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp* %194, i64 %197)
  store %struct.ipath_swqe* %198, %struct.ipath_swqe** %5, align 8
  %199 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %200 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %199, i32 0, i32 2
  %201 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %202 = bitcast %struct.ib_send_wr* %200 to i8*
  %203 = bitcast %struct.ib_send_wr* %201 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %202, i8* align 8 %203, i64 32, i1 false)
  %204 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %205 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %204, i32 0, i32 0
  store i32 0, i32* %205, align 8
  %206 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %207 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %278

210:                                              ; preds = %193
  %211 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %212 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = load i32, i32* @IB_WR_RDMA_READ, align 4
  %215 = zext i32 %214 to i64
  %216 = icmp sge i64 %213, %215
  br i1 %216, label %217, label %219

217:                                              ; preds = %210
  %218 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  br label %220

219:                                              ; preds = %210
  br label %220

220:                                              ; preds = %219, %217
  %221 = phi i32 [ %218, %217 ], [ 0, %219 ]
  store i32 %221, i32* %9, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %222

222:                                              ; preds = %270, %220
  %223 = load i32, i32* %7, align 4
  %224 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %225 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %223, %226
  br i1 %227, label %228, label %273

228:                                              ; preds = %222
  %229 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %230 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %229, i32 0, i32 2
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %13, align 8
  %238 = load i64, i64* %13, align 8
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %228
  br label %270

241:                                              ; preds = %228
  %242 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %243 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %244 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load %struct.ib_send_wr*, %struct.ib_send_wr** %4, align 8
  %250 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %249, i32 0, i32 2
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i64 %253
  %255 = load i32, i32* %9, align 4
  %256 = call i32 @ipath_lkey_ok(%struct.ipath_qp* %242, i32* %248, %struct.TYPE_12__* %254, i32 %255)
  store i32 %256, i32* %14, align 4
  %257 = load i32, i32* %14, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %241
  br label %326

260:                                              ; preds = %241
  %261 = load i64, i64* %13, align 8
  %262 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %263 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %261
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %263, align 8
  %268 = load i32, i32* %8, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %8, align 4
  br label %270

270:                                              ; preds = %260, %240
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %7, align 4
  br label %222

273:                                              ; preds = %222
  %274 = load i32, i32* %8, align 4
  %275 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %276 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  br label %278

278:                                              ; preds = %273, %193
  %279 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %280 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %279, i32 0, i32 7
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @IB_QPT_UC, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %292, label %285

285:                                              ; preds = %278
  %286 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %287 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %286, i32 0, i32 7
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @IB_QPT_RC, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %285, %278
  %293 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %294 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = icmp ugt i32 %295, -2147483648
  br i1 %296, label %297, label %298

297:                                              ; preds = %292
  br label %326

298:                                              ; preds = %292
  br label %315

299:                                              ; preds = %285
  %300 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %301 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %304 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %303, i32 0, i32 7
  %305 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = call %struct.TYPE_11__* @to_idev(i32 %306)
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %307, i32 0, i32 0
  %309 = load %struct.ipath_devdata*, %struct.ipath_devdata** %308, align 8
  %310 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp sgt i32 %302, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %299
  br label %326

314:                                              ; preds = %299
  br label %315

315:                                              ; preds = %314, %298
  %316 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %317 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %316, i32 0, i32 6
  %318 = load i32, i32* %317, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %317, align 4
  %320 = sext i32 %318 to i64
  %321 = load %struct.ipath_swqe*, %struct.ipath_swqe** %5, align 8
  %322 = getelementptr inbounds %struct.ipath_swqe, %struct.ipath_swqe* %321, i32 0, i32 1
  store i64 %320, i64* %322, align 8
  %323 = load i64, i64* %6, align 8
  %324 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %325 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %324, i32 0, i32 2
  store i64 %323, i64* %325, align 8
  store i32 0, i32* %10, align 4
  br label %329

326:                                              ; preds = %313, %297, %259, %168, %155, %124, %115, %101, %80, %65, %56
  %327 = load i32, i32* @EINVAL, align 4
  %328 = sub nsw i32 0, %327
  store i32 %328, i32* %10, align 4
  br label %329

329:                                              ; preds = %326, %315, %190, %39
  %330 = load %struct.ipath_qp*, %struct.ipath_qp** %3, align 8
  %331 = getelementptr inbounds %struct.ipath_qp, %struct.ipath_qp* %330, i32 0, i32 5
  %332 = load i64, i64* %11, align 8
  %333 = call i32 @spin_unlock_irqrestore(i32* %331, i64 %332)
  %334 = load i32, i32* %10, align 4
  ret i32 %334
}

declare dso_local %struct.TYPE_11__* @to_idev(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipath_swqe* @get_swqe_ptr(%struct.ipath_qp*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ipath_lkey_ok(%struct.ipath_qp*, i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
