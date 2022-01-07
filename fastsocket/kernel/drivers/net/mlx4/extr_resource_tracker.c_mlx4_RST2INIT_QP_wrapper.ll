; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_RST2INIT_QP_wrapper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_resource_tracker.c_mlx4_RST2INIT_QP_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_vhcr = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { i32, i32 }
%struct.mlx4_cmd_info = type { i32 }
%struct.res_mtt = type { i32 }
%struct.res_qp = type { i32, i32, %struct.res_srq*, %struct.res_srq*, %struct.res_srq*, %struct.res_srq*, i64 }
%struct.res_srq = type { i32 }
%struct.res_cq = type { i32 }

@RES_QP_HW = common dso_local global i32 0, align 4
@RES_MTT = common dso_local global i32 0, align 4
@RES_CQ = common dso_local global i32 0, align 4
@RES_SRQ = common dso_local global i32 0, align 4
@RES_QP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_RST2INIT_QP_wrapper(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_vhcr* %2, %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_vhcr*, align 8
  %11 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %12 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %13 = alloca %struct.mlx4_cmd_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.res_mtt*, align 8
  %17 = alloca %struct.res_qp*, align 8
  %18 = alloca %struct.mlx4_qp_context*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.res_cq*, align 8
  %22 = alloca %struct.res_cq*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.res_srq*, align 8
  %28 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.mlx4_vhcr* %2, %struct.mlx4_vhcr** %10, align 8
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %11, align 8
  store %struct.mlx4_cmd_mailbox* %4, %struct.mlx4_cmd_mailbox** %12, align 8
  store %struct.mlx4_cmd_info* %5, %struct.mlx4_cmd_info** %13, align 8
  %29 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %30 = getelementptr inbounds %struct.mlx4_vhcr, %struct.mlx4_vhcr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 8388607
  store i32 %32, i32* %15, align 4
  %33 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %34 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %33, i32 0, i32 0
  %35 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %34, align 8
  %36 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %35, i64 8
  store %struct.mlx4_qp_context* %36, %struct.mlx4_qp_context** %18, align 8
  %37 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %38 = call i32 @qp_get_mtt_addr(%struct.mlx4_qp_context* %37)
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %38, %42
  store i32 %43, i32* %19, align 4
  %44 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %45 = call i32 @qp_get_mtt_size(%struct.mlx4_qp_context* %44)
  store i32 %45, i32* %20, align 4
  %46 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %47 = call i32 @qp_get_rcqn(%struct.mlx4_qp_context* %46)
  store i32 %47, i32* %23, align 4
  %48 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %49 = call i32 @qp_get_scqn(%struct.mlx4_qp_context* %48)
  store i32 %49, i32* %24, align 4
  %50 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %51 = call i32 @qp_get_srqn(%struct.mlx4_qp_context* %50)
  %52 = and i32 %51, 16777215
  store i32 %52, i32* %25, align 4
  %53 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %54 = call i32 @qp_get_srqn(%struct.mlx4_qp_context* %53)
  %55 = ashr i32 %54, 24
  %56 = and i32 %55, 1
  store i32 %56, i32* %26, align 4
  %57 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %58 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be32_to_cpu(i32 %59)
  %61 = and i32 %60, 16777215
  store i32 %61, i32* %28, align 4
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* @RES_QP_HW, align 4
  %66 = call i32 @qp_res_start_move_to(%struct.mlx4_dev* %62, i32 %63, i32 %64, i32 %65, %struct.res_qp** %17, i32 0)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %6
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %7, align 4
  br label %264

71:                                               ; preds = %6
  %72 = load i32, i32* %28, align 4
  %73 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %74 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %76 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %75, i32 0, i32 6
  store i64 0, i64* %76, align 8
  %77 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %78 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @be32_to_cpu(i32 %79)
  %81 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %82 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* @RES_MTT, align 4
  %87 = bitcast %struct.res_mtt** %16 to %struct.res_srq**
  %88 = call i32 @get_res(%struct.mlx4_dev* %83, i32 %84, i32 %85, i32 %86, %struct.res_srq** %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %71
  br label %257

92:                                               ; preds = %71
  %93 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %98 = bitcast %struct.res_mtt* %97 to %struct.res_srq*
  %99 = call i32 @check_mtt_range(%struct.mlx4_dev* %93, i32 %94, i32 %95, i32 %96, %struct.res_srq* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %251

103:                                              ; preds = %92
  %104 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* @RES_CQ, align 4
  %108 = bitcast %struct.res_cq** %21 to %struct.res_srq**
  %109 = call i32 @get_res(%struct.mlx4_dev* %104, i32 %105, i32 %106, i32 %107, %struct.res_srq** %108)
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  br label %251

113:                                              ; preds = %103
  %114 = load i32, i32* %24, align 4
  %115 = load i32, i32* %23, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %24, align 4
  %121 = load i32, i32* @RES_CQ, align 4
  %122 = bitcast %struct.res_cq** %22 to %struct.res_srq**
  %123 = call i32 @get_res(%struct.mlx4_dev* %118, i32 %119, i32 %120, i32 %121, %struct.res_srq** %122)
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %245

127:                                              ; preds = %117
  br label %130

128:                                              ; preds = %113
  %129 = load %struct.res_cq*, %struct.res_cq** %21, align 8
  store %struct.res_cq* %129, %struct.res_cq** %22, align 8
  br label %130

130:                                              ; preds = %128, %127
  %131 = load i32, i32* %26, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  %134 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %25, align 4
  %137 = load i32, i32* @RES_SRQ, align 4
  %138 = call i32 @get_res(%struct.mlx4_dev* %134, i32 %135, i32 %136, i32 %137, %struct.res_srq** %27)
  store i32 %138, i32* %14, align 4
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %133
  br label %234

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %130
  %144 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %145 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %146 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %18, align 8
  %147 = call i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev* %144, %struct.mlx4_vhcr* %145, %struct.mlx4_qp_context* %146)
  %148 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %151 = call i32 @update_pkey_index(%struct.mlx4_dev* %148, i32 %149, %struct.mlx4_cmd_mailbox* %150)
  %152 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.mlx4_vhcr*, %struct.mlx4_vhcr** %10, align 8
  %155 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %11, align 8
  %156 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %12, align 8
  %157 = load %struct.mlx4_cmd_info*, %struct.mlx4_cmd_info** %13, align 8
  %158 = call i32 @mlx4_DMA_wrapper(%struct.mlx4_dev* %152, i32 %153, %struct.mlx4_vhcr* %154, %struct.mlx4_cmd_mailbox* %155, %struct.mlx4_cmd_mailbox* %156, %struct.mlx4_cmd_info* %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %143
  br label %224

162:                                              ; preds = %143
  %163 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %164 = getelementptr inbounds %struct.res_mtt, %struct.res_mtt* %163, i32 0, i32 0
  %165 = call i32 @atomic_inc(i32* %164)
  %166 = load %struct.res_mtt*, %struct.res_mtt** %16, align 8
  %167 = bitcast %struct.res_mtt* %166 to %struct.res_srq*
  %168 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %169 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %168, i32 0, i32 5
  store %struct.res_srq* %167, %struct.res_srq** %169, align 8
  %170 = load %struct.res_cq*, %struct.res_cq** %21, align 8
  %171 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %170, i32 0, i32 0
  %172 = call i32 @atomic_inc(i32* %171)
  %173 = load %struct.res_cq*, %struct.res_cq** %21, align 8
  %174 = bitcast %struct.res_cq* %173 to %struct.res_srq*
  %175 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %176 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %175, i32 0, i32 4
  store %struct.res_srq* %174, %struct.res_srq** %176, align 8
  %177 = load %struct.res_cq*, %struct.res_cq** %22, align 8
  %178 = getelementptr inbounds %struct.res_cq, %struct.res_cq* %177, i32 0, i32 0
  %179 = call i32 @atomic_inc(i32* %178)
  %180 = load %struct.res_cq*, %struct.res_cq** %22, align 8
  %181 = bitcast %struct.res_cq* %180 to %struct.res_srq*
  %182 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %183 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %182, i32 0, i32 3
  store %struct.res_srq* %181, %struct.res_srq** %183, align 8
  %184 = load i32, i32* %24, align 4
  %185 = load i32, i32* %23, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %193

187:                                              ; preds = %162
  %188 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %24, align 4
  %191 = load i32, i32* @RES_CQ, align 4
  %192 = call i32 @put_res(%struct.mlx4_dev* %188, i32 %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %187, %162
  %194 = load i32, i32* %26, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %208

196:                                              ; preds = %193
  %197 = load %struct.res_srq*, %struct.res_srq** %27, align 8
  %198 = getelementptr inbounds %struct.res_srq, %struct.res_srq* %197, i32 0, i32 0
  %199 = call i32 @atomic_inc(i32* %198)
  %200 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %25, align 4
  %203 = load i32, i32* @RES_SRQ, align 4
  %204 = call i32 @put_res(%struct.mlx4_dev* %200, i32 %201, i32 %202, i32 %203)
  %205 = load %struct.res_srq*, %struct.res_srq** %27, align 8
  %206 = load %struct.res_qp*, %struct.res_qp** %17, align 8
  %207 = getelementptr inbounds %struct.res_qp, %struct.res_qp* %206, i32 0, i32 2
  store %struct.res_srq* %205, %struct.res_srq** %207, align 8
  br label %208

208:                                              ; preds = %196, %193
  %209 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* %23, align 4
  %212 = load i32, i32* @RES_CQ, align 4
  %213 = call i32 @put_res(%struct.mlx4_dev* %209, i32 %210, i32 %211, i32 %212)
  %214 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* @RES_MTT, align 4
  %218 = call i32 @put_res(%struct.mlx4_dev* %214, i32 %215, i32 %216, i32 %217)
  %219 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @RES_QP, align 4
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @res_end_move(%struct.mlx4_dev* %219, i32 %220, i32 %221, i32 %222)
  store i32 0, i32* %7, align 4
  br label %264

224:                                              ; preds = %161
  %225 = load i32, i32* %26, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %25, align 4
  %231 = load i32, i32* @RES_SRQ, align 4
  %232 = call i32 @put_res(%struct.mlx4_dev* %228, i32 %229, i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %227, %224
  br label %234

234:                                              ; preds = %233, %141
  %235 = load i32, i32* %24, align 4
  %236 = load i32, i32* %23, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %244

238:                                              ; preds = %234
  %239 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %24, align 4
  %242 = load i32, i32* @RES_CQ, align 4
  %243 = call i32 @put_res(%struct.mlx4_dev* %239, i32 %240, i32 %241, i32 %242)
  br label %244

244:                                              ; preds = %238, %234
  br label %245

245:                                              ; preds = %244, %126
  %246 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %247 = load i32, i32* %9, align 4
  %248 = load i32, i32* %23, align 4
  %249 = load i32, i32* @RES_CQ, align 4
  %250 = call i32 @put_res(%struct.mlx4_dev* %246, i32 %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %245, %112, %102
  %252 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %253 = load i32, i32* %9, align 4
  %254 = load i32, i32* %19, align 4
  %255 = load i32, i32* @RES_MTT, align 4
  %256 = call i32 @put_res(%struct.mlx4_dev* %252, i32 %253, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %251, %91
  %258 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %259 = load i32, i32* %9, align 4
  %260 = load i32, i32* @RES_QP, align 4
  %261 = load i32, i32* %15, align 4
  %262 = call i32 @res_abort_move(%struct.mlx4_dev* %258, i32 %259, i32 %260, i32 %261)
  %263 = load i32, i32* %14, align 4
  store i32 %263, i32* %7, align 4
  br label %264

264:                                              ; preds = %257, %208, %69
  %265 = load i32, i32* %7, align 4
  ret i32 %265
}

declare dso_local i32 @qp_get_mtt_addr(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_mtt_size(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_rcqn(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_scqn(%struct.mlx4_qp_context*) #1

declare dso_local i32 @qp_get_srqn(%struct.mlx4_qp_context*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @qp_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, %struct.res_qp**, i32) #1

declare dso_local i32 @get_res(%struct.mlx4_dev*, i32, i32, i32, %struct.res_srq**) #1

declare dso_local i32 @check_mtt_range(%struct.mlx4_dev*, i32, i32, i32, %struct.res_srq*) #1

declare dso_local i32 @adjust_proxy_tun_qkey(%struct.mlx4_dev*, %struct.mlx4_vhcr*, %struct.mlx4_qp_context*) #1

declare dso_local i32 @update_pkey_index(%struct.mlx4_dev*, i32, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_DMA_wrapper(%struct.mlx4_dev*, i32, %struct.mlx4_vhcr*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_info*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @put_res(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
