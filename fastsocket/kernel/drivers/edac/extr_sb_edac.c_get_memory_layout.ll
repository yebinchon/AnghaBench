; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_get_memory_layout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_get_memory_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { i32, i32, i32*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TOLM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TOLM: %Lu.%03Lu GB (0x%016Lx)\0A\00", align 1
@TOHM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"TOHM: %Lu.%03Lu GB (0x%016Lx)\00", align 1
@MAX_SAD = common dso_local global i32 0, align 4
@dram_rule = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"SAD#%d %s up to %Lu.%03Lu GB (0x%016Lx) %s reg=0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Interleave: 8:6\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Interleave: [8:6]XOR[18:16]\00", align 1
@interleave_list = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"SAD#%d, interleave #%d: %d\0A\00", align 1
@MAX_TAD = common dso_local global i32 0, align 4
@tad_dram_rule = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [116 x i8] c"TAD#%d: up to %Lu.%03Lu GB (0x%016Lx), socket interleave %d, memory interleave %d, TGT: %d, %d, %d, %d, reg=0x%08x\0A\00", align 1
@NUM_CHANNELS = common dso_local global i32 0, align 4
@tad_ch_nilv_offset = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [60 x i8] c"TAD CH#%d, offset #%d: %Lu.%03Lu GB (0x%016Lx), reg=0x%08x\0A\00", align 1
@MAX_RIR_RANGES = common dso_local global i32 0, align 4
@rir_way_limit = common dso_local global i32* null, align 8
@.str.8 = private unnamed_addr constant [67 x i8] c"CH#%d RIR#%d, limit: %Lu.%03Lu GB (0x%016Lx), way: %d, reg=0x%08x\0A\00", align 1
@rir_offset = common dso_local global i32** null, align 8
@.str.9 = private unnamed_addr constant [75 x i8] c"CH#%d RIR#%d INTL#%d, offset %Lu.%03Lu GB (0x%016Lx), tgt: %d, reg=0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @get_memory_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_memory_layout(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.sbridge_pvt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 0
  %17 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %16, align 8
  store %struct.sbridge_pvt* %17, %struct.sbridge_pvt** %3, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %19 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TOLM, align 4
  %22 = call i32 @pci_read_config_dword(i32 %20, i32 %21, i32* %10)
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @GET_TOLM(i32 %23)
  %25 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %26 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %28 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 1, %29
  %31 = ashr i32 %30, 20
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sdiv i32 %32, 1000
  %34 = load i32, i32* %13, align 4
  %35 = srem i32 %34, 1000
  %36 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %37 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, i32, i32, i32, ...) @debugf0(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %35, i32 %38)
  %40 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %41 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @TOHM, align 4
  %44 = call i32 @pci_read_config_dword(i32 %42, i32 %43, i32* %10)
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @GET_TOHM(i32 %45)
  %47 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %48 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %50 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 1, %51
  %53 = ashr i32 %52, 20
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = sdiv i32 %54, 1000
  %56 = load i32, i32* %13, align 4
  %57 = srem i32 %56, 1000
  %58 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %59 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i32, i32, i32, ...) @debugf0(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %57, i32 %60)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %143, %1
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MAX_SAD, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %146

66:                                               ; preds = %62
  %67 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %68 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** @dram_rule, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @pci_read_config_dword(i32 %69, i32 %74, i32* %10)
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @SAD_LIMIT(i32 %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @DRAM_RULE_ENABLE(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %66
  br label %143

82:                                               ; preds = %66
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp sle i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  br label %146

87:                                               ; preds = %82
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  %90 = ashr i32 %89, 20
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @get_dram_attr(i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = sdiv i32 %94, 1000
  %96 = load i32, i32* %13, align 4
  %97 = srem i32 %96, 1000
  %98 = load i32, i32* %13, align 4
  %99 = shl i32 %98, 20
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @INTERLEAVE_MODE(i32 %100)
  %102 = icmp ne i64 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0)
  %105 = load i32, i32* %10, align 4
  %106 = call i32 (i8*, i32, i32, i32, ...) @debugf0(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %91, i32 %93, i32 %95, i32 %97, i32 %99, i8* %104, i32 %105)
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %12, align 4
  %108 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %109 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** @interleave_list, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @pci_read_config_dword(i32 %110, i32 %115, i32* %10)
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @sad_pkg(i32 %117, i32 0)
  store i32 %118, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %139, %87
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 8
  br i1 %121, label %122, label %142

122:                                              ; preds = %119
  %123 = load i32, i32* %5, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @sad_pkg(i32 %127, i32 %128)
  %130 = icmp eq i32 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %142

132:                                              ; preds = %125, %122
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @sad_pkg(i32 %135, i32 %136)
  %138 = call i32 (i8*, i32, i32, i32, ...) @debugf0(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %133, i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %5, align 4
  br label %119

142:                                              ; preds = %131, %119
  br label %143

143:                                              ; preds = %142, %81
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %62

146:                                              ; preds = %86, %62
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %147

147:                                              ; preds = %199, %146
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @MAX_TAD, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %202

151:                                              ; preds = %147
  %152 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %153 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32*, i32** @tad_dram_rule, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @pci_read_config_dword(i32 %154, i32 %159, i32* %10)
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @TAD_LIMIT(i32 %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %12, align 4
  %165 = icmp sle i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %151
  br label %202

167:                                              ; preds = %151
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, 1
  %170 = ashr i32 %169, 20
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %13, align 4
  %173 = sdiv i32 %172, 1000
  %174 = load i32, i32* %13, align 4
  %175 = srem i32 %174, 1000
  %176 = load i32, i32* %13, align 4
  %177 = shl i32 %176, 20
  %178 = load i32, i32* %10, align 4
  %179 = call i64 @TAD_SOCK(i32 %178)
  %180 = trunc i64 %179 to i32
  %181 = load i32, i32* %10, align 4
  %182 = call i64 @TAD_CH(i32 %181)
  %183 = trunc i64 %182 to i32
  %184 = load i32, i32* %10, align 4
  %185 = call i64 @TAD_TGT0(i32 %184)
  %186 = trunc i64 %185 to i32
  %187 = load i32, i32* %10, align 4
  %188 = call i64 @TAD_TGT1(i32 %187)
  %189 = trunc i64 %188 to i32
  %190 = load i32, i32* %10, align 4
  %191 = call i64 @TAD_TGT2(i32 %190)
  %192 = trunc i64 %191 to i32
  %193 = load i32, i32* %10, align 4
  %194 = call i64 @TAD_TGT3(i32 %193)
  %195 = trunc i64 %194 to i32
  %196 = load i32, i32* %10, align 4
  %197 = call i32 (i8*, i32, i32, i32, ...) @debugf0(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.6, i64 0, i64 0), i32 %171, i32 %173, i32 %175, i32 %177, i32 %180, i32 %183, i32 %186, i32 %189, i32 %192, i32 %195, i32 %196)
  %198 = load i32, i32* %13, align 4
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %167
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %147

202:                                              ; preds = %166, %147
  store i32 0, i32* %4, align 4
  br label %203

203:                                              ; preds = %254, %202
  %204 = load i32, i32* %4, align 4
  %205 = load i32, i32* @NUM_CHANNELS, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %257

207:                                              ; preds = %203
  %208 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %209 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %208, i32 0, i32 3
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = load i32, i32* %4, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %218, label %217

217:                                              ; preds = %207
  br label %254

218:                                              ; preds = %207
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %250, %218
  %220 = load i32, i32* %5, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %253

223:                                              ; preds = %219
  %224 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %225 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %4, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** @tad_ch_nilv_offset, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @pci_read_config_dword(i32 %230, i32 %235, i32* %10)
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @TAD_OFFSET(i32 %237)
  %239 = ashr i32 %238, 20
  store i32 %239, i32* %13, align 4
  %240 = load i32, i32* %4, align 4
  %241 = load i32, i32* %5, align 4
  %242 = load i32, i32* %13, align 4
  %243 = sdiv i32 %242, 1000
  %244 = load i32, i32* %13, align 4
  %245 = srem i32 %244, 1000
  %246 = load i32, i32* %13, align 4
  %247 = shl i32 %246, 20
  %248 = load i32, i32* %10, align 4
  %249 = call i32 (i8*, i32, i32, i32, ...) @debugf0(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0), i32 %240, i32 %241, i32 %243, i32 %245, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %223
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %219

253:                                              ; preds = %219
  br label %254

254:                                              ; preds = %253, %217
  %255 = load i32, i32* %4, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %4, align 4
  br label %203

257:                                              ; preds = %203
  store i32 0, i32* %4, align 4
  br label %258

258:                                              ; preds = %361, %257
  %259 = load i32, i32* %4, align 4
  %260 = load i32, i32* @NUM_CHANNELS, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %364

262:                                              ; preds = %258
  %263 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %264 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %263, i32 0, i32 3
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** %264, align 8
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %262
  br label %361

273:                                              ; preds = %262
  store i32 0, i32* %5, align 4
  br label %274

274:                                              ; preds = %357, %273
  %275 = load i32, i32* %5, align 4
  %276 = load i32, i32* @MAX_RIR_RANGES, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %360

278:                                              ; preds = %274
  %279 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %280 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %279, i32 0, i32 2
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %4, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load i32*, i32** @rir_way_limit, align 8
  %287 = load i32, i32* %5, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %286, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @pci_read_config_dword(i32 %285, i32 %290, i32* %10)
  %292 = load i32, i32* %10, align 4
  %293 = call i32 @IS_RIR_VALID(i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %278
  br label %357

296:                                              ; preds = %278
  %297 = load i32, i32* %10, align 4
  %298 = call i32 @RIR_LIMIT(i32 %297)
  %299 = ashr i32 %298, 20
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @RIR_WAY(i32 %300)
  %302 = shl i32 1, %301
  store i32 %302, i32* %14, align 4
  %303 = load i32, i32* %4, align 4
  %304 = load i32, i32* %5, align 4
  %305 = load i32, i32* %13, align 4
  %306 = sdiv i32 %305, 1000
  %307 = load i32, i32* %13, align 4
  %308 = srem i32 %307, 1000
  %309 = load i32, i32* %13, align 4
  %310 = shl i32 %309, 20
  %311 = load i32, i32* %14, align 4
  %312 = load i32, i32* %10, align 4
  %313 = call i32 (i8*, i32, i32, i32, ...) @debugf0(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i32 %303, i32 %304, i32 %306, i32 %308, i32 %310, i32 %311, i32 %312)
  store i32 0, i32* %6, align 4
  br label %314

314:                                              ; preds = %353, %296
  %315 = load i32, i32* %6, align 4
  %316 = load i32, i32* %14, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %356

318:                                              ; preds = %314
  %319 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %3, align 8
  %320 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %4, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32**, i32*** @rir_offset, align 8
  %327 = load i32, i32* %5, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32*, i32** %326, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @pci_read_config_dword(i32 %325, i32 %334, i32* %10)
  %336 = load i32, i32* %10, align 4
  %337 = call i32 @RIR_OFFSET(i32 %336)
  %338 = shl i32 %337, 6
  store i32 %338, i32* %13, align 4
  %339 = load i32, i32* %4, align 4
  %340 = load i32, i32* %5, align 4
  %341 = load i32, i32* %6, align 4
  %342 = load i32, i32* %13, align 4
  %343 = sdiv i32 %342, 1000
  %344 = load i32, i32* %13, align 4
  %345 = srem i32 %344, 1000
  %346 = load i32, i32* %13, align 4
  %347 = shl i32 %346, 20
  %348 = load i32, i32* %10, align 4
  %349 = call i64 @RIR_RNK_TGT(i32 %348)
  %350 = trunc i64 %349 to i32
  %351 = load i32, i32* %10, align 4
  %352 = call i32 (i8*, i32, i32, i32, ...) @debugf0(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.9, i64 0, i64 0), i32 %339, i32 %340, i32 %341, i32 %343, i32 %345, i32 %347, i32 %350, i32 %351)
  br label %353

353:                                              ; preds = %318
  %354 = load i32, i32* %6, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %6, align 4
  br label %314

356:                                              ; preds = %314
  br label %357

357:                                              ; preds = %356, %295
  %358 = load i32, i32* %5, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %5, align 4
  br label %274

360:                                              ; preds = %274
  br label %361

361:                                              ; preds = %360, %272
  %362 = load i32, i32* %4, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %4, align 4
  br label %258

364:                                              ; preds = %258
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @GET_TOLM(i32) #1

declare dso_local i32 @debugf0(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @GET_TOHM(i32) #1

declare dso_local i32 @SAD_LIMIT(i32) #1

declare dso_local i32 @DRAM_RULE_ENABLE(i32) #1

declare dso_local i32 @get_dram_attr(i32) #1

declare dso_local i64 @INTERLEAVE_MODE(i32) #1

declare dso_local i32 @sad_pkg(i32, i32) #1

declare dso_local i32 @TAD_LIMIT(i32) #1

declare dso_local i64 @TAD_SOCK(i32) #1

declare dso_local i64 @TAD_CH(i32) #1

declare dso_local i64 @TAD_TGT0(i32) #1

declare dso_local i64 @TAD_TGT1(i32) #1

declare dso_local i64 @TAD_TGT2(i32) #1

declare dso_local i64 @TAD_TGT3(i32) #1

declare dso_local i32 @TAD_OFFSET(i32) #1

declare dso_local i32 @IS_RIR_VALID(i32) #1

declare dso_local i32 @RIR_LIMIT(i32) #1

declare dso_local i32 @RIR_WAY(i32) #1

declare dso_local i32 @RIR_OFFSET(i32) #1

declare dso_local i64 @RIR_RNK_TGT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
