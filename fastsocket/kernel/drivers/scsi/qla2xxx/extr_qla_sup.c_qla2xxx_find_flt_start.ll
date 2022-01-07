; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_find_flt_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2xxx_find_flt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.req_que** }
%struct.req_que = type { i64 }
%struct.qla_flt_location = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"DEF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@__const.qla2xxx_find_flt_start.locations = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)], align 16
@FA_FLASH_LAYOUT_ADDR_24 = common dso_local global i32 0, align 4
@FA_FLASH_LAYOUT_ADDR = common dso_local global i32 0, align 4
@FA_FLASH_LAYOUT_ADDR_81 = common dso_local global i32 0, align 4
@FA_FLASH_LAYOUT_ADDR_82 = common dso_local global i32 0, align 4
@FA_FLASH_LAYOUT_ADDR_83 = common dso_local global i32 0, align 4
@BIT_7 = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Inconsistent FLTL detected: checksum=0x%x.\0A\00", align 1
@ql_dbg_init = common dso_local global i64 0, align 8
@ql_dbg_buffer = common dso_local global i64 0, align 8
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"FLTL[%s] = 0x%x.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*)* @qla2xxx_find_flt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_find_flt_start(%struct.TYPE_7__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.qla_flt_location*, align 8
  %18 = alloca %struct.qla_hw_data*, align 8
  %19 = alloca %struct.req_que*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = bitcast [2 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 bitcast ([2 x i8*]* @__const.qla2xxx_find_flt_start.locations to i8*), i64 16, i1 false)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %18, align 8
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %25 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %24, i32 0, i32 0
  %26 = load %struct.req_que**, %struct.req_que*** %25, align 8
  %27 = getelementptr inbounds %struct.req_que*, %struct.req_que** %26, i64 0
  %28 = load %struct.req_que*, %struct.req_que** %27, align 8
  store %struct.req_que* %28, %struct.req_que** %19, align 8
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %30 = load i8*, i8** %29, align 16
  store i8* %30, i8** %6, align 8
  %31 = load i32*, i32** %5, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %33 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @FA_FLASH_LAYOUT_ADDR_24, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  br label %70

38:                                               ; preds = %2
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %40 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @FA_FLASH_LAYOUT_ADDR, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %69

45:                                               ; preds = %38
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %47 = call i64 @IS_QLA81XX(%struct.qla_hw_data* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* @FA_FLASH_LAYOUT_ADDR_81, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %68

52:                                               ; preds = %45
  %53 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %54 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @FA_FLASH_LAYOUT_ADDR_82, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  br label %252

59:                                               ; preds = %52
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  %61 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @FA_FLASH_LAYOUT_ADDR_83, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %252

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67, %49
  br label %69

69:                                               ; preds = %68, %42
  br label %70

70:                                               ; preds = %69, %35
  %71 = load %struct.req_que*, %struct.req_que** %19, align 8
  %72 = getelementptr inbounds %struct.req_que, %struct.req_que* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %11, align 8
  %75 = load %struct.req_que*, %struct.req_que** %19, align 8
  %76 = getelementptr inbounds %struct.req_que, %struct.req_que* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %10, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %13, align 4
  br label %79

79:                                               ; preds = %158, %70
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %8, align 4
  %83 = ashr i32 %82, 2
  %84 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %80, i32* %81, i32 %83, i32 32)
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* %8, align 4
  %87 = srem i32 %86, 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32* %89, i32** %12, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 85
  br i1 %93, label %99, label %94

94:                                               ; preds = %79
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 170
  br i1 %98, label %99, label %100

99:                                               ; preds = %94, %79
  br label %252

100:                                              ; preds = %94
  %101 = load i32, i32* %8, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 25
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 8
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 24
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %105, %108
  %110 = add nsw i32 %101, %109
  store i32 %110, i32* %9, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %9, align 4
  %114 = ashr i32 %113, 2
  %115 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %111, i32* %112, i32 %114, i32 32)
  %116 = load i32*, i32** %11, align 8
  %117 = load i32, i32* %8, align 4
  %118 = srem i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32* %120, i32** %12, align 8
  %121 = load i32*, i32** %12, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 80
  br i1 %124, label %140, label %125

125:                                              ; preds = %100
  %126 = load i32*, i32** %12, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 67
  br i1 %129, label %140, label %130

130:                                              ; preds = %125
  %131 = load i32*, i32** %12, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 73
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 3
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 82
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %130, %125, %100
  br label %252

141:                                              ; preds = %135
  %142 = load i32*, i32** %12, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 21
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @BIT_7, align 4
  %146 = and i32 %144, %145
  store i32 %146, i32* %13, align 4
  %147 = load i32*, i32** %12, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 17
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  %151 = load i32*, i32** %12, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 16
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %150, %153
  %155 = mul nsw i32 %154, 512
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, %155
  store i32 %157, i32* %8, align 4
  br label %158

158:                                              ; preds = %141
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  br i1 %161, label %79, label %162

162:                                              ; preds = %158
  %163 = load %struct.req_que*, %struct.req_que** %19, align 8
  %164 = getelementptr inbounds %struct.req_que, %struct.req_que* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = inttoptr i64 %165 to %struct.qla_flt_location*
  store %struct.qla_flt_location* %166, %struct.qla_flt_location** %17, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = load i32, i32* %8, align 4
  %170 = ashr i32 %169, 2
  %171 = call i32 @qla24xx_read_flash_data(%struct.TYPE_7__* %167, i32* %168, i32 %170, i32 4)
  %172 = load %struct.qla_flt_location*, %struct.qla_flt_location** %17, align 8
  %173 = getelementptr inbounds %struct.qla_flt_location, %struct.qla_flt_location* %172, i32 0, i32 0
  %174 = load i8*, i8** %173, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 81
  br i1 %178, label %203, label %179

179:                                              ; preds = %162
  %180 = load %struct.qla_flt_location*, %struct.qla_flt_location** %17, align 8
  %181 = getelementptr inbounds %struct.qla_flt_location, %struct.qla_flt_location* %180, i32 0, i32 0
  %182 = load i8*, i8** %181, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 70
  br i1 %186, label %203, label %187

187:                                              ; preds = %179
  %188 = load %struct.qla_flt_location*, %struct.qla_flt_location** %17, align 8
  %189 = getelementptr inbounds %struct.qla_flt_location, %struct.qla_flt_location* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 2
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp ne i32 %193, 76
  br i1 %194, label %203, label %195

195:                                              ; preds = %187
  %196 = load %struct.qla_flt_location*, %struct.qla_flt_location** %17, align 8
  %197 = getelementptr inbounds %struct.qla_flt_location, %struct.qla_flt_location* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 3
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp ne i32 %201, 84
  br i1 %202, label %203, label %204

203:                                              ; preds = %195, %187, %179, %162
  br label %252

204:                                              ; preds = %195
  %205 = load %struct.req_que*, %struct.req_que** %19, align 8
  %206 = getelementptr inbounds %struct.req_que, %struct.req_que* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = inttoptr i64 %207 to i32*
  store i32* %208, i32** %16, align 8
  store i32 8, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %209

209:                                              ; preds = %219, %204
  %210 = load i32, i32* %14, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %209
  %213 = load i32*, i32** %16, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %16, align 8
  %215 = load i32, i32* %213, align 4
  %216 = call i32 @le16_to_cpu(i32 %215)
  %217 = load i32, i32* %15, align 4
  %218 = add nsw i32 %217, %216
  store i32 %218, i32* %15, align 4
  br label %219

219:                                              ; preds = %212
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %14, align 4
  br label %209

222:                                              ; preds = %209
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %222
  %226 = load i32, i32* @ql_log_fatal, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @ql_log(i32 %226, %struct.TYPE_7__* %227, i32 69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %228)
  %230 = load i64, i64* @ql_dbg_init, align 8
  %231 = load i64, i64* @ql_dbg_buffer, align 8
  %232 = add nsw i64 %230, %231
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = call i32 @ql_dump_buffer(i64 %232, %struct.TYPE_7__* %233, i32 270, i32* %234, i32 16)
  %236 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %236, i32* %3, align 4
  br label %260

237:                                              ; preds = %222
  %238 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  %239 = load i8*, i8** %238, align 8
  store i8* %239, i8** %6, align 8
  %240 = load %struct.qla_flt_location*, %struct.qla_flt_location** %17, align 8
  %241 = getelementptr inbounds %struct.qla_flt_location, %struct.qla_flt_location* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @le16_to_cpu(i32 %242)
  %244 = shl i32 %243, 16
  %245 = load %struct.qla_flt_location*, %struct.qla_flt_location** %17, align 8
  %246 = getelementptr inbounds %struct.qla_flt_location, %struct.qla_flt_location* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 8
  %248 = call i32 @le16_to_cpu(i32 %247)
  %249 = or i32 %244, %248
  %250 = ashr i32 %249, 2
  %251 = load i32*, i32** %5, align 8
  store i32 %250, i32* %251, align 4
  br label %252

252:                                              ; preds = %237, %203, %140, %99, %63, %56
  %253 = load i64, i64* @ql_dbg_init, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %255 = load i8*, i8** %6, align 8
  %256 = load i32*, i32** %5, align 8
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @ql_dbg(i64 %253, %struct.TYPE_7__* %254, i32 70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i8* %255, i32 %257)
  %259 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %259, i32* %3, align 4
  br label %260

260:                                              ; preds = %252, %225
  %261 = load i32, i32* %3, align 4
  ret i32 %261
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA81XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #2

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #2

declare dso_local i32 @qla24xx_read_flash_data(%struct.TYPE_7__*, i32*, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @ql_log(i32, %struct.TYPE_7__*, i32, i8*, i32) #2

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_7__*, i32, i32*, i32) #2

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_7__*, i32, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
