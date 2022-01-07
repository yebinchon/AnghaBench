; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_set_kernel_sq_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_qp.c_set_kernel_sq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }
%struct.ib_qp_cap = type { i32, i32, i32 }
%struct.mlx4_ib_qp = type { i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MLX4_IB_SQ_MAX_SPARE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX4_IB_QPT_SMI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_GSI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_SMI_OWNER = common dso_local global i32 0, align 4
@MLX4_IB_QPT_TUN_SMI_OWNER = common dso_local global i32 0, align 4
@MLX4_FW_VER_WQE_CTRL_NEC = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_SMI = common dso_local global i32 0, align 4
@MLX4_IB_QPT_PROXY_GSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, %struct.ib_qp_cap*, i32, %struct.mlx4_ib_qp*)* @set_kernel_sq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_kernel_sq_size(%struct.mlx4_ib_dev* %0, %struct.ib_qp_cap* %1, i32 %2, %struct.mlx4_ib_qp* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca %struct.ib_qp_cap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_ib_qp*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store %struct.ib_qp_cap* %1, %struct.ib_qp_cap** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.mlx4_ib_qp* %3, %struct.mlx4_ib_qp** %9, align 8
  %11 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %12 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MLX4_IB_SQ_MAX_SPARE, align 4
  %21 = sub nsw i32 %19, %20
  %22 = icmp sgt i32 %13, %21
  br i1 %22, label %61, label %23

23:                                               ; preds = %4
  %24 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %25 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @min(i32 %32, i32 %38)
  %40 = icmp sgt i32 %26, %39
  br i1 %40, label %61, label %41

41:                                               ; preds = %23
  %42 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %43 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %47 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @send_wqe_overhead(i32 %45, i32 %48)
  %50 = add nsw i32 %44, %49
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ugt i64 %52, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %41, %23, %4
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %368

64:                                               ; preds = %41
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @MLX4_IB_QPT_SMI, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @MLX4_IB_QPT_GSI, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI_OWNER, align 4
  %75 = load i32, i32* @MLX4_IB_QPT_TUN_SMI_OWNER, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %72, %68, %64
  %80 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %81 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 2
  %84 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %85 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %83, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %368

94:                                               ; preds = %79, %72
  %95 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %96 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %102 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 4
  %106 = trunc i64 %105 to i32
  %107 = call i32 @max(i32 %100, i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %110 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @send_wqe_overhead(i32 %108, i32 %111)
  %113 = add nsw i32 %107, %112
  store i32 %113, i32* %10, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %116 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %115, i32 0, i32 0
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %114, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %94
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %5, align 4
  br label %368

125:                                              ; preds = %94
  %126 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %127 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MLX4_FW_VER_WQE_CTRL_NEC, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %167

134:                                              ; preds = %125
  %135 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %136 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %135, i32 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %134
  %140 = load i32, i32* @BITS_PER_LONG, align 4
  %141 = icmp eq i32 %140, 64
  br i1 %141, label %142, label %167

142:                                              ; preds = %139
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @MLX4_IB_QPT_SMI, align 4
  %145 = icmp ne i32 %143, %144
  br i1 %145, label %146, label %167

146:                                              ; preds = %142
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* @MLX4_IB_QPT_GSI, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %167

150:                                              ; preds = %146
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI_OWNER, align 4
  %153 = load i32, i32* @MLX4_IB_QPT_PROXY_SMI, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @MLX4_IB_QPT_PROXY_GSI, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @MLX4_IB_QPT_TUN_SMI_OWNER, align 4
  %158 = or i32 %156, %157
  %159 = and i32 %151, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %167, label %161

161:                                              ; preds = %150
  %162 = call i8* @ilog2(i32 64)
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %165 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  store i32 %163, i32* %166, align 4
  br label %175

167:                                              ; preds = %150, %146, %142, %139, %134, %125
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @roundup_pow_of_two(i32 %168)
  %170 = call i8* @ilog2(i32 %169)
  %171 = ptrtoint i8* %170 to i32
  %172 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %173 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %172, i32 0, i32 3
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  br label %175

175:                                              ; preds = %167, %161
  br label %176

176:                                              ; preds = %232, %175
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %179 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = shl i32 1, %181
  %183 = call i32 @DIV_ROUND_UP(i32 %177, i32 %182)
  %184 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %185 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %187 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %186, i32 0, i32 3
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = ashr i32 2048, %189
  %191 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %192 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = add nsw i32 %190, %193
  %195 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %196 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %198 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %201 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = mul nsw i32 %199, %202
  %204 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %205 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %203, %206
  %208 = call i32 @roundup_pow_of_two(i32 %207)
  %209 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %210 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %209, i32 0, i32 3
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 1
  store i32 %208, i32* %211, align 4
  %212 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %213 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %212, i32 0, i32 3
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %217 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %216, i32 0, i32 0
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp sle i32 %215, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %176
  br label %238

224:                                              ; preds = %176
  %225 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %226 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp sle i32 %227, 1
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %5, align 4
  br label %368

232:                                              ; preds = %224
  %233 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %234 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %233, i32 0, i32 3
  %235 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %235, align 4
  br label %176

238:                                              ; preds = %223
  %239 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %240 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %239, i32 0, i32 0
  %241 = load %struct.TYPE_8__*, %struct.TYPE_8__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %246 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %249 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = shl i32 %247, %251
  %253 = call i32 @min(i32 %244, i32 %252)
  %254 = load i32, i32* %8, align 4
  %255 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %256 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @send_wqe_overhead(i32 %254, i32 %257)
  %259 = sub nsw i32 %253, %258
  %260 = sext i32 %259 to i64
  %261 = udiv i64 %260, 4
  %262 = trunc i64 %261 to i32
  %263 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %264 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 2
  store i32 %262, i32* %265, align 4
  %266 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %267 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %266, i32 0, i32 4
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %271 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = shl i32 %269, %273
  %275 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %276 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %280 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = shl i32 %278, %282
  %284 = add nsw i32 %274, %283
  %285 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %286 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %285, i32 0, i32 2
  store i32 %284, i32* %286, align 8
  %287 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %288 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %292 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = icmp ugt i32 %290, %294
  br i1 %295, label %296, label %312

296:                                              ; preds = %238
  %297 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %298 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %297, i32 0, i32 4
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %298, i32 0, i32 2
  store i32 0, i32* %299, align 8
  %300 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %301 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %305 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %304, i32 0, i32 4
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %303, %307
  %309 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %310 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %309, i32 0, i32 3
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 3
  store i32 %308, i32* %311, align 4
  br label %328

312:                                              ; preds = %238
  %313 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %314 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %318 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = shl i32 %316, %320
  %322 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %323 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 2
  store i32 %321, i32* %324, align 8
  %325 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %326 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %325, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %326, i32 0, i32 3
  store i32 0, i32* %327, align 4
  br label %328

328:                                              ; preds = %312, %296
  %329 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %330 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %329, i32 0, i32 3
  %331 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %334 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = sub nsw i32 %332, %335
  %337 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %338 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = sdiv i32 %336, %339
  %341 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %342 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 4
  store i32 %340, i32* %343, align 4
  %344 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %345 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %344, i32 0, i32 0
  store i32 %340, i32* %345, align 4
  %346 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %9, align 8
  %347 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %351 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %350, i32 0, i32 0
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 4
  %356 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %357 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %356, i32 0, i32 0
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @min(i32 %355, i32 %361)
  %363 = call i32 @min(i32 %349, i32 %362)
  %364 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %365 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %364, i32 0, i32 1
  store i32 %363, i32* %365, align 4
  %366 = load %struct.ib_qp_cap*, %struct.ib_qp_cap** %7, align 8
  %367 = getelementptr inbounds %struct.ib_qp_cap, %struct.ib_qp_cap* %366, i32 0, i32 2
  store i32 0, i32* %367, align 4
  store i32 0, i32* %5, align 4
  br label %368

368:                                              ; preds = %328, %229, %122, %91, %61
  %369 = load i32, i32* %5, align 4
  ret i32 %369
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @send_wqe_overhead(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i8* @ilog2(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
