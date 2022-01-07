; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_get_flash_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_get_flash_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32*, i32*, i32*, i32*, i32, i32, i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, i32*, i32, i32)* }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No matching ROM signature.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"PCI data struct not found pcir_adr=%x.\0A\00", align 1
@ql_dbg_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Read BIOS %d.%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Read FCODE %d.%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"Read EFI %d.%d.\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"Unrecognized code type %x at pcids %x.\0A\00", align 1
@BIT_7 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Unrecognized fw revision at %x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Firmware revision %d.%d.%d.%d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Unrecognized golden fw at 0x%x.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_get_flash_version(%struct.TYPE_9__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %17, align 8
  store %struct.qla_hw_data* %18, %struct.qla_hw_data** %14, align 8
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %20 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %450

24:                                               ; preds = %2
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %28, i32* %3, align 4
  br label %450

29:                                               ; preds = %24
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @memset(i32* %32, i32 0, i32 8)
  %34 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %35 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @memset(i32* %36, i32 0, i32 8)
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @memset(i32* %40, i32 0, i32 8)
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %43 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @memset(i32* %44, i32 0, i32 8)
  %46 = load i8*, i8** %5, align 8
  %47 = bitcast i8* %46 to i32*
  store i32* %47, i32** %9, align 8
  %48 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %49 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 2
  store i32 %51, i32* %7, align 4
  store i32 1, i32* %12, align 4
  br label %52

52:                                               ; preds = %237, %29
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %55, 2
  %57 = call i32 @qla24xx_read_flash_data(%struct.TYPE_9__* %53, i32* %54, i32 %56, i32 32)
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = srem i32 %59, 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %58, i64 %61
  %63 = bitcast i8* %62 to i32*
  store i32* %63, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 85
  br i1 %67, label %73, label %68

68:                                               ; preds = %52
  %69 = load i32*, i32** %10, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 170
  br i1 %72, label %73, label %78

73:                                               ; preds = %68, %52
  %74 = load i32, i32* @ql_log_fatal, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %74, %struct.TYPE_9__* %75, i32 89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %77, i32* %6, align 4
  br label %241

78:                                               ; preds = %68
  %79 = load i32, i32* %7, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 25
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 24
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %83, %86
  %88 = add nsw i32 %79, %87
  store i32 %88, i32* %8, align 4
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 2
  %93 = call i32 @qla24xx_read_flash_data(%struct.TYPE_9__* %89, i32* %90, i32 %92, i32 32)
  %94 = load i8*, i8** %5, align 8
  %95 = load i32, i32* %7, align 4
  %96 = srem i32 %95, 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr i8, i8* %94, i64 %97
  %99 = bitcast i8* %98 to i32*
  store i32* %99, i32** %10, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 80
  br i1 %103, label %119, label %104

104:                                              ; preds = %78
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 67
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 73
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load i32*, i32** %10, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 82
  br i1 %118, label %119, label %125

119:                                              ; preds = %114, %109, %104, %78
  %120 = load i32, i32* @ql_log_fatal, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %120, %struct.TYPE_9__* %121, i32 90, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %124, i32* %6, align 4
  br label %241

125:                                              ; preds = %114
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 20
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %11, align 4
  switch i32 %129, label %214 [
    i32 130, label %130
    i32 128, label %158
    i32 129, label %186
  ]

130:                                              ; preds = %125
  %131 = load i32*, i32** %10, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 18
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %135 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  store i32 %133, i32* %137, align 4
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 19
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %142 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* @ql_dbg_init, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %147 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %148 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %153 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %145, %struct.TYPE_9__* %146, i32 91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %151, i32 %156)
  br label %220

158:                                              ; preds = %125
  %159 = load i32*, i32** %10, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 18
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %163 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  store i32 %161, i32* %165, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 19
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %170 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 1
  store i32 %168, i32* %172, align 4
  %173 = load i32, i32* @ql_dbg_init, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %175 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %176 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %175, i32 0, i32 2
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %181 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %173, %struct.TYPE_9__* %174, i32 92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %179, i32 %184)
  br label %220

186:                                              ; preds = %125
  %187 = load i32*, i32** %10, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 18
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %191 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32 %189, i32* %193, align 4
  %194 = load i32*, i32** %10, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 19
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %198 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  store i32 %196, i32* %200, align 4
  %201 = load i32, i32* @ql_dbg_init, align 4
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %203 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %204 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %209 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %201, %struct.TYPE_9__* %202, i32 93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %207, i32 %212)
  br label %220

214:                                              ; preds = %125
  %215 = load i32, i32* @ql_log_warn, align 4
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %217 = load i32, i32* %11, align 4
  %218 = load i32, i32* %8, align 4
  %219 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %215, %struct.TYPE_9__* %216, i32 94, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %217, i32 %218)
  br label %220

220:                                              ; preds = %214, %186, %158, %130
  %221 = load i32*, i32** %10, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 21
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @BIT_7, align 4
  %225 = and i32 %223, %224
  store i32 %225, i32* %12, align 4
  %226 = load i32*, i32** %10, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 17
  %228 = load i32, i32* %227, align 4
  %229 = shl i32 %228, 8
  %230 = load i32*, i32** %10, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 16
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %229, %232
  %234 = mul nsw i32 %233, 512
  %235 = load i32, i32* %7, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %7, align 4
  br label %237

237:                                              ; preds = %220
  %238 = load i32, i32* %12, align 4
  %239 = icmp ne i32 %238, 0
  %240 = xor i1 %239, true
  br i1 %240, label %52, label %241

241:                                              ; preds = %237, %119, %73
  %242 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %243 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %242, i32 0, i32 3
  %244 = load i32*, i32** %243, align 8
  %245 = call i32 @memset(i32* %244, i32 0, i32 8)
  %246 = load i8*, i8** %5, align 8
  %247 = bitcast i8* %246 to i32*
  store i32* %247, i32** %9, align 8
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %249 = load i32*, i32** %9, align 8
  %250 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %251 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 4
  %254 = call i32 @qla24xx_read_flash_data(%struct.TYPE_9__* %248, i32* %249, i32 %253, i32 4)
  store i32 0, i32* %13, align 4
  br label %255

255:                                              ; preds = %270, %241
  %256 = load i32, i32* %13, align 4
  %257 = icmp slt i32 %256, 4
  br i1 %257, label %258, label %273

258:                                              ; preds = %255
  %259 = load i32*, i32** %9, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = call i8* @be32_to_cpu(i32 %263)
  %265 = ptrtoint i8* %264 to i32
  %266 = load i32*, i32** %9, align 8
  %267 = load i32, i32* %13, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %265, i32* %269, align 4
  br label %270

270:                                              ; preds = %258
  %271 = load i32, i32* %13, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %13, align 4
  br label %255

273:                                              ; preds = %255
  %274 = load i32*, i32** %9, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, -1
  br i1 %277, label %278, label %293

278:                                              ; preds = %273
  %279 = load i32*, i32** %9, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 1
  %281 = load i32, i32* %280, align 4
  %282 = icmp eq i32 %281, -1
  br i1 %282, label %283, label %293

283:                                              ; preds = %278
  %284 = load i32*, i32** %9, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 2
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, -1
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load i32*, i32** %9, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 3
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, -1
  br i1 %292, label %313, label %293

293:                                              ; preds = %288, %283, %278, %273
  %294 = load i32*, i32** %9, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %321

298:                                              ; preds = %293
  %299 = load i32*, i32** %9, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 1
  %301 = load i32, i32* %300, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %321

303:                                              ; preds = %298
  %304 = load i32*, i32** %9, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 2
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %321

308:                                              ; preds = %303
  %309 = load i32*, i32** %9, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 3
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %321

313:                                              ; preds = %308, %288
  %314 = load i32, i32* @ql_log_warn, align 4
  %315 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %316 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %317 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 4
  %319 = mul nsw i32 %318, 4
  %320 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %314, %struct.TYPE_9__* %315, i32 95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %319)
  br label %373

321:                                              ; preds = %308, %303, %298, %293
  %322 = load i32*, i32** %9, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %326 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %325, i32 0, i32 3
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  store i32 %324, i32* %328, align 4
  %329 = load i32*, i32** %9, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %333 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %332, i32 0, i32 3
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  store i32 %331, i32* %335, align 4
  %336 = load i32*, i32** %9, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 2
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %340 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %339, i32 0, i32 3
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 2
  store i32 %338, i32* %342, align 4
  %343 = load i32*, i32** %9, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 3
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %347 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %346, i32 0, i32 3
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 3
  store i32 %345, i32* %349, align 4
  %350 = load i32, i32* @ql_dbg_init, align 4
  %351 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %352 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %353 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %352, i32 0, i32 3
  %354 = load i32*, i32** %353, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 0
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %358 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %357, i32 0, i32 3
  %359 = load i32*, i32** %358, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 1
  %361 = load i32, i32* %360, align 4
  %362 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %363 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %362, i32 0, i32 3
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 2
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %368 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %367, i32 0, i32 3
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 3
  %371 = load i32, i32* %370, align 4
  %372 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, i32, i32, ...) @ql_dbg(i32 %350, %struct.TYPE_9__* %351, i32 96, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %356, i32 %361, i32 %366, i32 %371)
  br label %373

373:                                              ; preds = %321, %313
  %374 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %375 = call i32 @IS_QLA81XX(%struct.qla_hw_data* %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %373
  %378 = load i32, i32* %6, align 4
  store i32 %378, i32* %3, align 4
  br label %450

379:                                              ; preds = %373
  %380 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %381 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %380, i32 0, i32 6
  %382 = load i32*, i32** %381, align 8
  %383 = call i32 @memset(i32* %382, i32 0, i32 8)
  %384 = load i8*, i8** %5, align 8
  %385 = bitcast i8* %384 to i32*
  store i32* %385, i32** %9, align 8
  %386 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %387 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %386, i32 0, i32 8
  %388 = load %struct.TYPE_8__*, %struct.TYPE_8__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %388, i32 0, i32 0
  %390 = load i32 (%struct.TYPE_9__*, i32*, i32, i32)*, i32 (%struct.TYPE_9__*, i32*, i32, i32)** %389, align 8
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %392 = load i32*, i32** %9, align 8
  %393 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %394 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %393, i32 0, i32 7
  %395 = load i32, i32* %394, align 8
  %396 = shl i32 %395, 2
  %397 = call i32 %390(%struct.TYPE_9__* %391, i32* %392, i32 %396, i32 32)
  %398 = load i32*, i32** %9, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 4
  %400 = load i32, i32* %399, align 4
  %401 = icmp eq i32 %400, -1
  br i1 %401, label %402, label %426

402:                                              ; preds = %379
  %403 = load i32*, i32** %9, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 5
  %405 = load i32, i32* %404, align 4
  %406 = icmp eq i32 %405, -1
  br i1 %406, label %407, label %426

407:                                              ; preds = %402
  %408 = load i32*, i32** %9, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 6
  %410 = load i32, i32* %409, align 4
  %411 = icmp eq i32 %410, -1
  br i1 %411, label %412, label %426

412:                                              ; preds = %407
  %413 = load i32*, i32** %9, align 8
  %414 = getelementptr inbounds i32, i32* %413, i64 7
  %415 = load i32, i32* %414, align 4
  %416 = icmp eq i32 %415, -1
  br i1 %416, label %417, label %426

417:                                              ; preds = %412
  %418 = load i32, i32* @ql_log_warn, align 4
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %420 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %421 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %420, i32 0, i32 7
  %422 = load i32, i32* %421, align 8
  %423 = mul nsw i32 %422, 4
  %424 = call i32 (i32, %struct.TYPE_9__*, i32, i8*, ...) @ql_log(i32 %418, %struct.TYPE_9__* %419, i32 86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %423)
  %425 = load i32, i32* %6, align 4
  store i32 %425, i32* %3, align 4
  br label %450

426:                                              ; preds = %412, %407, %402, %379
  store i32 4, i32* %13, align 4
  br label %427

427:                                              ; preds = %445, %426
  %428 = load i32, i32* %13, align 4
  %429 = icmp slt i32 %428, 8
  br i1 %429, label %430, label %448

430:                                              ; preds = %427
  %431 = load i32*, i32** %9, align 8
  %432 = load i32, i32* %13, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = call i8* @be32_to_cpu(i32 %435)
  %437 = ptrtoint i8* %436 to i32
  %438 = load %struct.qla_hw_data*, %struct.qla_hw_data** %14, align 8
  %439 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %438, i32 0, i32 6
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %13, align 4
  %442 = sub nsw i32 %441, 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %440, i64 %443
  store i32 %437, i32* %444, align 4
  br label %445

445:                                              ; preds = %430
  %446 = load i32, i32* %13, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %13, align 4
  br label %427

448:                                              ; preds = %427
  %449 = load i32, i32* %6, align 4
  store i32 %449, i32* %3, align 4
  br label %450

450:                                              ; preds = %448, %417, %377, %27, %22
  %451 = load i32, i32* %3, align 4
  ret i32 %451
}

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qla24xx_read_flash_data(%struct.TYPE_9__*, i32*, i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_9__*, i32, i8*, i32, i32, ...) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @IS_QLA81XX(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
