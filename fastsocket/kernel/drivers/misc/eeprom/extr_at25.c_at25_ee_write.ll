; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at25.c_at25_ee_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/eeprom/extr_at25.c_at25_ee_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at25_data = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@EFBIG = common dso_local global i64 0, align 8
@io_limit = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@AT25_WRITE = common dso_local global i32 0, align 4
@AT25_WREN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"WREN --> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"write %u bytes at %u --> %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@EE_TIMEOUT = common dso_local global i64 0, align 8
@AT25_RDSR = common dso_local global i32 0, align 4
@AT25_SR_nRDY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"rdsr --> %d (%02x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"write %d bytes offset %d, timeout after %u msecs\0A\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.at25_data*, i8*, i64, i64)* @at25_ee_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @at25_ee_write(%struct.at25_data* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.at25_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.at25_data* %0, %struct.at25_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %22 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sge i64 %20, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i64, i64* @EFBIG, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %5, align 8
  br label %273

32:                                               ; preds = %4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %33, %34
  %36 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %37 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %35, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %43 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = sub nsw i64 %45, %46
  store i64 %47, i64* %9, align 8
  br label %48

48:                                               ; preds = %41, %32
  %49 = load i64, i64* %9, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %5, align 8
  br label %273

57:                                               ; preds = %48
  %58 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %59 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @io_limit, align 4
  %64 = icmp ugt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* @io_limit, align 4
  store i32 %66, i32* %12, align 4
  br label %67

67:                                               ; preds = %65, %57
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %70 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add i32 %68, %71
  %73 = add i32 %72, 1
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call i32* @kmalloc(i32 %73, i32 %74)
  store i32* %75, i32** %13, align 8
  %76 = load i32*, i32** %13, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %67
  %79 = load i64, i64* @ENOMEM, align 8
  %80 = sub i64 0, %79
  store i64 %80, i64* %5, align 8
  br label %273

81:                                               ; preds = %67
  %82 = load i32, i32* @AT25_WRITE, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %86 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %85, i32 0, i32 1
  %87 = call i32 @mutex_lock(i32* %86)
  br label %88

88:                                               ; preds = %255, %81
  %89 = load i64, i64* %8, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %17, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32* %92, i32** %18, align 8
  %93 = load i32, i32* @AT25_WREN, align 4
  %94 = load i32*, i32** %18, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %96 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %95, i32 0, i32 2
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i32*, i32** %18, align 8
  %99 = call i64 @spi_write(%struct.TYPE_7__* %97, i32* %98, i32 1)
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ult i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %88
  %103 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %104 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %103, i32 0, i32 2
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i64, i64* %10, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %106, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %258

110:                                              ; preds = %88
  %111 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %112 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  switch i32 %113, label %114 [
    i32 2, label %119
    i32 1, label %124
    i32 0, label %124
  ]

114:                                              ; preds = %110
  %115 = load i32, i32* %17, align 4
  %116 = lshr i32 %115, 16
  %117 = load i32*, i32** %18, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %18, align 8
  store i32 %116, i32* %117, align 4
  br label %119

119:                                              ; preds = %110, %114
  %120 = load i32, i32* %17, align 4
  %121 = lshr i32 %120, 8
  %122 = load i32*, i32** %18, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %18, align 8
  store i32 %121, i32* %122, align 4
  br label %124

124:                                              ; preds = %110, %110, %119
  %125 = load i32, i32* %17, align 4
  %126 = lshr i32 %125, 0
  %127 = load i32*, i32** %18, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %18, align 8
  store i32 %126, i32* %127, align 4
  br label %129

129:                                              ; preds = %124
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %12, align 4
  %133 = urem i32 %131, %132
  %134 = sub i32 %130, %133
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %16, align 4
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* %9, align 8
  %138 = icmp ugt i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %129
  %140 = load i64, i64* %9, align 8
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %139, %129
  %143 = load i32*, i32** %18, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @memcpy(i32* %143, i8* %144, i32 %145)
  %147 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %148 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %147, i32 0, i32 2
  %149 = load %struct.TYPE_7__*, %struct.TYPE_7__** %148, align 8
  %150 = load i32*, i32** %13, align 8
  %151 = load i32, i32* %16, align 4
  %152 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %153 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add i32 %151, %154
  %156 = add i32 %155, 1
  %157 = call i64 @spi_write(%struct.TYPE_7__* %149, i32* %150, i32 %156)
  store i64 %157, i64* %10, align 8
  %158 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %159 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %158, i32 0, i32 2
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %17, align 4
  %164 = load i64, i64* %10, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %163, i32 %165)
  %167 = load i64, i64* %10, align 8
  %168 = icmp ult i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %142
  br label %258

170:                                              ; preds = %142
  %171 = load i64, i64* @jiffies, align 8
  %172 = load i64, i64* @EE_TIMEOUT, align 8
  %173 = call i64 @msecs_to_jiffies(i64 %172)
  %174 = add i64 %171, %173
  store i64 %174, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %175

175:                                              ; preds = %213, %170
  %176 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %177 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %176, i32 0, i32 2
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %177, align 8
  %179 = load i32, i32* @AT25_RDSR, align 4
  %180 = call i32 @spi_w8r8(%struct.TYPE_7__* %178, i32 %179)
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %19, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %188, label %183

183:                                              ; preds = %175
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* @AT25_SR_nRDY, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183, %175
  %189 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %190 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %189, i32 0, i32 2
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %19, align 4
  %195 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %192, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %193, i32 %194)
  %196 = call i32 @msleep(i32 1)
  br label %204

197:                                              ; preds = %183
  %198 = load i32, i32* %19, align 4
  %199 = load i32, i32* @AT25_SR_nRDY, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %197
  br label %215

203:                                              ; preds = %197
  br label %204

204:                                              ; preds = %203, %188
  %205 = load i64, i64* %15, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %15, align 8
  %207 = icmp ult i64 %205, 3
  br i1 %207, label %213, label %208

208:                                              ; preds = %204
  %209 = load i64, i64* @jiffies, align 8
  %210 = load i64, i64* %14, align 8
  %211 = call i64 @time_before_eq(i64 %209, i64 %210)
  %212 = icmp ne i64 %211, 0
  br label %213

213:                                              ; preds = %208, %204
  %214 = phi i1 [ true, %204 ], [ %212, %208 ]
  br i1 %214, label %175, label %215

215:                                              ; preds = %213, %202
  %216 = load i32, i32* %19, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* @AT25_SR_nRDY, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %239

223:                                              ; preds = %218, %215
  %224 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %225 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %224, i32 0, i32 2
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 0
  %228 = load i32, i32* %16, align 4
  %229 = load i32, i32* %17, align 4
  %230 = load i64, i64* @jiffies, align 8
  %231 = load i64, i64* %14, align 8
  %232 = load i64, i64* @EE_TIMEOUT, align 8
  %233 = sub i64 %231, %232
  %234 = sub i64 %230, %233
  %235 = call i32 @jiffies_to_msecs(i64 %234)
  %236 = call i32 @dev_err(i32* %227, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i32 %228, i32 %229, i32 %235)
  %237 = load i64, i64* @ETIMEDOUT, align 8
  %238 = sub i64 0, %237
  store i64 %238, i64* %10, align 8
  br label %258

239:                                              ; preds = %218
  %240 = load i32, i32* %16, align 4
  %241 = zext i32 %240 to i64
  %242 = load i64, i64* %8, align 8
  %243 = add nsw i64 %242, %241
  store i64 %243, i64* %8, align 8
  %244 = load i32, i32* %16, align 4
  %245 = load i8*, i8** %7, align 8
  %246 = zext i32 %244 to i64
  %247 = getelementptr inbounds i8, i8* %245, i64 %246
  store i8* %247, i8** %7, align 8
  %248 = load i32, i32* %16, align 4
  %249 = zext i32 %248 to i64
  %250 = load i64, i64* %9, align 8
  %251 = sub i64 %250, %249
  store i64 %251, i64* %9, align 8
  %252 = load i32, i32* %16, align 4
  %253 = load i32, i32* %11, align 4
  %254 = add i32 %253, %252
  store i32 %254, i32* %11, align 4
  br label %255

255:                                              ; preds = %239
  %256 = load i64, i64* %9, align 8
  %257 = icmp ugt i64 %256, 0
  br i1 %257, label %88, label %258

258:                                              ; preds = %255, %223, %169, %102
  %259 = load %struct.at25_data*, %struct.at25_data** %6, align 8
  %260 = getelementptr inbounds %struct.at25_data, %struct.at25_data* %259, i32 0, i32 1
  %261 = call i32 @mutex_unlock(i32* %260)
  %262 = load i32*, i32** %13, align 8
  %263 = call i32 @kfree(i32* %262)
  %264 = load i32, i32* %11, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load i32, i32* %11, align 4
  %268 = zext i32 %267 to i64
  br label %271

269:                                              ; preds = %258
  %270 = load i64, i64* %10, align 8
  br label %271

271:                                              ; preds = %269, %266
  %272 = phi i64 [ %268, %266 ], [ %270, %269 ]
  store i64 %272, i64* %5, align 8
  br label %273

273:                                              ; preds = %271, %78, %55, %29
  %274 = load i64, i64* %5, align 8
  ret i64 %274
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @spi_write(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @spi_w8r8(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
