; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_check_flash_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_sds.c_asd_check_flash_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [30 x i8] c"couldn't reset flash. err=%d\0A\00", align 1
@FLASH_METHOD_UNKNOWN = common dso_local global i64 0, align 8
@FLASH_MANUF_ID_UNKNOWN = common dso_local global i32 0, align 4
@FLASH_DEV_ID_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Flash MethodA manuf_id(0x%x) dev_id(0x%x) sec_prot(0x%x)\0A\00", align 1
@FLASH_METHOD_A = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"Flash MethodB manuf_id(0x%x) dev_id(0x%x) sec_prot(0x%x)\0A\00", align 1
@FLASH_METHOD_B = common dso_local global i8* null, align 8
@FAIL_FIND_FLASH_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_check_flash_type(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  %10 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %11 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %16 = call i32 @asd_reset_flash(%struct.asd_ha_struct* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %2, align 4
  br label %277

23:                                               ; preds = %1
  %24 = load i64, i64* @FLASH_METHOD_UNKNOWN, align 8
  %25 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %26 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i64 %24, i64* %28, align 8
  %29 = load i32, i32* @FLASH_MANUF_ID_UNKNOWN, align 4
  %30 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %31 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 8
  %34 = load i32, i32* @FLASH_DEV_ID_UNKNOWN, align 4
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %36 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  store i32 %34, i32* %38, align 4
  %39 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %40 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 2, i32 1
  store i32 %46, i32* %7, align 4
  %47 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 2730
  %50 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %47, i32 %49, i32 170)
  %51 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1365
  %54 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %51, i32 %53, i32 85)
  %55 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 2730
  %58 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %55, i32 %57, i32 144)
  %59 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %62, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %70, %71
  %73 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %67, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %75 = call i32 @asd_reset_flash(%struct.asd_ha_struct* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %23
  %79 = load i32, i32* %9, align 4
  %80 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %277

82:                                               ; preds = %23
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %88 = call i32 @asd_reset_flash(%struct.asd_ha_struct* %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %82
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %2, align 4
  br label %277

93:                                               ; preds = %82
  %94 = load i32, i32* %4, align 4
  switch i32 %94, label %137 [
    i32 132, label %95
    i32 128, label %106
    i32 131, label %117
    i32 129, label %127
  ]

95:                                               ; preds = %93
  %96 = load i32, i32* %6, align 4
  switch i32 %96, label %104 [
    i32 141, label %97
    i32 142, label %97
    i32 144, label %97
  ]

97:                                               ; preds = %95, %95, %95
  %98 = load i8*, i8** @FLASH_METHOD_A, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %101 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i64 %99, i64* %103, align 8
  br label %105

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %97
  br label %137

106:                                              ; preds = %93
  %107 = load i32, i32* %6, align 4
  switch i32 %107, label %115 [
    i32 133, label %108
    i32 134, label %108
  ]

108:                                              ; preds = %106, %106
  %109 = load i8*, i8** @FLASH_METHOD_A, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %112 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i64 %110, i64* %114, align 8
  br label %116

115:                                              ; preds = %106
  br label %116

116:                                              ; preds = %115, %108
  br label %137

117:                                              ; preds = %93
  %118 = load i32, i32* %6, align 4
  switch i32 %118, label %126 [
    i32 137, label %119
    i32 139, label %119
  ]

119:                                              ; preds = %117, %117
  %120 = load i8*, i8** @FLASH_METHOD_A, align 8
  %121 = ptrtoint i8* %120 to i64
  %122 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %123 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i64 %121, i64* %125, align 8
  br label %126

126:                                              ; preds = %117, %119
  br label %137

127:                                              ; preds = %93
  %128 = load i32, i32* %6, align 4
  switch i32 %128, label %136 [
    i32 136, label %129
  ]

129:                                              ; preds = %127
  %130 = load i8*, i8** @FLASH_METHOD_A, align 8
  %131 = ptrtoint i8* %130 to i64
  %132 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %133 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store i64 %131, i64* %135, align 8
  br label %136

136:                                              ; preds = %127, %129
  br label %137

137:                                              ; preds = %93, %136, %126, %116, %105
  %138 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %139 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @FLASH_METHOD_UNKNOWN, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %251

145:                                              ; preds = %137
  %146 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %147 = call i32 @asd_reset_flash(%struct.asd_ha_struct* %146)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load i32, i32* %9, align 4
  %152 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %2, align 4
  br label %277

154:                                              ; preds = %145
  %155 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %156 = load i32, i32* %8, align 4
  %157 = add nsw i32 %156, 1365
  %158 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %155, i32 %157, i32 170)
  %159 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %160, 682
  %162 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %159, i32 %161, i32 85)
  %163 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1365
  %166 = call i32 @asd_write_reg_byte(%struct.asd_ha_struct* %163, i32 %165, i32 144)
  %167 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %168 = load i32, i32* %8, align 4
  %169 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %167, i32 %168)
  store i32 %169, i32* %4, align 4
  %170 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %171, %172
  %174 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %170, i32 %173)
  store i32 %174, i32* %5, align 4
  %175 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %176, %177
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %178, %179
  %181 = call i32 @asd_read_reg_byte(%struct.asd_ha_struct* %175, i32 %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %4, align 4
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %182, i32 %183, i32 %184)
  %186 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %187 = call i32 @asd_reset_flash(%struct.asd_ha_struct* %186)
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %154
  %191 = load i32, i32* %9, align 4
  %192 = call i32 (i8*, i32, ...) @ASD_DPRINTK(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %9, align 4
  store i32 %193, i32* %2, align 4
  br label %277

194:                                              ; preds = %154
  %195 = load i32, i32* %4, align 4
  switch i32 %195, label %248 [
    i32 132, label %196
    i32 128, label %207
    i32 131, label %218
    i32 130, label %228
    i32 129, label %238
  ]

196:                                              ; preds = %194
  %197 = load i32, i32* %5, align 4
  switch i32 %197, label %205 [
    i32 143, label %198
  ]

198:                                              ; preds = %196
  %199 = load i8*, i8** @FLASH_METHOD_B, align 8
  %200 = ptrtoint i8* %199 to i64
  %201 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %202 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  store i64 %200, i64* %204, align 8
  br label %206

205:                                              ; preds = %196
  br label %206

206:                                              ; preds = %205, %198
  br label %250

207:                                              ; preds = %194
  %208 = load i32, i32* %5, align 4
  switch i32 %208, label %216 [
    i32 135, label %209
  ]

209:                                              ; preds = %207
  %210 = load i8*, i8** @FLASH_METHOD_B, align 8
  %211 = ptrtoint i8* %210 to i64
  %212 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %213 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 1
  store i64 %211, i64* %215, align 8
  br label %217

216:                                              ; preds = %207
  br label %217

217:                                              ; preds = %216, %209
  br label %250

218:                                              ; preds = %194
  %219 = load i32, i32* %5, align 4
  switch i32 %219, label %227 [
    i32 138, label %220
  ]

220:                                              ; preds = %218
  %221 = load i8*, i8** @FLASH_METHOD_B, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %224 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 1
  store i64 %222, i64* %226, align 8
  br label %227

227:                                              ; preds = %218, %220
  br label %250

228:                                              ; preds = %194
  %229 = load i32, i32* %5, align 4
  switch i32 %229, label %237 [
    i32 140, label %230
  ]

230:                                              ; preds = %228
  %231 = load i8*, i8** @FLASH_METHOD_B, align 8
  %232 = ptrtoint i8* %231 to i64
  %233 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %234 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 1
  store i64 %232, i64* %236, align 8
  br label %237

237:                                              ; preds = %228, %230
  br label %250

238:                                              ; preds = %194
  %239 = load i32, i32* %5, align 4
  switch i32 %239, label %247 [
    i32 140, label %240
  ]

240:                                              ; preds = %238
  %241 = load i8*, i8** @FLASH_METHOD_B, align 8
  %242 = ptrtoint i8* %241 to i64
  %243 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %244 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 1
  store i64 %242, i64* %246, align 8
  br label %247

247:                                              ; preds = %238, %240
  br label %250

248:                                              ; preds = %194
  %249 = load i32, i32* @FAIL_FIND_FLASH_ID, align 4
  store i32 %249, i32* %2, align 4
  br label %277

250:                                              ; preds = %247, %237, %227, %217, %206
  br label %251

251:                                              ; preds = %250, %137
  %252 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %253 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @FLASH_METHOD_UNKNOWN, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %251
  %260 = load i32, i32* @FAIL_FIND_FLASH_ID, align 4
  store i32 %260, i32* %2, align 4
  br label %277

261:                                              ; preds = %251
  %262 = load i32, i32* %4, align 4
  %263 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %264 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 2
  store i32 %262, i32* %266, align 8
  %267 = load i32, i32* %5, align 4
  %268 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %269 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 3
  store i32 %267, i32* %271, align 4
  %272 = load i32, i32* %6, align 4
  %273 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %274 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 4
  store i32 %272, i32* %276, align 8
  store i32 0, i32* %2, align 4
  br label %277

277:                                              ; preds = %261, %259, %248, %190, %150, %91, %78, %19
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local i32 @asd_reset_flash(%struct.asd_ha_struct*) #1

declare dso_local i32 @ASD_DPRINTK(i8*, i32, ...) #1

declare dso_local i32 @asd_write_reg_byte(%struct.asd_ha_struct*, i32, i32) #1

declare dso_local i32 @asd_read_reg_byte(%struct.asd_ha_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
