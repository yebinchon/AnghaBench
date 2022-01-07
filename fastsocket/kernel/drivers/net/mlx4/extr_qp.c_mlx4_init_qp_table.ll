; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c_mlx4_init_qp_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_qp.c_mlx4_init_qp_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i64*, i32, i32*, i32, i64*, i64*, i64*, i64* }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.mlx4_qp_table = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.mlx4_qp_table }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MLX4_QP_REGION_FW = common dso_local global i64 0, align 8
@MLX4_NUM_QP_REGION = common dso_local global i32 0, align 4
@MLX4_MFUNC_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_MAX_PORTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_init_qp_table(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_qp_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %14 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %15 = call %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev* %14)
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store %struct.mlx4_qp_table* %16, %struct.mlx4_qp_table** %4, align 8
  store i32 0, i32* %6, align 4
  %17 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_init(i32* %18)
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %20, i32 0, i32 2
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call i32 @INIT_RADIX_TREE(i32* %21, i32 %22)
  %24 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %25 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %428

28:                                               ; preds = %1
  %29 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @MLX4_QP_REGION_FW, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @ALIGN(i64 %35, i32 8)
  %37 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i64 %36, i64* %39, align 8
  %40 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %8, align 8
  %43 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %9, align 8
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %13, align 4
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %57, %28
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %43, i64 %55
  store i32 %53, i32* %56, align 4
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %48

60:                                               ; preds = %48
  %61 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %118, %60
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %121

65:                                               ; preds = %62
  store i32 2, i32* %11, align 4
  br label %66

66:                                               ; preds = %114, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %117

70:                                               ; preds = %66
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %72 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %43, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %74, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %83 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %43, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %85, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = icmp sgt i64 %81, %93
  br i1 %94, label %95, label %113

95:                                               ; preds = %70
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %43, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %43, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %43, i64 %106
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %11, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %43, i64 %111
  store i32 %108, i32* %112, align 4
  br label %113

113:                                              ; preds = %95, %70
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %66

117:                                              ; preds = %66
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %10, align 4
  br label %62

121:                                              ; preds = %62
  store i32 1, i32* %10, align 4
  br label %122

122:                                              ; preds = %168, %121
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @MLX4_NUM_QP_REGION, align 4
  %125 = icmp slt i32 %123, %124
  br i1 %125, label %126, label %171

126:                                              ; preds = %122
  %127 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %128 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %43, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %130, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = sub nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %144 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %43, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %146, i64 %151
  store i32 %142, i32* %152, align 4
  %153 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %154 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64*, i64** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %43, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %156, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %165, %163
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %6, align 4
  br label %168

168:                                              ; preds = %126
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %122

171:                                              ; preds = %122
  %172 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %172)
  %173 = load %struct.mlx4_qp_table*, %struct.mlx4_qp_table** %4, align 8
  %174 = getelementptr inbounds %struct.mlx4_qp_table, %struct.mlx4_qp_table* %173, i32 0, i32 0
  %175 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %176 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %180 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = add nsw i64 %182, 8
  %184 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %185 = mul nsw i32 16, %184
  %186 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %187 = call i32 @mlx4_is_master(%struct.mlx4_dev* %186)
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = mul nsw i32 %185, %191
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %183, %193
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @mlx4_bitmap_init(i32* %174, i32 %178, i32 8388607, i64 %194, i32 %195)
  store i32 %196, i32* %5, align 4
  %197 = load i32, i32* %5, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %171
  %200 = load i32, i32* %5, align 4
  store i32 %200, i32* %2, align 4
  br label %428

201:                                              ; preds = %171
  %202 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %203 = call i64 @mlx4_is_mfunc(%struct.mlx4_dev* %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %383

205:                                              ; preds = %201
  %206 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %207 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, 8
  %211 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %212 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  store i64 %210, i64* %213, align 8
  %214 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %215 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, 8
  %219 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %220 = mul nsw i32 8, %219
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %218, %221
  %223 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %224 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 2
  store i64 %222, i64* %225, align 8
  %226 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %227 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* @GFP_KERNEL, align 4
  %231 = call i8* @kcalloc(i32 %229, i32 4, i32 %230)
  %232 = bitcast i8* %231 to i64*
  %233 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %234 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 7
  store i64* %232, i64** %235, align 8
  %236 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %237 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @GFP_KERNEL, align 4
  %241 = call i8* @kcalloc(i32 %239, i32 4, i32 %240)
  %242 = bitcast i8* %241 to i64*
  %243 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %244 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 6
  store i64* %242, i64** %245, align 8
  %246 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %247 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @GFP_KERNEL, align 4
  %251 = call i8* @kcalloc(i32 %249, i32 4, i32 %250)
  %252 = bitcast i8* %251 to i64*
  %253 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %254 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 5
  store i64* %252, i64** %255, align 8
  %256 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %257 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @GFP_KERNEL, align 4
  %261 = call i8* @kcalloc(i32 %259, i32 4, i32 %260)
  %262 = bitcast i8* %261 to i64*
  %263 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %264 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 4
  store i64* %262, i64** %265, align 8
  %266 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %267 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 7
  %269 = load i64*, i64** %268, align 8
  %270 = icmp ne i64* %269, null
  br i1 %270, label %271, label %289

271:                                              ; preds = %205
  %272 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %273 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 6
  %275 = load i64*, i64** %274, align 8
  %276 = icmp ne i64* %275, null
  br i1 %276, label %277, label %289

277:                                              ; preds = %271
  %278 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %279 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 5
  %281 = load i64*, i64** %280, align 8
  %282 = icmp ne i64* %281, null
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %285 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %285, i32 0, i32 4
  %287 = load i64*, i64** %286, align 8
  %288 = icmp ne i64* %287, null
  br i1 %288, label %292, label %289

289:                                              ; preds = %283, %277, %271, %205
  %290 = load i32, i32* @ENOMEM, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %5, align 4
  br label %394

292:                                              ; preds = %283
  store i32 0, i32* %7, align 4
  br label %293

293:                                              ; preds = %379, %292
  %294 = load i32, i32* %7, align 4
  %295 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %296 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = icmp slt i32 %294, %298
  br i1 %299, label %300, label %382

300:                                              ; preds = %293
  %301 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %302 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %302, i32 0, i32 1
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %306 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %305)
  %307 = mul nsw i32 8, %306
  %308 = sext i32 %307 to i64
  %309 = add nsw i64 %304, %308
  %310 = load i32, i32* %7, align 4
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %309, %311
  %313 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %314 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 6
  %316 = load i64*, i64** %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i64, i64* %316, i64 %318
  store i64 %312, i64* %319, align 8
  %320 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %321 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %321, i32 0, i32 6
  %323 = load i64*, i64** %322, align 8
  %324 = load i32, i32* %7, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i64, i64* %323, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %329 = mul nsw i32 8, %328
  %330 = sext i32 %329 to i64
  %331 = add nsw i64 %327, %330
  %332 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %333 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 7
  %335 = load i64*, i64** %334, align 8
  %336 = load i32, i32* %7, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i64, i64* %335, i64 %337
  store i64 %331, i64* %338, align 8
  %339 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %340 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %344 = call i32 @mlx4_master_func_num(%struct.mlx4_dev* %343)
  %345 = mul nsw i32 8, %344
  %346 = sext i32 %345 to i64
  %347 = add nsw i64 %342, %346
  %348 = load i64, i64* @MLX4_MAX_PORTS, align 8
  %349 = add nsw i64 %347, %348
  %350 = load i32, i32* %7, align 4
  %351 = sext i32 %350 to i64
  %352 = add nsw i64 %349, %351
  %353 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %354 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 4
  %356 = load i64*, i64** %355, align 8
  %357 = load i32, i32* %7, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i64, i64* %356, i64 %358
  store i64 %352, i64* %359, align 8
  %360 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %361 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 4
  %363 = load i64*, i64** %362, align 8
  %364 = load i32, i32* %7, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i64, i64* %363, i64 %365
  %367 = load i64, i64* %366, align 8
  %368 = load i32, i32* @MLX4_MFUNC_MAX, align 4
  %369 = mul nsw i32 8, %368
  %370 = sext i32 %369 to i64
  %371 = add nsw i64 %367, %370
  %372 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %373 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %373, i32 0, i32 5
  %375 = load i64*, i64** %374, align 8
  %376 = load i32, i32* %7, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64, i64* %375, i64 %377
  store i64 %371, i64* %378, align 8
  br label %379

379:                                              ; preds = %300
  %380 = load i32, i32* %7, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %7, align 4
  br label %293

382:                                              ; preds = %293
  br label %383

383:                                              ; preds = %382, %201
  %384 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %385 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %386 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  %388 = load i64, i64* %387, align 8
  %389 = call i32 @mlx4_CONF_SPECIAL_QP(%struct.mlx4_dev* %384, i64 %388)
  store i32 %389, i32* %5, align 4
  %390 = load i32, i32* %5, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %383
  br label %394

393:                                              ; preds = %383
  store i32 0, i32* %2, align 4
  br label %428

394:                                              ; preds = %392, %289
  %395 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %396 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 7
  %398 = load i64*, i64** %397, align 8
  %399 = call i32 @kfree(i64* %398)
  %400 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %401 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 6
  %403 = load i64*, i64** %402, align 8
  %404 = call i32 @kfree(i64* %403)
  %405 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %406 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 5
  %408 = load i64*, i64** %407, align 8
  %409 = call i32 @kfree(i64* %408)
  %410 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %411 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %410, i32 0, i32 0
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 4
  %413 = load i64*, i64** %412, align 8
  %414 = call i32 @kfree(i64* %413)
  %415 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %416 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %416, i32 0, i32 4
  store i64* null, i64** %417, align 8
  %418 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %419 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %419, i32 0, i32 5
  store i64* null, i64** %420, align 8
  %421 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %422 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %421, i32 0, i32 0
  %423 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %422, i32 0, i32 6
  store i64* null, i64** %423, align 8
  %424 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %425 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 7
  store i64* null, i64** %426, align 8
  %427 = load i32, i32* %5, align 4
  store i32 %427, i32* %2, align 4
  br label %428

428:                                              ; preds = %394, %393, %199, %27
  %429 = load i32, i32* %2, align 4
  ret i32 %429
}

declare dso_local %struct.TYPE_6__* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @mlx4_bitmap_init(i32*, i32, i32, i64, i32) #1

declare dso_local i32 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_mfunc(%struct.mlx4_dev*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @mlx4_master_func_num(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_CONF_SPECIAL_QP(%struct.mlx4_dev*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
