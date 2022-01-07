; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_erase.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/extr_mtdconcat.c_concat_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i64 }
%struct.erase_info = type { i64, i64, i64, i32 (%struct.erase_info*)*, i32 }
%struct.mtd_concat = type { i32, %struct.mtd_info**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.mtd_erase_region_info* }
%struct.mtd_erase_region_info = type { i64, i32 }

@MTD_WRITEABLE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MTD_FAIL_ADDR_UNKNOWN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @concat_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concat_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.erase_info*, align 8
  %6 = alloca %struct.mtd_concat*, align 8
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.erase_info*, align 8
  %13 = alloca %struct.mtd_erase_region_info*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store %struct.erase_info* %1, %struct.erase_info** %5, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %15 = call %struct.mtd_concat* @CONCAT(%struct.mtd_info* %14)
  store %struct.mtd_concat* %15, %struct.mtd_concat** %6, align 8
  store i8* null, i8** %11, align 8
  %16 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MTD_WRITEABLE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EROFS, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %378

25:                                               ; preds = %2
  %26 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %27 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %30 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %28, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %378

37:                                               ; preds = %25
  %38 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %39 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %42 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %46 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %44, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %378

53:                                               ; preds = %37
  %54 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %55 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %90, label %59

59:                                               ; preds = %53
  %60 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %61 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %64 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = and i64 %62, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %59
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %378

74:                                               ; preds = %59
  %75 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %76 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %79 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = and i64 %77, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %378

89:                                               ; preds = %74
  br label %197

90:                                               ; preds = %53
  %91 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %92 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 3
  %94 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %93, align 8
  store %struct.mtd_erase_region_info* %94, %struct.mtd_erase_region_info** %13, align 8
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %116, %90
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %98 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %95
  %103 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %104 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %13, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %106, i64 %108
  %110 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp sge i64 %105, %111
  br label %113

113:                                              ; preds = %102, %95
  %114 = phi i1 [ false, %95 ], [ %112, %102 ]
  br i1 %114, label %115, label %119

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %95

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %138, label %124

124:                                              ; preds = %119
  %125 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %126 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %13, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %128, i64 %130
  %132 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = and i64 %127, %135
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %124, %119
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %378

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %167, %141
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %145 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %143, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %142
  %150 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %151 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %154 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %152, %155
  %157 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %13, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %157, i64 %159
  %161 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp sge i64 %156, %162
  br label %164

164:                                              ; preds = %149, %142
  %165 = phi i1 [ false, %142 ], [ %163, %149 ]
  br i1 %165, label %166, label %170

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %8, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %8, align 4
  br label %142

170:                                              ; preds = %164
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %193, label %175

175:                                              ; preds = %170
  %176 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %177 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %180 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %178, %181
  %183 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %13, align 8
  %184 = load i32, i32* %8, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %183, i64 %185
  %187 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = and i64 %182, %190
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %175, %170
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %378

196:                                              ; preds = %175
  br label %197

197:                                              ; preds = %196, %89
  %198 = load i64, i64* @MTD_FAIL_ADDR_UNKNOWN, align 8
  %199 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %200 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  %201 = load i32, i32* @GFP_KERNEL, align 4
  %202 = call %struct.erase_info* @kmalloc(i32 40, i32 %201)
  store %struct.erase_info* %202, %struct.erase_info** %12, align 8
  %203 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %204 = icmp ne %struct.erase_info* %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %197
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %3, align 4
  br label %378

208:                                              ; preds = %197
  %209 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %210 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %211 = bitcast %struct.erase_info* %209 to i8*
  %212 = bitcast %struct.erase_info* %210 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %211, i8* align 8 %212, i64 40, i1 false)
  %213 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %214 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = inttoptr i64 %215 to i8*
  store i8* %216, i8** %10, align 8
  store i32 0, i32* %8, align 4
  br label %217

217:                                              ; preds = %253, %208
  %218 = load i32, i32* %8, align 4
  %219 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %220 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %218, %221
  br i1 %222, label %223, label %256

223:                                              ; preds = %217
  %224 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %225 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %224, i32 0, i32 1
  %226 = load %struct.mtd_info**, %struct.mtd_info*** %225, align 8
  %227 = load i32, i32* %8, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %226, i64 %228
  %230 = load %struct.mtd_info*, %struct.mtd_info** %229, align 8
  store %struct.mtd_info* %230, %struct.mtd_info** %7, align 8
  %231 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %232 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %235 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp sle i64 %233, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %223
  %239 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %240 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %243 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = sub nsw i64 %244, %241
  store i64 %245, i64* %243, align 8
  %246 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %247 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i8*, i8** %11, align 8
  %250 = getelementptr i8, i8* %249, i64 %248
  store i8* %250, i8** %11, align 8
  br label %252

251:                                              ; preds = %223
  br label %256

252:                                              ; preds = %238
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %217

256:                                              ; preds = %251, %217
  %257 = load i32, i32* %8, align 4
  %258 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %259 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp sge i32 %257, %260
  %262 = zext i1 %261 to i32
  %263 = call i32 @BUG_ON(i32 %262)
  store i32 0, i32* %9, align 4
  br label %264

264:                                              ; preds = %351, %256
  %265 = load i8*, i8** %10, align 8
  %266 = icmp ugt i8* %265, null
  br i1 %266, label %267, label %354

267:                                              ; preds = %264
  %268 = load %struct.mtd_concat*, %struct.mtd_concat** %6, align 8
  %269 = getelementptr inbounds %struct.mtd_concat, %struct.mtd_concat* %268, i32 0, i32 1
  %270 = load %struct.mtd_info**, %struct.mtd_info*** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.mtd_info*, %struct.mtd_info** %270, i64 %272
  %274 = load %struct.mtd_info*, %struct.mtd_info** %273, align 8
  store %struct.mtd_info* %274, %struct.mtd_info** %7, align 8
  %275 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %276 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load i8*, i8** %10, align 8
  %279 = getelementptr i8, i8* %278, i64 %277
  %280 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %281 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = inttoptr i64 %282 to i8*
  %284 = icmp ugt i8* %279, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %267
  %286 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %287 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %290 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = sub nsw i64 %288, %291
  %293 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %294 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %293, i32 0, i32 1
  store i64 %292, i64* %294, align 8
  br label %300

295:                                              ; preds = %267
  %296 = load i8*, i8** %10, align 8
  %297 = ptrtoint i8* %296 to i64
  %298 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %299 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %298, i32 0, i32 1
  store i64 %297, i64* %299, align 8
  br label %300

300:                                              ; preds = %295, %285
  %301 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %302 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @MTD_WRITEABLE, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %310, label %307

307:                                              ; preds = %300
  %308 = load i32, i32* @EROFS, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %9, align 4
  br label %354

310:                                              ; preds = %300
  %311 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %312 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = load i8*, i8** %10, align 8
  %315 = sub i64 0, %313
  %316 = getelementptr i8, i8* %314, i64 %315
  store i8* %316, i8** %10, align 8
  %317 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %318 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %319 = call i32 @concat_dev_erase(%struct.mtd_info* %317, %struct.erase_info* %318)
  store i32 %319, i32* %9, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %343

321:                                              ; preds = %310
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* @EINVAL, align 4
  %324 = sub nsw i32 0, %323
  %325 = icmp eq i32 %322, %324
  %326 = zext i1 %325 to i32
  %327 = call i32 @BUG_ON(i32 %326)
  %328 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %329 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %328, i32 0, i32 2
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @MTD_FAIL_ADDR_UNKNOWN, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %342

333:                                              ; preds = %321
  %334 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %335 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %334, i32 0, i32 2
  %336 = load i64, i64* %335, align 8
  %337 = load i8*, i8** %11, align 8
  %338 = getelementptr i8, i8* %337, i64 %336
  %339 = ptrtoint i8* %338 to i64
  %340 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %341 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %340, i32 0, i32 2
  store i64 %339, i64* %341, align 8
  br label %342

342:                                              ; preds = %333, %321
  br label %354

343:                                              ; preds = %310
  %344 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %345 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %344, i32 0, i32 0
  store i64 0, i64* %345, align 8
  %346 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %347 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = load i8*, i8** %11, align 8
  %350 = getelementptr i8, i8* %349, i64 %348
  store i8* %350, i8** %11, align 8
  br label %351

351:                                              ; preds = %343
  %352 = load i32, i32* %8, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %8, align 4
  br label %264

354:                                              ; preds = %342, %307, %264
  %355 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %356 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %355, i32 0, i32 4
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %359 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %358, i32 0, i32 4
  store i32 %357, i32* %359, align 8
  %360 = load %struct.erase_info*, %struct.erase_info** %12, align 8
  %361 = call i32 @kfree(%struct.erase_info* %360)
  %362 = load i32, i32* %9, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %366

364:                                              ; preds = %354
  %365 = load i32, i32* %9, align 4
  store i32 %365, i32* %3, align 4
  br label %378

366:                                              ; preds = %354
  %367 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %368 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %367, i32 0, i32 3
  %369 = load i32 (%struct.erase_info*)*, i32 (%struct.erase_info*)** %368, align 8
  %370 = icmp ne i32 (%struct.erase_info*)* %369, null
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %373 = getelementptr inbounds %struct.erase_info, %struct.erase_info* %372, i32 0, i32 3
  %374 = load i32 (%struct.erase_info*)*, i32 (%struct.erase_info*)** %373, align 8
  %375 = load %struct.erase_info*, %struct.erase_info** %5, align 8
  %376 = call i32 %374(%struct.erase_info* %375)
  br label %377

377:                                              ; preds = %371, %366
  store i32 0, i32* %3, align 4
  br label %378

378:                                              ; preds = %377, %364, %205, %193, %138, %86, %71, %50, %34, %22
  %379 = load i32, i32* %3, align 4
  ret i32 %379
}

declare dso_local %struct.mtd_concat* @CONCAT(%struct.mtd_info*) #1

declare dso_local %struct.erase_info* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @concat_dev_erase(%struct.mtd_info*, %struct.erase_info*) #1

declare dso_local i32 @kfree(%struct.erase_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
