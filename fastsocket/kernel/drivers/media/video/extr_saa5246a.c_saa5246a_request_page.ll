; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_request_page.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_request_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa5246a_device = type { i32* }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i32 }

@PGMASK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PGMASK_PAGE = common dso_local global i32 0, align 4
@PAGE_MAX = common dso_local global i64 0, align 8
@PGMASK_HOUR = common dso_local global i32 0, align 4
@HOUR_MAX = common dso_local global i64 0, align 8
@PGMASK_MINUTE = common dso_local global i32 0, align 4
@MINUTE_MAX = common dso_local global i64 0, align 8
@NUM_DAUS = common dso_local global i32 0, align 4
@SAA5246A_REGISTER_R2 = common dso_local global i32 0, align 4
@R2_IN_R3_SELECT_PAGE_HUNDREDS = common dso_local global i32 0, align 4
@R2_BANK_0 = common dso_local global i32 0, align 4
@R2_HAMMING_CHECK_OFF = common dso_local global i32 0, align 4
@R3_HOLD_PAGE = common dso_local global i32 0, align 4
@PG_HUND = common dso_local global i32 0, align 4
@R3_PAGE_HUNDREDS_DO_CARE = common dso_local global i32 0, align 4
@R3_PAGE_HUNDREDS_DO_NOT_CARE = common dso_local global i32 0, align 4
@PG_TEN = common dso_local global i32 0, align 4
@R3_PAGE_TENS_DO_CARE = common dso_local global i32 0, align 4
@R3_PAGE_TENS_DO_NOT_CARE = common dso_local global i32 0, align 4
@PG_UNIT = common dso_local global i32 0, align 4
@R3_PAGE_UNITS_DO_CARE = common dso_local global i32 0, align 4
@R3_PAGE_UNITS_DO_NOT_CARE = common dso_local global i32 0, align 4
@HR_TEN = common dso_local global i32 0, align 4
@R3_HOURS_TENS_DO_CARE = common dso_local global i32 0, align 4
@R3_HOURS_TENS_DO_NOT_CARE = common dso_local global i32 0, align 4
@HR_UNIT = common dso_local global i32 0, align 4
@R3_HOURS_UNITS_DO_CARE = common dso_local global i32 0, align 4
@R3_HOURS_UNITS_DO_NOT_CARE = common dso_local global i32 0, align 4
@MIN_TEN = common dso_local global i32 0, align 4
@R3_MINUTES_TENS_DO_CARE = common dso_local global i32 0, align 4
@R3_MINUTES_TENS_DO_NOT_CARE = common dso_local global i32 0, align 4
@MIN_UNIT = common dso_local global i32 0, align 4
@R3_MINUTES_UNITS_DO_CARE = common dso_local global i32 0, align 4
@R3_MINUTES_UNITS_DO_NOT_CARE = common dso_local global i32 0, align 4
@COMMAND_END = common dso_local global i32 0, align 4
@R3_UPDATE_PAGE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa5246a_device*, %struct.TYPE_3__*)* @saa5246a_request_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa5246a_request_page(%struct.saa5246a_device* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa5246a_device*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.saa5246a_device* %0, %struct.saa5246a_device** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @PGMASK_MAX, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %283

19:                                               ; preds = %10
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PGMASK_PAGE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %19
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PAGE_MAX, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31, %26
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %283

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %19
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PGMASK_HOUR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HOUR_MAX, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53, %48
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %283

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %41
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PGMASK_MINUTE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MINUTE_MAX, align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75, %70
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %283

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %63
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @NUM_DAUS, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90, %85
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %283

99:                                               ; preds = %90
  %100 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %101 = load i32, i32* @SAA5246A_REGISTER_R2, align 4
  %102 = load i32, i32* @R2_IN_R3_SELECT_PAGE_HUNDREDS, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = shl i32 %105, 4
  %107 = or i32 %102, %106
  %108 = load i32, i32* @R2_BANK_0, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @R2_HAMMING_CHECK_OFF, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @HUNDREDS_OF_PAGE(i64 %114)
  %116 = load i32, i32* @R3_HOLD_PAGE, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @PG_HUND, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %99
  %125 = load i32, i32* @R3_PAGE_HUNDREDS_DO_CARE, align 4
  br label %128

126:                                              ; preds = %99
  %127 = load i32, i32* @R3_PAGE_HUNDREDS_DO_NOT_CARE, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  %130 = or i32 %117, %129
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @TENS_OF_PAGE(i64 %133)
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @PG_TEN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %128
  %142 = load i32, i32* @R3_PAGE_TENS_DO_CARE, align 4
  br label %145

143:                                              ; preds = %128
  %144 = load i32, i32* @R3_PAGE_TENS_DO_NOT_CARE, align 4
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi i32 [ %142, %141 ], [ %144, %143 ]
  %147 = or i32 %134, %146
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @UNITS_OF_PAGE(i64 %150)
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @PG_UNIT, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %145
  %159 = load i32, i32* @R3_PAGE_UNITS_DO_CARE, align 4
  br label %162

160:                                              ; preds = %145
  %161 = load i32, i32* @R3_PAGE_UNITS_DO_NOT_CARE, align 4
  br label %162

162:                                              ; preds = %160, %158
  %163 = phi i32 [ %159, %158 ], [ %161, %160 ]
  %164 = or i32 %151, %163
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @TENS_OF_HOUR(i64 %167)
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @HR_TEN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %162
  %176 = load i32, i32* @R3_HOURS_TENS_DO_CARE, align 4
  br label %179

177:                                              ; preds = %162
  %178 = load i32, i32* @R3_HOURS_TENS_DO_NOT_CARE, align 4
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = or i32 %168, %180
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @UNITS_OF_HOUR(i64 %184)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @HR_UNIT, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %179
  %193 = load i32, i32* @R3_HOURS_UNITS_DO_CARE, align 4
  br label %196

194:                                              ; preds = %179
  %195 = load i32, i32* @R3_HOURS_UNITS_DO_NOT_CARE, align 4
  br label %196

196:                                              ; preds = %194, %192
  %197 = phi i32 [ %193, %192 ], [ %195, %194 ]
  %198 = or i32 %185, %197
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @TENS_OF_MINUTE(i64 %201)
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @MIN_TEN, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %196
  %210 = load i32, i32* @R3_MINUTES_TENS_DO_CARE, align 4
  br label %213

211:                                              ; preds = %196
  %212 = load i32, i32* @R3_MINUTES_TENS_DO_NOT_CARE, align 4
  br label %213

213:                                              ; preds = %211, %209
  %214 = phi i32 [ %210, %209 ], [ %212, %211 ]
  %215 = or i32 %202, %214
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 3
  %218 = load i64, i64* %217, align 8
  %219 = call i32 @UNITS_OF_MINUTE(i64 %218)
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @MIN_UNIT, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %213
  %227 = load i32, i32* @R3_MINUTES_UNITS_DO_CARE, align 4
  br label %230

228:                                              ; preds = %213
  %229 = load i32, i32* @R3_MINUTES_UNITS_DO_NOT_CARE, align 4
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %227, %226 ], [ %229, %228 ]
  %232 = or i32 %219, %231
  %233 = load i32, i32* @COMMAND_END, align 4
  %234 = call i64 (%struct.saa5246a_device*, i32, i32, i32, i32, ...) @i2c_senddata(%struct.saa5246a_device* %100, i32 %101, i32 %111, i32 %130, i32 %147, i32 %164, i32 %181, i32 %198, i32 %215, i32 %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %271, label %236

236:                                              ; preds = %230
  %237 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %238 = load i32, i32* @SAA5246A_REGISTER_R2, align 4
  %239 = load i32, i32* @R2_IN_R3_SELECT_PAGE_HUNDREDS, align 4
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = shl i32 %242, 4
  %244 = or i32 %239, %243
  %245 = load i32, i32* @R2_BANK_0, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @R2_HAMMING_CHECK_OFF, align 4
  %248 = or i32 %246, %247
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @HUNDREDS_OF_PAGE(i64 %251)
  %253 = load i32, i32* @R3_UPDATE_PAGE, align 4
  %254 = or i32 %252, %253
  %255 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @PG_HUND, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %236
  %262 = load i32, i32* @R3_PAGE_HUNDREDS_DO_CARE, align 4
  br label %265

263:                                              ; preds = %236
  %264 = load i32, i32* @R3_PAGE_HUNDREDS_DO_NOT_CARE, align 4
  br label %265

265:                                              ; preds = %263, %261
  %266 = phi i32 [ %262, %261 ], [ %264, %263 ]
  %267 = or i32 %254, %266
  %268 = load i32, i32* @COMMAND_END, align 4
  %269 = call i64 (%struct.saa5246a_device*, i32, i32, i32, i32, ...) @i2c_senddata(%struct.saa5246a_device* %237, i32 %238, i32 %248, i32 %267, i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %265, %230
  %272 = load i32, i32* @EIO, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %3, align 4
  br label %283

274:                                              ; preds = %265
  %275 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %276 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 8
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %277, i64 %281
  store i32 1, i32* %282, align 4
  store i32 0, i32* %3, align 4
  br label %283

283:                                              ; preds = %274, %271, %96, %81, %59, %37, %16
  %284 = load i32, i32* %3, align 4
  ret i32 %284
}

declare dso_local i64 @i2c_senddata(%struct.saa5246a_device*, i32, i32, i32, i32, ...) #1

declare dso_local i32 @HUNDREDS_OF_PAGE(i64) #1

declare dso_local i32 @TENS_OF_PAGE(i64) #1

declare dso_local i32 @UNITS_OF_PAGE(i64) #1

declare dso_local i32 @TENS_OF_HOUR(i64) #1

declare dso_local i32 @UNITS_OF_HOUR(i64) #1

declare dso_local i32 @TENS_OF_MINUTE(i64) #1

declare dso_local i32 @UNITS_OF_MINUTE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
