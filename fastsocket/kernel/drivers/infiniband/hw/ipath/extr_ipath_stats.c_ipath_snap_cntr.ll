; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_stats.c_ipath_snap_cntr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_stats.c_ipath_snap_cntr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i64, i32, i64, i32, i64, i32, i64, i64, i64, i64, i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@IPATH_32BITCOUNTERS = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Error!  Read counter 0x%x timed out\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipath_snap_cntr(%struct.ipath_devdata* %0, i64 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IPATH_32BITCOUNTERS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %21 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %20, i32 0, i32 13
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %19, %24
  br i1 %25, label %50, label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 13
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %27, %32
  br i1 %33, label %50, label %34

34:                                               ; preds = %26
  %35 = load i64, i64* %4, align 8
  %36 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %37 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %36, i32 0, i32 13
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %35, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %34
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %45 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %44, i32 0, i32 13
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %43, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %42, %34, %26, %18
  %51 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @ipath_read_creg(%struct.ipath_devdata* %51, i64 %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  %55 = icmp eq i64 %54, -1
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 -1, i32 0
  store i32 %57, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %63

58:                                               ; preds = %42, %2
  %59 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %60 = load i64, i64* %4, align 8
  %61 = call i32 @ipath_read_creg32(%struct.ipath_devdata* %59, i64 %60)
  store i32 %61, i32* %5, align 4
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %7, align 8
  br label %63

63:                                               ; preds = %58, %50
  %64 = load i64, i64* @jiffies, align 8
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @HZ, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* %9, align 8
  %69 = call i64 @time_before(i64 %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %63
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @ipath_dev_err(%struct.ipath_devdata* %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %76)
  store i64 0, i64* %10, align 8
  br label %275

78:                                               ; preds = %71, %63
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i64, i64* %7, align 8
  store i64 %82, i64* %10, align 8
  br label %275

83:                                               ; preds = %78
  %84 = load i64, i64* %4, align 8
  %85 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %86 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %85, i32 0, i32 13
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %84, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %83
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %94 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %91
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %100 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %98, %101
  %103 = sext i32 %102 to i64
  %104 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %105 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %110 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %97, %91
  %112 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %113 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  store i64 %114, i64* %7, align 8
  br label %273

115:                                              ; preds = %83
  %116 = load i64, i64* %4, align 8
  %117 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %118 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %117, i32 0, i32 13
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %116, %121
  br i1 %122, label %123, label %147

123:                                              ; preds = %115
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %126 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %129, label %143

129:                                              ; preds = %123
  %130 = load i32, i32* %5, align 4
  %131 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %132 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %130, %133
  %135 = sext i32 %134 to i64
  %136 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %137 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = add i64 %138, %135
  store i64 %139, i64* %137, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %142 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %129, %123
  %144 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %145 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %7, align 8
  br label %272

147:                                              ; preds = %115
  %148 = load i64, i64* %4, align 8
  %149 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %150 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %149, i32 0, i32 13
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %148, %153
  br i1 %154, label %155, label %179

155:                                              ; preds = %147
  %156 = load i32, i32* %5, align 4
  %157 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %158 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %156, %159
  br i1 %160, label %161, label %175

161:                                              ; preds = %155
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %164 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %163, i32 0, i32 5
  %165 = load i32, i32* %164, align 8
  %166 = sub nsw i32 %162, %165
  %167 = sext i32 %166 to i64
  %168 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %169 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %168, i32 0, i32 6
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, %167
  store i64 %171, i64* %169, align 8
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %174 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %161, %155
  %176 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %177 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %176, i32 0, i32 6
  %178 = load i64, i64* %177, align 8
  store i64 %178, i64* %7, align 8
  br label %271

179:                                              ; preds = %147
  %180 = load i64, i64* %4, align 8
  %181 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %182 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %181, i32 0, i32 13
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %180, %185
  br i1 %186, label %187, label %211

187:                                              ; preds = %179
  %188 = load i32, i32* %5, align 4
  %189 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %190 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 8
  %192 = icmp ne i32 %188, %191
  br i1 %192, label %193, label %207

193:                                              ; preds = %187
  %194 = load i32, i32* %5, align 4
  %195 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %196 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %195, i32 0, i32 7
  %197 = load i32, i32* %196, align 8
  %198 = sub nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %201 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %200, i32 0, i32 8
  %202 = load i64, i64* %201, align 8
  %203 = add i64 %202, %199
  store i64 %203, i64* %201, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %206 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %205, i32 0, i32 7
  store i32 %204, i32* %206, align 8
  br label %207

207:                                              ; preds = %193, %187
  %208 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %209 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %208, i32 0, i32 8
  %210 = load i64, i64* %209, align 8
  store i64 %210, i64* %7, align 8
  br label %270

211:                                              ; preds = %179
  %212 = load i64, i64* %4, align 8
  %213 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %214 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %213, i32 0, i32 13
  %215 = load %struct.TYPE_2__*, %struct.TYPE_2__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 4
  %217 = load i64, i64* %216, align 8
  %218 = icmp eq i64 %212, %217
  br i1 %218, label %219, label %238

219:                                              ; preds = %211
  %220 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %221 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %220, i32 0, i32 12
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = load i64, i64* %7, align 8
  %226 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %227 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %226, i32 0, i32 9
  %228 = load i64, i64* %227, align 8
  %229 = sub i64 %225, %228
  %230 = load i64, i64* %7, align 8
  %231 = sub i64 %230, %229
  store i64 %231, i64* %7, align 8
  br label %232

232:                                              ; preds = %224, %219
  %233 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %234 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %233, i32 0, i32 14
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %7, align 8
  %237 = sub i64 %236, %235
  store i64 %237, i64* %7, align 8
  br label %269

238:                                              ; preds = %211
  %239 = load i64, i64* %4, align 8
  %240 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %241 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %240, i32 0, i32 13
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 5
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %239, %244
  br i1 %245, label %246, label %265

246:                                              ; preds = %238
  %247 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %248 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %247, i32 0, i32 12
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %259

251:                                              ; preds = %246
  %252 = load i64, i64* %7, align 8
  %253 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %254 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %253, i32 0, i32 10
  %255 = load i64, i64* %254, align 8
  %256 = sub i64 %252, %255
  %257 = load i64, i64* %7, align 8
  %258 = sub i64 %257, %256
  store i64 %258, i64* %7, align 8
  br label %259

259:                                              ; preds = %251, %246
  %260 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %261 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %260, i32 0, i32 11
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* %7, align 8
  %264 = sub i64 %263, %262
  store i64 %264, i64* %7, align 8
  br label %268

265:                                              ; preds = %238
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  store i64 %267, i64* %7, align 8
  br label %268

268:                                              ; preds = %265, %259
  br label %269

269:                                              ; preds = %268, %232
  br label %270

270:                                              ; preds = %269, %207
  br label %271

271:                                              ; preds = %270, %175
  br label %272

272:                                              ; preds = %271, %143
  br label %273

273:                                              ; preds = %272, %111
  %274 = load i64, i64* %7, align 8
  store i64 %274, i64* %10, align 8
  br label %275

275:                                              ; preds = %273, %81, %74
  %276 = load i64, i64* %10, align 8
  ret i64 %276
}

declare dso_local i64 @ipath_read_creg(%struct.ipath_devdata*, i64) #1

declare dso_local i32 @ipath_read_creg32(%struct.ipath_devdata*, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ipath_dev_err(%struct.ipath_devdata*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
