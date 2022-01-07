; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_get_flash_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla2x00_get_flash_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32*, i32*, i32*, i32*, i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No matching ROM signature.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"PCI data struct not found pcir_adr=%x.\0A\00", align 1
@ql_dbg_init = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"Read BIOS %d.%d.\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Read EFI %d.%d.\0A\00", align 1
@ql_log_warn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Unrecognized code type %x at pcids %x.\0A\00", align 1
@BIT_7 = common dso_local global i32 0, align 4
@ql_dbg_buffer = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"Dumping fw ver from flash:.\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Unrecognized fw revision at %x.\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"FW Version: %d.%d.%d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_get_flash_version(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %16, align 8
  store %struct.qla_hw_data* %17, %struct.qla_hw_data** %13, align 8
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %22, %2
  %26 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %26, i32* %3, align 4
  br label %343

27:                                               ; preds = %22
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %29 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @memset(i32* %30, i32 0, i32 8)
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @memset(i32* %34, i32 0, i32 8)
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %37 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @memset(i32* %38, i32 0, i32 8)
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @memset(i32* %42, i32 0, i32 8)
  %44 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %45 = call i32 @qla2x00_flash_enable(%struct.qla_hw_data* %44)
  store i32 0, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %199, %27
  %47 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %47, i32 %48)
  %50 = icmp ne i32 %49, 85
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %52, i32 %54)
  %56 = icmp ne i32 %55, 170
  br i1 %56, label %57, label %62

57:                                               ; preds = %51, %46
  %58 = load i32, i32* @ql_log_fatal, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_log(i32 %58, %struct.TYPE_6__* %59, i32 80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %61, i32* %6, align 4
  br label %203

62:                                               ; preds = %51
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 25
  %67 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %64, i32 %66)
  %68 = shl i32 %67, 8
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 24
  %72 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %69, i32 %71)
  %73 = or i32 %68, %72
  %74 = add nsw i32 %63, %73
  store i32 %74, i32* %10, align 4
  %75 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %75, i32 %76)
  %78 = icmp ne i32 %77, 80
  br i1 %78, label %97, label %79

79:                                               ; preds = %62
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %80, i32 %82)
  %84 = icmp ne i32 %83, 67
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 2
  %89 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %86, i32 %88)
  %90 = icmp ne i32 %89, 73
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 3
  %95 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %92, i32 %94)
  %96 = icmp ne i32 %95, 82
  br i1 %96, label %97, label %103

97:                                               ; preds = %91, %85, %79, %62
  %98 = load i32, i32* @ql_log_fatal, align 4
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_log(i32 %98, %struct.TYPE_6__* %99, i32 81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %102, i32* %6, align 4
  br label %203

103:                                              ; preds = %91
  %104 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 20
  %107 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %104, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  switch i32 %108, label %173 [
    i32 130, label %109
    i32 128, label %139
    i32 129, label %143
  ]

109:                                              ; preds = %103
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 18
  %113 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %110, i32 %112)
  %114 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %115 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  store i32 %113, i32* %117, align 4
  %118 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 19
  %121 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %118, i32 %120)
  %122 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %123 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %121, i32* %125, align 4
  %126 = load i64, i64* @ql_dbg_init, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %128 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %129 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %134 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %133, i32 0, i32 0
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i64, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i64 %126, %struct.TYPE_6__* %127, i32 82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %132, i32 %137)
  br label %179

139:                                              ; preds = %103
  %140 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %141 = load i32, i32* %10, align 4
  %142 = call i32 @qla2x00_get_fcode_version(%struct.qla_hw_data* %140, i32 %141)
  br label %179

143:                                              ; preds = %103
  %144 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 18
  %147 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %144, i32 %146)
  %148 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %149 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  store i32 %147, i32* %151, align 4
  %152 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 19
  %155 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %152, i32 %154)
  %156 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %157 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  store i32 %155, i32* %159, align 4
  %160 = load i64, i64* @ql_dbg_init, align 8
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %162 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %163 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %168 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i64, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i64 %160, %struct.TYPE_6__* %161, i32 83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %166, i32 %171)
  br label %179

173:                                              ; preds = %103
  %174 = load i32, i32* @ql_log_warn, align 4
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_log(i32 %174, %struct.TYPE_6__* %175, i32 84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %173, %143, %139, %109
  %180 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 21
  %183 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %180, i32 %182)
  %184 = load i32, i32* @BIT_7, align 4
  %185 = and i32 %183, %184
  store i32 %185, i32* %8, align 4
  %186 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %187, 17
  %189 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %186, i32 %188)
  %190 = shl i32 %189, 8
  %191 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %192 = load i32, i32* %10, align 4
  %193 = add nsw i32 %192, 16
  %194 = call i32 @qla2x00_read_flash_byte(%struct.qla_hw_data* %191, i32 %193)
  %195 = or i32 %190, %194
  %196 = mul nsw i32 %195, 512
  %197 = load i32, i32* %9, align 4
  %198 = add nsw i32 %197, %196
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %179
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  %202 = xor i1 %201, true
  br i1 %202, label %46, label %203

203:                                              ; preds = %199, %97, %57
  %204 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %205 = call i64 @IS_QLA2322(%struct.qla_hw_data* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %339

207:                                              ; preds = %203
  %208 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %209 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %208, i32 0, i32 3
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @memset(i32* %210, i32 0, i32 8)
  %212 = load i8*, i8** %5, align 8
  %213 = bitcast i8* %212 to i32*
  store i32* %213, i32** %11, align 8
  %214 = load i32*, i32** %11, align 8
  %215 = call i32 @memset(i32* %214, i32 0, i32 8)
  %216 = load i32*, i32** %11, align 8
  store i32* %216, i32** %12, align 8
  %217 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %218 = load i32*, i32** %11, align 8
  %219 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %220 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = mul nsw i32 %221, 4
  %223 = add nsw i32 %222, 10
  %224 = call i32 @qla2x00_read_flash_data(%struct.qla_hw_data* %217, i32* %218, i32 %223, i32 8)
  %225 = load i64, i64* @ql_dbg_init, align 8
  %226 = load i64, i64* @ql_dbg_buffer, align 8
  %227 = add nsw i64 %225, %226
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %229 = call i32 (i64, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i64 %227, %struct.TYPE_6__* %228, i32 266, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %230 = load i64, i64* @ql_dbg_init, align 8
  %231 = load i64, i64* @ql_dbg_buffer, align 8
  %232 = add nsw i64 %230, %231
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %234 = load i32*, i32** %11, align 8
  %235 = call i32 @ql_dump_buffer(i64 %232, %struct.TYPE_6__* %233, i32 267, i32* %234, i32 8)
  %236 = load i32*, i32** %12, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 65535
  br i1 %239, label %240, label %255

240:                                              ; preds = %207
  %241 = load i32*, i32** %12, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 65535
  br i1 %244, label %245, label %255

245:                                              ; preds = %240
  %246 = load i32*, i32** %12, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, 65535
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i32*, i32** %12, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 3
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 65535
  br i1 %254, label %275, label %255

255:                                              ; preds = %250, %245, %240, %207
  %256 = load i32*, i32** %12, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %283

260:                                              ; preds = %255
  %261 = load i32*, i32** %12, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %283

265:                                              ; preds = %260
  %266 = load i32*, i32** %12, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 2
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %283

270:                                              ; preds = %265
  %271 = load i32*, i32** %12, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 3
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %270, %250
  %276 = load i32, i32* @ql_log_warn, align 4
  %277 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %278 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %279 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = mul nsw i32 %280, 4
  %282 = call i32 (i32, %struct.TYPE_6__*, i32, i8*, ...) @ql_log(i32 %276, %struct.TYPE_6__* %277, i32 87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %281)
  br label %338

283:                                              ; preds = %270, %265, %260, %255
  %284 = load i32*, i32** %11, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = shl i32 %286, 16
  %288 = load i32*, i32** %11, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %287, %290
  %292 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %293 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %292, i32 0, i32 3
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 0
  store i32 %291, i32* %295, align 4
  %296 = load i32*, i32** %11, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 2
  %298 = load i32, i32* %297, align 4
  %299 = shl i32 %298, 16
  %300 = load i32*, i32** %11, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 3
  %302 = load i32, i32* %301, align 4
  %303 = or i32 %299, %302
  %304 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %305 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %304, i32 0, i32 3
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  store i32 %303, i32* %307, align 4
  %308 = load i32*, i32** %11, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 4
  %310 = load i32, i32* %309, align 4
  %311 = shl i32 %310, 16
  %312 = load i32*, i32** %11, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 5
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %311, %314
  %316 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %317 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %316, i32 0, i32 3
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 2
  store i32 %315, i32* %319, align 4
  %320 = load i64, i64* @ql_dbg_init, align 8
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %322 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %323 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %322, i32 0, i32 3
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 0
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %328 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %327, i32 0, i32 3
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %333 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %332, i32 0, i32 3
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 2
  %336 = load i32, i32* %335, align 4
  %337 = call i32 (i64, %struct.TYPE_6__*, i32, i8*, ...) @ql_dbg(i64 %320, %struct.TYPE_6__* %321, i32 88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %326, i32 %331, i32 %336)
  br label %338

338:                                              ; preds = %283, %275
  br label %339

339:                                              ; preds = %338, %203
  %340 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %341 = call i32 @qla2x00_flash_disable(%struct.qla_hw_data* %340)
  %342 = load i32, i32* %6, align 4
  store i32 %342, i32* %3, align 4
  br label %343

343:                                              ; preds = %339, %25
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qla2x00_flash_enable(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_read_flash_byte(%struct.qla_hw_data*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @ql_dbg(i64, %struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @qla2x00_get_fcode_version(%struct.qla_hw_data*, i32) #1

declare dso_local i64 @IS_QLA2322(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_read_flash_data(%struct.qla_hw_data*, i32*, i32, i32) #1

declare dso_local i32 @ql_dump_buffer(i64, %struct.TYPE_6__*, i32, i32*, i32) #1

declare dso_local i32 @qla2x00_flash_disable(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
