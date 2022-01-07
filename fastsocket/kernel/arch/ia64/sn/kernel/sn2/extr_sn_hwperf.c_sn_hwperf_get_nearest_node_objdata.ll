; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_get_nearest_node_objdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/sn2/extr_sn_hwperf.c_sn_hwperf_get_nearest_node_objdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn_hwperf_object_info = type { i32, i64 }
%struct.sn_hwperf_port_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@sn_hwperf_master_nasid = common dso_local global i32 0, align 4
@SN_HWPERF_ENUM_PORTS = common dso_local global i32 0, align 4
@SN_HWPERF_OP_OK = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn_hwperf_object_info*, i32, i64, i64*, i64*)* @sn_hwperf_get_nearest_node_objdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn_hwperf_get_nearest_node_objdata(%struct.sn_hwperf_object_info* %0, i32 %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sn_hwperf_object_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.sn_hwperf_object_info*, align 8
  %14 = alloca %struct.sn_hwperf_object_info*, align 8
  %15 = alloca %struct.sn_hwperf_object_info*, align 8
  %16 = alloca %struct.sn_hwperf_object_info*, align 8
  %17 = alloca [16 x %struct.sn_hwperf_port_info], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.sn_hwperf_object_info* %0, %struct.sn_hwperf_object_info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.sn_hwperf_object_info* null, %struct.sn_hwperf_object_info** %13, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @cnode_possible(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %404

30:                                               ; preds = %5
  %31 = load i64, i64* %9, align 8
  %32 = call i64 @sn_hwperf_has_cpus(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i64*, i64** %11, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* %9, align 8
  %39 = load i64*, i64** %11, align 8
  store i64 %38, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %23, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %23, align 4
  br label %43

43:                                               ; preds = %40, %30
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @sn_hwperf_has_mem(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i64*, i64** %10, align 8
  %49 = icmp ne i64* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i64, i64* %9, align 8
  %52 = load i64*, i64** %10, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %22, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %22, align 4
  br label %56

56:                                               ; preds = %53, %43
  %57 = load i32, i32* %23, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %22, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %404

63:                                               ; preds = %59, %56
  store i32 0, i32* %19, align 4
  %64 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %7, align 8
  store %struct.sn_hwperf_object_info* %64, %struct.sn_hwperf_object_info** %14, align 8
  br label %65

65:                                               ; preds = %86, %63
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %65
  %70 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %71 = call i32 @SN_HWPERF_IS_NODE(%struct.sn_hwperf_object_info* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %69
  %74 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %75 = call i64 @SN_HWPERF_IS_IONODE(%struct.sn_hwperf_object_info* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %86

78:                                               ; preds = %73, %69
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %81 = call i64 @sn_hwperf_obj_to_cnode(%struct.sn_hwperf_object_info* %80)
  %82 = icmp eq i64 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  store %struct.sn_hwperf_object_info* %84, %struct.sn_hwperf_object_info** %13, align 8
  br label %91

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %77
  %87 = load i32, i32* %19, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %19, align 4
  %89 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %90 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %89, i32 1
  store %struct.sn_hwperf_object_info* %90, %struct.sn_hwperf_object_info** %14, align 8
  br label %65

91:                                               ; preds = %83, %65
  %92 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %13, align 8
  %93 = icmp ne %struct.sn_hwperf_object_info* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %402

97:                                               ; preds = %91
  %98 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %99 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = mul i64 %101, 4
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp ugt i64 %105, 64
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  %109 = load i32, i32* @sn_hwperf_master_nasid, align 4
  %110 = load i32, i32* @SN_HWPERF_ENUM_PORTS, align 4
  %111 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %13, align 8
  %112 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = ptrtoint [16 x %struct.sn_hwperf_port_info]* %17 to i32
  %116 = call i32 @ia64_sn_hwperf_op(i32 %109, i32 %110, i64 %113, i32 %114, i32 %115, i32 0, i32 0, i32* null)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @SN_HWPERF_OP_OK, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %97
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %12, align 4
  br label %402

123:                                              ; preds = %97
  store %struct.sn_hwperf_object_info* null, %struct.sn_hwperf_object_info** %16, align 8
  store i32 0, i32* %20, align 4
  br label %124

124:                                              ; preds = %198, %123
  %125 = load i32, i32* %20, align 4
  %126 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %127 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %201

130:                                              ; preds = %124
  %131 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %20, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [16 x %struct.sn_hwperf_port_info], [16 x %struct.sn_hwperf_port_info]* %17, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.sn_hwperf_port_info, %struct.sn_hwperf_port_info* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.sn_hwperf_object_info* @sn_hwperf_findobj_id(%struct.sn_hwperf_object_info* %131, i32 %132, i32 %137)
  store %struct.sn_hwperf_object_info* %138, %struct.sn_hwperf_object_info** %15, align 8
  %139 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %140 = icmp ne %struct.sn_hwperf_object_info* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %130
  %142 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %143 = call i64 @SN_HWPERF_IS_ROUTER(%struct.sn_hwperf_object_info* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  store %struct.sn_hwperf_object_info* %146, %struct.sn_hwperf_object_info** %16, align 8
  br label %147

147:                                              ; preds = %145, %141, %130
  %148 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %149 = icmp ne %struct.sn_hwperf_object_info* %148, null
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %152 = call i64 @SN_HWPERF_FOREIGN(%struct.sn_hwperf_object_info* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %162, label %154

154:                                              ; preds = %150
  %155 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %156 = call i32 @SN_HWPERF_IS_NODE(%struct.sn_hwperf_object_info* %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %160 = call i64 @SN_HWPERF_IS_IONODE(%struct.sn_hwperf_object_info* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %154, %150, %147
  br label %198

163:                                              ; preds = %158
  %164 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %165 = call i64 @sn_hwperf_obj_to_cnode(%struct.sn_hwperf_object_info* %164)
  store i64 %165, i64* %21, align 8
  %166 = load i32, i32* %23, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %181, label %168

168:                                              ; preds = %163
  %169 = load i64, i64* %21, align 8
  %170 = call i64 @sn_hwperf_has_cpus(i64 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = load i64*, i64** %11, align 8
  %174 = icmp ne i64* %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i64, i64* %21, align 8
  %177 = load i64*, i64** %11, align 8
  store i64 %176, i64* %177, align 8
  br label %178

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %23, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %23, align 4
  br label %181

181:                                              ; preds = %178, %168, %163
  %182 = load i32, i32* %22, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %181
  %185 = load i64, i64* %21, align 8
  %186 = call i64 @sn_hwperf_has_mem(i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %184
  %189 = load i64*, i64** %10, align 8
  %190 = icmp ne i64* %189, null
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i64, i64* %21, align 8
  %193 = load i64*, i64** %10, align 8
  store i64 %192, i64* %193, align 8
  br label %194

194:                                              ; preds = %191, %188
  %195 = load i32, i32* %22, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %22, align 4
  br label %197

197:                                              ; preds = %194, %184, %181
  br label %198

198:                                              ; preds = %197, %162
  %199 = load i32, i32* %20, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %20, align 4
  br label %124

201:                                              ; preds = %124
  %202 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %16, align 8
  %203 = icmp ne %struct.sn_hwperf_object_info* %202, null
  br i1 %203, label %204, label %319

204:                                              ; preds = %201
  %205 = load i32, i32* %23, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %204
  %208 = load i32, i32* %22, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %319, label %210

210:                                              ; preds = %207, %204
  %211 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %16, align 8
  %212 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = mul i64 %214, 4
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %18, align 4
  %217 = load i32, i32* %18, align 4
  %218 = sext i32 %217 to i64
  %219 = icmp ugt i64 %218, 64
  %220 = zext i1 %219 to i32
  %221 = call i32 @BUG_ON(i32 %220)
  %222 = load i32, i32* @sn_hwperf_master_nasid, align 4
  %223 = load i32, i32* @SN_HWPERF_ENUM_PORTS, align 4
  %224 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %16, align 8
  %225 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load i32, i32* %18, align 4
  %228 = ptrtoint [16 x %struct.sn_hwperf_port_info]* %17 to i32
  %229 = call i32 @ia64_sn_hwperf_op(i32 %222, i32 %223, i64 %226, i32 %227, i32 %228, i32 0, i32 0, i32* null)
  store i32 %229, i32* %12, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load i32, i32* @SN_HWPERF_OP_OK, align 4
  %232 = icmp ne i32 %230, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %210
  %234 = load i32, i32* @EINVAL, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %12, align 4
  br label %402

236:                                              ; preds = %210
  store i32 0, i32* %20, align 4
  br label %237

237:                                              ; preds = %315, %236
  %238 = load i32, i32* %20, align 4
  %239 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %16, align 8
  %240 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = icmp slt i32 %238, %241
  br i1 %242, label %243, label %318

243:                                              ; preds = %237
  %244 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %7, align 8
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* %20, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [16 x %struct.sn_hwperf_port_info], [16 x %struct.sn_hwperf_port_info]* %17, i64 0, i64 %247
  %249 = getelementptr inbounds %struct.sn_hwperf_port_info, %struct.sn_hwperf_port_info* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call %struct.sn_hwperf_object_info* @sn_hwperf_findobj_id(%struct.sn_hwperf_object_info* %244, i32 %245, i32 %250)
  store %struct.sn_hwperf_object_info* %251, %struct.sn_hwperf_object_info** %15, align 8
  %252 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %253 = icmp ne %struct.sn_hwperf_object_info* %252, null
  br i1 %253, label %254, label %272

254:                                              ; preds = %243
  %255 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %256 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* %9, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %272, label %260

260:                                              ; preds = %254
  %261 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %262 = call i64 @SN_HWPERF_FOREIGN(%struct.sn_hwperf_object_info* %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %272, label %264

264:                                              ; preds = %260
  %265 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %266 = call i32 @SN_HWPERF_IS_NODE(%struct.sn_hwperf_object_info* %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %272

268:                                              ; preds = %264
  %269 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %270 = call i64 @SN_HWPERF_IS_IONODE(%struct.sn_hwperf_object_info* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %268, %264, %260, %254, %243
  br label %315

273:                                              ; preds = %268
  %274 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %15, align 8
  %275 = call i64 @sn_hwperf_obj_to_cnode(%struct.sn_hwperf_object_info* %274)
  store i64 %275, i64* %21, align 8
  %276 = load i32, i32* %23, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %291, label %278

278:                                              ; preds = %273
  %279 = load i64, i64* %21, align 8
  %280 = call i64 @sn_hwperf_has_cpus(i64 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %291

282:                                              ; preds = %278
  %283 = load i64*, i64** %11, align 8
  %284 = icmp ne i64* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i64, i64* %21, align 8
  %287 = load i64*, i64** %11, align 8
  store i64 %286, i64* %287, align 8
  br label %288

288:                                              ; preds = %285, %282
  %289 = load i32, i32* %23, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %23, align 4
  br label %291

291:                                              ; preds = %288, %278, %273
  %292 = load i32, i32* %22, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %307, label %294

294:                                              ; preds = %291
  %295 = load i64, i64* %21, align 8
  %296 = call i64 @sn_hwperf_has_mem(i64 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %307

298:                                              ; preds = %294
  %299 = load i64*, i64** %10, align 8
  %300 = icmp ne i64* %299, null
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = load i64, i64* %21, align 8
  %303 = load i64*, i64** %10, align 8
  store i64 %302, i64* %303, align 8
  br label %304

304:                                              ; preds = %301, %298
  %305 = load i32, i32* %22, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %22, align 4
  br label %307

307:                                              ; preds = %304, %294, %291
  %308 = load i32, i32* %23, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = load i32, i32* %22, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %318

314:                                              ; preds = %310, %307
  br label %315

315:                                              ; preds = %314, %272
  %316 = load i32, i32* %20, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %20, align 4
  br label %237

318:                                              ; preds = %313, %237
  br label %319

319:                                              ; preds = %318, %207, %201
  %320 = load i32, i32* %23, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %325

322:                                              ; preds = %319
  %323 = load i32, i32* %22, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %392, label %325

325:                                              ; preds = %322, %319
  store i32 0, i32* %19, align 4
  %326 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %7, align 8
  store %struct.sn_hwperf_object_info* %326, %struct.sn_hwperf_object_info** %14, align 8
  br label %327

327:                                              ; preds = %386, %325
  %328 = load i32, i32* %19, align 4
  %329 = load i32, i32* %8, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %391

331:                                              ; preds = %327
  %332 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %333 = call i64 @SN_HWPERF_FOREIGN(%struct.sn_hwperf_object_info* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %343, label %335

335:                                              ; preds = %331
  %336 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %337 = call i64 @SN_HWPERF_IS_IONODE(%struct.sn_hwperf_object_info* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %343, label %339

339:                                              ; preds = %335
  %340 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %341 = call i32 @SN_HWPERF_IS_NODE(%struct.sn_hwperf_object_info* %340)
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %344, label %343

343:                                              ; preds = %339, %335, %331
  br label %386

344:                                              ; preds = %339
  %345 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %346 = call i64 @sn_hwperf_obj_to_cnode(%struct.sn_hwperf_object_info* %345)
  store i64 %346, i64* %21, align 8
  %347 = load i32, i32* %23, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %362, label %349

349:                                              ; preds = %344
  %350 = load i64, i64* %21, align 8
  %351 = call i64 @sn_hwperf_has_cpus(i64 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %349
  %354 = load i64*, i64** %11, align 8
  %355 = icmp ne i64* %354, null
  br i1 %355, label %356, label %359

356:                                              ; preds = %353
  %357 = load i64, i64* %21, align 8
  %358 = load i64*, i64** %11, align 8
  store i64 %357, i64* %358, align 8
  br label %359

359:                                              ; preds = %356, %353
  %360 = load i32, i32* %23, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %23, align 4
  br label %362

362:                                              ; preds = %359, %349, %344
  %363 = load i32, i32* %22, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %378, label %365

365:                                              ; preds = %362
  %366 = load i64, i64* %21, align 8
  %367 = call i64 @sn_hwperf_has_mem(i64 %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %378

369:                                              ; preds = %365
  %370 = load i64*, i64** %10, align 8
  %371 = icmp ne i64* %370, null
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load i64, i64* %21, align 8
  %374 = load i64*, i64** %10, align 8
  store i64 %373, i64* %374, align 8
  br label %375

375:                                              ; preds = %372, %369
  %376 = load i32, i32* %22, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %22, align 4
  br label %378

378:                                              ; preds = %375, %365, %362
  %379 = load i32, i32* %23, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %385

381:                                              ; preds = %378
  %382 = load i32, i32* %22, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  br label %391

385:                                              ; preds = %381, %378
  br label %386

386:                                              ; preds = %385, %343
  %387 = load i32, i32* %19, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %19, align 4
  %389 = load %struct.sn_hwperf_object_info*, %struct.sn_hwperf_object_info** %14, align 8
  %390 = getelementptr inbounds %struct.sn_hwperf_object_info, %struct.sn_hwperf_object_info* %389, i32 1
  store %struct.sn_hwperf_object_info* %390, %struct.sn_hwperf_object_info** %14, align 8
  br label %327

391:                                              ; preds = %384, %327
  br label %392

392:                                              ; preds = %391, %322
  %393 = load i32, i32* %23, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %398

395:                                              ; preds = %392
  %396 = load i32, i32* %22, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %401, label %398

398:                                              ; preds = %395, %392
  %399 = load i32, i32* @ENODATA, align 4
  %400 = sub nsw i32 0, %399
  store i32 %400, i32* %12, align 4
  br label %401

401:                                              ; preds = %398, %395
  br label %402

402:                                              ; preds = %401, %233, %120, %94
  %403 = load i32, i32* %12, align 4
  store i32 %403, i32* %6, align 4
  br label %404

404:                                              ; preds = %402, %62, %27
  %405 = load i32, i32* %6, align 4
  ret i32 %405
}

declare dso_local i32 @cnode_possible(i64) #1

declare dso_local i64 @sn_hwperf_has_cpus(i64) #1

declare dso_local i64 @sn_hwperf_has_mem(i64) #1

declare dso_local i32 @SN_HWPERF_IS_NODE(%struct.sn_hwperf_object_info*) #1

declare dso_local i64 @SN_HWPERF_IS_IONODE(%struct.sn_hwperf_object_info*) #1

declare dso_local i64 @sn_hwperf_obj_to_cnode(%struct.sn_hwperf_object_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ia64_sn_hwperf_op(i32, i32, i64, i32, i32, i32, i32, i32*) #1

declare dso_local %struct.sn_hwperf_object_info* @sn_hwperf_findobj_id(%struct.sn_hwperf_object_info*, i32, i32) #1

declare dso_local i64 @SN_HWPERF_IS_ROUTER(%struct.sn_hwperf_object_info*) #1

declare dso_local i64 @SN_HWPERF_FOREIGN(%struct.sn_hwperf_object_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
