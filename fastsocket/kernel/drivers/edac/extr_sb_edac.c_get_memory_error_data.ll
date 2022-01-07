; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_get_memory_error_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_sb_edac.c_get_memory_error_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.sbridge_pvt* }
%struct.sbridge_pvt = type { i32*, i64, i64, i64, i32, %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@MAX_INTERLEAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error at TOLM area, on addr 0x%08Lx\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error at MMIOH area, on addr 0x%016Lx\00", align 1
@MAX_SAD = common dso_local global i32 0, align 4
@dram_rule = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Can't discover the memory socket\00", align 1
@interleave_list = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"SAD interleave #%d: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [83 x i8] c"mc#%d: Error detected on SAD#%d: address 0x%016Lx < 0x%016Lx, Interleave [%d:6]%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"XOR[18:16]\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't discover socket interleave\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"SAD interleave index: %d (wayness %d) = CPU socket %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"Struct for socket #%u wasn't initialized\00", align 1
@MAX_TAD = common dso_local global i32 0, align 4
@tad_dram_rule = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [34 x i8] c"Can't discover the memory channel\00", align 1
@tad_ch_nilv_offset = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [30 x i8] c"Can't discover the TAD target\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Invalid mirror set. Can't decode addr\00", align 1
@.str.13 = private unnamed_addr constant [140 x i8] c"TAD#%d: address 0x%016Lx < 0x%016Lx, socket interleave %d, channel interleave %d (offset 0x%08Lx), index %d, base ch: %d, ch mask: 0x%02lx\0A\00", align 1
@.str.14 = private unnamed_addr constant [74 x i8] c"Can't calculate ch addr: TAD offset 0x%08Lx is too high for addr 0x%08Lx!\00", align 1
@MAX_RIR_RANGES = common dso_local global i32 0, align 4
@rir_way_limit = common dso_local global i32* null, align 8
@.str.15 = private unnamed_addr constant [49 x i8] c"RIR#%d, limit: %Lu.%03Lu GB (0x%016Lx), way: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"Can't discover the memory rank for ch addr 0x%08Lx\00", align 1
@rir_offset = common dso_local global i32** null, align 8
@.str.17 = private unnamed_addr constant [72 x i8] c"RIR#%d: channel address 0x%08Lx < 0x%08Lx, RIR interleave %d, index %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, i64, i32*, i64*, i32*, i8*)* @get_memory_error_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_memory_error_data(%struct.mem_ctl_info* %0, i64 %1, i32* %2, i64* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_ctl_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.mem_ctl_info*, align 8
  %15 = alloca %struct.sbridge_pvt*, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %38 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %39 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %38, i32 0, i32 0
  %40 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %39, align 8
  store %struct.sbridge_pvt* %40, %struct.sbridge_pvt** %15, align 8
  %41 = load i32, i32* @MAX_INTERLEAVE, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %26, align 8
  %44 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %27, align 8
  store i64 0, i64* %36, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %47 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %46, i32 0, i32 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %6
  %51 = load i64, i64* %9, align 8
  %52 = icmp slt i64 %51, 4294967296
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %55 = load i64, i64* %9, align 8
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %59 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %57, i8* %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

62:                                               ; preds = %50, %6
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %65 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %70 = load i64, i64* %9, align 8
  %71 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  %72 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %74 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %72, i8* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

77:                                               ; preds = %62
  store i32 0, i32* %18, align 4
  br label %78

78:                                               ; preds = %117, %77
  %79 = load i32, i32* %18, align 4
  %80 = load i32, i32* @MAX_SAD, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %78
  %83 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %84 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** @dram_rule, align 8
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pci_read_config_dword(i32 %85, i32 %90, i32* %28)
  %92 = load i32, i32* %28, align 4
  %93 = call i32 @DRAM_RULE_ENABLE(i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %82
  br label %117

96:                                               ; preds = %82
  %97 = load i32, i32* %28, align 4
  %98 = call i64 @SAD_LIMIT(i32 %97)
  store i64 %98, i64* %35, align 8
  %99 = load i64, i64* %35, align 8
  %100 = load i64, i64* %36, align 8
  %101 = icmp sle i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %96
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %104 = call i32 (i8*, i8*, ...) @sprintf(i8* %103, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %107 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %105, i8* %106)
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

110:                                              ; preds = %96
  %111 = load i64, i64* %9, align 8
  %112 = load i64, i64* %35, align 8
  %113 = icmp sle i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %110
  br label %120

115:                                              ; preds = %110
  %116 = load i64, i64* %35, align 8
  store i64 %116, i64* %36, align 8
  br label %117

117:                                              ; preds = %115, %95
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %18, align 4
  br label %78

120:                                              ; preds = %114, %78
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* @MAX_SAD, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %132

124:                                              ; preds = %120
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %126 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %128 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %129 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %127, i8* %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

132:                                              ; preds = %120
  %133 = load i32, i32* %28, align 4
  %134 = call i8* @get_dram_attr(i32 %133)
  store i8* %134, i8** %13, align 8
  %135 = load i32, i32* %28, align 4
  %136 = call i32 @INTERLEAVE_MODE(i32 %135)
  store i32 %136, i32* %25, align 4
  %137 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %138 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** @interleave_list, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pci_read_config_dword(i32 %139, i32 %144, i32* %28)
  %146 = load i32, i32* %28, align 4
  %147 = call i32 @sad_pkg(i32 %146, i32 0)
  store i32 %147, i32* %22, align 4
  store i32 0, i32* %20, align 4
  br label %148

148:                                              ; preds = %175, %132
  %149 = load i32, i32* %20, align 4
  %150 = icmp slt i32 %149, 8
  br i1 %150, label %151, label %178

151:                                              ; preds = %148
  %152 = load i32, i32* %20, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %151
  %155 = load i32, i32* %22, align 4
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* %20, align 4
  %158 = call i32 @sad_pkg(i32 %156, i32 %157)
  %159 = icmp eq i32 %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %178

161:                                              ; preds = %154, %151
  %162 = load i32, i32* %28, align 4
  %163 = load i32, i32* %20, align 4
  %164 = call i32 @sad_pkg(i32 %162, i32 %163)
  %165 = load i32, i32* %20, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %44, i64 %166
  store i32 %164, i32* %167, align 4
  %168 = load i32, i32* %20, align 4
  %169 = load i32, i32* %20, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %44, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = zext i32 %172 to i64
  %174 = call i32 (i8*, i32, i64, ...) @debugf0(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %168, i64 %173)
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %20, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %20, align 4
  br label %148

178:                                              ; preds = %160, %148
  %179 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %180 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %179, i32 0, i32 5
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %18, align 4
  %185 = sext i32 %184 to i64
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %35, align 8
  %188 = load i32, i32* %20, align 4
  %189 = add nsw i32 %188, 7
  %190 = load i32, i32* %28, align 4
  %191 = call i32 @INTERLEAVE_MODE(i32 %190)
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)
  %195 = call i32 (i8*, i32, i64, ...) @debugf0(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.4, i64 0, i64 0), i32 %183, i64 %185, i64 %186, i64 %187, i32 %189, i8* %194)
  %196 = load i32, i32* %25, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %178
  %199 = load i64, i64* %9, align 8
  %200 = ashr i64 %199, 6
  %201 = load i64, i64* %9, align 8
  %202 = ashr i64 %201, 16
  %203 = xor i64 %200, %202
  %204 = and i64 %203, 7
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %23, align 4
  br label %211

206:                                              ; preds = %178
  %207 = load i64, i64* %9, align 8
  %208 = ashr i64 %207, 6
  %209 = and i64 %208, 7
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %23, align 4
  br label %211

211:                                              ; preds = %206, %198
  %212 = load i32, i32* %20, align 4
  switch i32 %212, label %221 [
    i32 1, label %213
    i32 2, label %214
    i32 4, label %217
    i32 8, label %220
  ]

213:                                              ; preds = %211
  store i32 0, i32* %23, align 4
  br label %229

214:                                              ; preds = %211
  %215 = load i32, i32* %23, align 4
  %216 = and i32 %215, 1
  store i32 %216, i32* %23, align 4
  br label %229

217:                                              ; preds = %211
  %218 = load i32, i32* %23, align 4
  %219 = and i32 %218, 3
  store i32 %219, i32* %23, align 4
  br label %229

220:                                              ; preds = %211
  br label %229

221:                                              ; preds = %211
  %222 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %223 = call i32 (i8*, i8*, ...) @sprintf(i8* %222, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %224 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %225 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %226 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %224, i8* %225)
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

229:                                              ; preds = %220, %217, %214, %213
  %230 = load i32, i32* %23, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %44, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %10, align 8
  store i32 %233, i32* %234, align 4
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %20, align 4
  %237 = sext i32 %236 to i64
  %238 = load i32*, i32** %10, align 8
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i8*, i32, i64, ...) @debugf0(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %235, i64 %237, i32 %239)
  %241 = load i32*, i32** %10, align 8
  %242 = load i32, i32* %241, align 4
  %243 = call %struct.mem_ctl_info* @get_mci_for_node_id(i32 %242)
  store %struct.mem_ctl_info* %243, %struct.mem_ctl_info** %14, align 8
  %244 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %14, align 8
  %245 = icmp ne %struct.mem_ctl_info* %244, null
  br i1 %245, label %256, label %246

246:                                              ; preds = %229
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %248 = load i32*, i32** %10, align 8
  %249 = load i32, i32* %248, align 4
  %250 = call i32 (i8*, i8*, ...) @sprintf(i8* %247, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %249)
  %251 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %252 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %253 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %251, i8* %252)
  %254 = load i32, i32* @EINVAL, align 4
  %255 = sub nsw i32 0, %254
  store i32 %255, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

256:                                              ; preds = %229
  %257 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %14, align 8
  store %struct.mem_ctl_info* %257, %struct.mem_ctl_info** %8, align 8
  %258 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %259 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %258, i32 0, i32 0
  %260 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %259, align 8
  store %struct.sbridge_pvt* %260, %struct.sbridge_pvt** %15, align 8
  store i64 0, i64* %36, align 8
  store i32 0, i32* %19, align 4
  br label %261

261:                                              ; preds = %295, %256
  %262 = load i32, i32* %19, align 4
  %263 = load i32, i32* @MAX_TAD, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %298

265:                                              ; preds = %261
  %266 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %267 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = load i32*, i32** @tad_dram_rule, align 8
  %270 = load i32, i32* %19, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %269, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @pci_read_config_dword(i32 %268, i32 %273, i32* %28)
  %275 = load i32, i32* %28, align 4
  %276 = call i64 @TAD_LIMIT(i32 %275)
  store i64 %276, i64* %35, align 8
  %277 = load i64, i64* %35, align 8
  %278 = load i64, i64* %36, align 8
  %279 = icmp sle i64 %277, %278
  br i1 %279, label %280, label %288

280:                                              ; preds = %265
  %281 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %282 = call i32 (i8*, i8*, ...) @sprintf(i8* %281, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  %283 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %284 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %285 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %283, i8* %284)
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

288:                                              ; preds = %265
  %289 = load i64, i64* %9, align 8
  %290 = load i64, i64* %35, align 8
  %291 = icmp sle i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %288
  br label %298

293:                                              ; preds = %288
  %294 = load i64, i64* %35, align 8
  store i64 %294, i64* %36, align 8
  br label %295

295:                                              ; preds = %293
  %296 = load i32, i32* %19, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %19, align 4
  br label %261

298:                                              ; preds = %292, %261
  %299 = load i32, i32* %28, align 4
  %300 = call i32 @TAD_CH(i32 %299)
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %29, align 4
  %302 = load i32, i32* %28, align 4
  %303 = call i32 @TAD_SOCK(i32 %302)
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %30, align 4
  %305 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %306 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %305, i32 0, i32 0
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32*, i32** @tad_ch_nilv_offset, align 8
  %311 = load i32, i32* %19, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @pci_read_config_dword(i32 %309, i32 %314, i32* %31)
  %316 = load i32, i32* %29, align 4
  %317 = icmp eq i32 %316, 3
  br i1 %317, label %318, label %322

318:                                              ; preds = %298
  %319 = load i64, i64* %9, align 8
  %320 = ashr i64 %319, 6
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %23, align 4
  br label %329

322:                                              ; preds = %298
  %323 = load i64, i64* %9, align 8
  %324 = load i32, i32* %30, align 4
  %325 = add nsw i32 6, %324
  %326 = zext i32 %325 to i64
  %327 = ashr i64 %323, %326
  %328 = trunc i64 %327 to i32
  store i32 %328, i32* %23, align 4
  br label %329

329:                                              ; preds = %322, %318
  %330 = load i32, i32* %23, align 4
  %331 = load i32, i32* %29, align 4
  %332 = srem i32 %330, %331
  store i32 %332, i32* %23, align 4
  %333 = load i32, i32* %23, align 4
  switch i32 %333, label %346 [
    i32 0, label %334
    i32 1, label %337
    i32 2, label %340
    i32 3, label %343
  ]

334:                                              ; preds = %329
  %335 = load i32, i32* %28, align 4
  %336 = call i32 @TAD_TGT0(i32 %335)
  store i32 %336, i32* %24, align 4
  br label %354

337:                                              ; preds = %329
  %338 = load i32, i32* %28, align 4
  %339 = call i32 @TAD_TGT1(i32 %338)
  store i32 %339, i32* %24, align 4
  br label %354

340:                                              ; preds = %329
  %341 = load i32, i32* %28, align 4
  %342 = call i32 @TAD_TGT2(i32 %341)
  store i32 %342, i32* %24, align 4
  br label %354

343:                                              ; preds = %329
  %344 = load i32, i32* %28, align 4
  %345 = call i32 @TAD_TGT3(i32 %344)
  store i32 %345, i32* %24, align 4
  br label %354

346:                                              ; preds = %329
  %347 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %348 = call i32 (i8*, i8*, ...) @sprintf(i8* %347, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0))
  %349 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %350 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %351 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %349, i8* %350)
  %352 = load i32, i32* @EINVAL, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

354:                                              ; preds = %343, %340, %337, %334
  %355 = load i32, i32* %24, align 4
  %356 = shl i32 1, %355
  %357 = sext i32 %356 to i64
  %358 = load i64*, i64** %11, align 8
  store i64 %357, i64* %358, align 8
  %359 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %360 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %359, i32 0, i32 3
  %361 = load i64, i64* %360, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %388

363:                                              ; preds = %354
  %364 = load i32, i32* %24, align 4
  %365 = add nsw i32 %364, 2
  %366 = srem i32 %365, 4
  %367 = shl i32 1, %366
  %368 = sext i32 %367 to i64
  %369 = load i64*, i64** %11, align 8
  %370 = load i64, i64* %369, align 8
  %371 = or i64 %370, %368
  store i64 %371, i64* %369, align 8
  %372 = load i32, i32* %29, align 4
  switch i32 %372, label %379 [
    i32 2, label %373
    i32 4, label %373
  ]

373:                                              ; preds = %363, %363
  %374 = load i32, i32* %30, align 4
  %375 = load i32, i32* %29, align 4
  %376 = ashr i32 %375, 1
  %377 = mul nsw i32 %374, %376
  %378 = shl i32 1, %377
  store i32 %378, i32* %21, align 4
  br label %387

379:                                              ; preds = %363
  %380 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %381 = call i32 (i8*, i8*, ...) @sprintf(i8* %380, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0))
  %382 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %383 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %384 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %382, i8* %383)
  %385 = load i32, i32* @EINVAL, align 4
  %386 = sub nsw i32 0, %385
  store i32 %386, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

387:                                              ; preds = %373
  br label %393

388:                                              ; preds = %354
  %389 = load i32, i32* %30, align 4
  %390 = shl i32 1, %389
  %391 = load i32, i32* %29, align 4
  %392 = mul nsw i32 %390, %391
  store i32 %392, i32* %21, align 4
  br label %393

393:                                              ; preds = %388, %387
  %394 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %395 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %407

398:                                              ; preds = %393
  %399 = load i32, i32* %24, align 4
  %400 = add nsw i32 %399, 1
  %401 = srem i32 %400, 4
  %402 = shl i32 1, %401
  %403 = sext i32 %402 to i64
  %404 = load i64*, i64** %11, align 8
  %405 = load i64, i64* %404, align 8
  %406 = or i64 %405, %403
  store i64 %406, i64* %404, align 8
  br label %407

407:                                              ; preds = %398, %393
  %408 = load i32, i32* %31, align 4
  %409 = call i64 @TAD_OFFSET(i32 %408)
  store i64 %409, i64* %34, align 8
  %410 = load i32, i32* %19, align 4
  %411 = load i64, i64* %9, align 8
  %412 = load i64, i64* %35, align 8
  %413 = load i32, i32* %28, align 4
  %414 = call i32 @TAD_SOCK(i32 %413)
  %415 = load i32, i32* %29, align 4
  %416 = load i64, i64* %34, align 8
  %417 = load i32, i32* %23, align 4
  %418 = load i32, i32* %24, align 4
  %419 = load i64*, i64** %11, align 8
  %420 = load i64, i64* %419, align 8
  %421 = call i32 (i8*, i32, i64, ...) @debugf0(i8* getelementptr inbounds ([140 x i8], [140 x i8]* @.str.13, i64 0, i64 0), i32 %410, i64 %411, i64 %412, i32 %414, i32 %415, i64 %416, i32 %417, i32 %418, i64 %420)
  %422 = load i64, i64* %34, align 8
  %423 = load i64, i64* %9, align 8
  %424 = icmp sgt i64 %422, %423
  br i1 %424, label %425, label %435

425:                                              ; preds = %407
  %426 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %427 = load i64, i64* %34, align 8
  %428 = load i64, i64* %9, align 8
  %429 = call i32 (i8*, i8*, ...) @sprintf(i8* %426, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.14, i64 0, i64 0), i64 %427, i64 %428)
  %430 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %431 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %432 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %430, i8* %431)
  %433 = load i32, i32* @EINVAL, align 4
  %434 = sub nsw i32 0, %433
  store i32 %434, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

435:                                              ; preds = %407
  %436 = load i64, i64* %34, align 8
  %437 = load i64, i64* %9, align 8
  %438 = sub nsw i64 %437, %436
  store i64 %438, i64* %9, align 8
  %439 = load i64, i64* %9, align 8
  %440 = and i64 %439, 127
  store i64 %440, i64* %33, align 8
  %441 = load i64, i64* %9, align 8
  %442 = ashr i64 %441, 6
  store i64 %442, i64* %9, align 8
  %443 = load i32, i32* %21, align 4
  %444 = sext i32 %443 to i64
  %445 = load i64, i64* %9, align 8
  %446 = sdiv i64 %445, %444
  store i64 %446, i64* %9, align 8
  %447 = load i64, i64* %9, align 8
  %448 = shl i64 %447, 6
  %449 = load i64, i64* %33, align 8
  %450 = or i64 %449, %448
  store i64 %450, i64* %33, align 8
  store i32 0, i32* %17, align 4
  br label %451

451:                                              ; preds = %493, %435
  %452 = load i32, i32* %17, align 4
  %453 = load i32, i32* @MAX_RIR_RANGES, align 4
  %454 = icmp slt i32 %452, %453
  br i1 %454, label %455, label %496

455:                                              ; preds = %451
  %456 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %457 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %456, i32 0, i32 0
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %24, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = load i32*, i32** @rir_way_limit, align 8
  %464 = load i32, i32* %17, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds i32, i32* %463, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = call i32 @pci_read_config_dword(i32 %462, i32 %467, i32* %28)
  %469 = load i32, i32* %28, align 4
  %470 = call i32 @IS_RIR_VALID(i32 %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %473, label %472

472:                                              ; preds = %455
  br label %493

473:                                              ; preds = %455
  %474 = load i32, i32* %28, align 4
  %475 = call i64 @RIR_LIMIT(i32 %474)
  store i64 %475, i64* %35, align 8
  %476 = load i32, i32* %17, align 4
  %477 = load i64, i64* %35, align 8
  %478 = ashr i64 %477, 20
  %479 = sdiv i64 %478, 1000
  %480 = load i64, i64* %35, align 8
  %481 = ashr i64 %480, 20
  %482 = srem i64 %481, 1000
  %483 = load i64, i64* %35, align 8
  %484 = load i32, i32* %28, align 4
  %485 = call i32 @RIR_WAY(i32 %484)
  %486 = shl i32 1, %485
  %487 = call i32 (i8*, i32, i64, ...) @debugf0(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.15, i64 0, i64 0), i32 %476, i64 %479, i64 %482, i64 %483, i32 %486)
  %488 = load i64, i64* %33, align 8
  %489 = load i64, i64* %35, align 8
  %490 = icmp sle i64 %488, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %473
  br label %496

492:                                              ; preds = %473
  br label %493

493:                                              ; preds = %492, %472
  %494 = load i32, i32* %17, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %17, align 4
  br label %451

496:                                              ; preds = %491, %451
  %497 = load i32, i32* %17, align 4
  %498 = load i32, i32* @MAX_RIR_RANGES, align 4
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %500, label %509

500:                                              ; preds = %496
  %501 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %502 = load i64, i64* %33, align 8
  %503 = call i32 (i8*, i8*, ...) @sprintf(i8* %501, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0), i64 %502)
  %504 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %8, align 8
  %505 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %506 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %504, i8* %505)
  %507 = load i32, i32* @EINVAL, align 4
  %508 = sub nsw i32 0, %507
  store i32 %508, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

509:                                              ; preds = %496
  %510 = load i32, i32* %28, align 4
  %511 = call i32 @RIR_WAY(i32 %510)
  store i32 %511, i32* %32, align 4
  %512 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %513 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %512, i32 0, i32 1
  %514 = load i64, i64* %513, align 8
  %515 = icmp ne i64 %514, 0
  br i1 %515, label %516, label %520

516:                                              ; preds = %509
  %517 = load i64, i64* %33, align 8
  %518 = ashr i64 %517, 6
  %519 = trunc i64 %518 to i32
  store i32 %519, i32* %23, align 4
  br label %524

520:                                              ; preds = %509
  %521 = load i64, i64* %33, align 8
  %522 = ashr i64 %521, 13
  %523 = trunc i64 %522 to i32
  store i32 %523, i32* %23, align 4
  br label %524

524:                                              ; preds = %520, %516
  %525 = load i32, i32* %32, align 4
  %526 = shl i32 1, %525
  %527 = load i32, i32* %23, align 4
  %528 = srem i32 %527, %526
  store i32 %528, i32* %23, align 4
  %529 = load %struct.sbridge_pvt*, %struct.sbridge_pvt** %15, align 8
  %530 = getelementptr inbounds %struct.sbridge_pvt, %struct.sbridge_pvt* %529, i32 0, i32 0
  %531 = load i32*, i32** %530, align 8
  %532 = load i32, i32* %24, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = load i32**, i32*** @rir_offset, align 8
  %537 = load i32, i32* %17, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds i32*, i32** %536, i64 %538
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* %23, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds i32, i32* %540, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = call i32 @pci_read_config_dword(i32 %535, i32 %544, i32* %28)
  %546 = load i32, i32* %28, align 4
  %547 = call i32 @RIR_RNK_TGT(i32 %546)
  %548 = load i32*, i32** %12, align 8
  store i32 %547, i32* %548, align 4
  %549 = load i32, i32* %17, align 4
  %550 = load i64, i64* %33, align 8
  %551 = load i64, i64* %35, align 8
  %552 = load i32, i32* %32, align 4
  %553 = load i32, i32* %23, align 4
  %554 = call i32 (i8*, i32, i64, ...) @debugf0(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.17, i64 0, i64 0), i32 %549, i64 %550, i64 %551, i32 %552, i32 %553)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %37, align 4
  br label %555

555:                                              ; preds = %524, %500, %425, %379, %346, %280, %246, %221, %124, %102, %68, %53
  %556 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %556)
  %557 = load i32, i32* %7, align 4
  ret i32 %557
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info*, i8*) #2

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #2

declare dso_local i32 @DRAM_RULE_ENABLE(i32) #2

declare dso_local i64 @SAD_LIMIT(i32) #2

declare dso_local i8* @get_dram_attr(i32) #2

declare dso_local i32 @INTERLEAVE_MODE(i32) #2

declare dso_local i32 @sad_pkg(i32, i32) #2

declare dso_local i32 @debugf0(i8*, i32, i64, ...) #2

declare dso_local %struct.mem_ctl_info* @get_mci_for_node_id(i32) #2

declare dso_local i64 @TAD_LIMIT(i32) #2

declare dso_local i32 @TAD_CH(i32) #2

declare dso_local i32 @TAD_SOCK(i32) #2

declare dso_local i32 @TAD_TGT0(i32) #2

declare dso_local i32 @TAD_TGT1(i32) #2

declare dso_local i32 @TAD_TGT2(i32) #2

declare dso_local i32 @TAD_TGT3(i32) #2

declare dso_local i64 @TAD_OFFSET(i32) #2

declare dso_local i32 @IS_RIR_VALID(i32) #2

declare dso_local i64 @RIR_LIMIT(i32) #2

declare dso_local i32 @RIR_WAY(i32) #2

declare dso_local i32 @RIR_RNK_TGT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
