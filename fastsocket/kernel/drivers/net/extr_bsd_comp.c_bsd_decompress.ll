; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bsd_comp.c_bsd_decompress.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bsd_comp.c_bsd_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsd_db = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32 }
%struct.bsd_dict = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8, i32 }

@PPP_HDRLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"bsd_decomp%d: bad sequence # %d, expected %d\0A\00", align 1
@DECOMP_ERROR = common dso_local global i32 0, align 4
@CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"bsd_decomp%d: bad CLEAR\0A\00", align 1
@DECOMP_FATALERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"bsd_decomp%d: bad code 0x%x oldcode=0x%x \00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"max_ent=0x%x explen=%d seqno=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"bsd_decomp%d: ran out of mru\0A\00", align 1
@LAST = common dso_local global i32 0, align 4
@BADCODEM1 = common dso_local global i32 0, align 4
@BSD_OVHD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"bsd_decomp%d: peer should have cleared dictionary on %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i8*, i32)* @bsd_decompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsd_decompress(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bsd_db*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bsd_dict*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.bsd_dict*, align 8
  %32 = alloca %struct.bsd_dict*, align 8
  %33 = alloca %struct.bsd_dict*, align 8
  %34 = alloca i16*, align 8
  %35 = alloca i16*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = bitcast i8* %40 to %struct.bsd_db*
  store %struct.bsd_db* %41, %struct.bsd_db** %12, align 8
  %42 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %43 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i32 32, i32* %15, align 4
  %45 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %46 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = sub i32 32, %48
  store i32 %49, i32* %17, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @PPP_ADDRESS(i8* %50)
  store i32 %51, i32* %26, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @PPP_CONTROL(i8* %52)
  store i32 %53, i32* %27, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 4
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = shl i32 %57, 8
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 5
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = add nsw i32 %58, %62
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* @PPP_HDRLEN, align 4
  %65 = add nsw i32 %64, 2
  %66 = load i8*, i8** %8, align 8
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  store i8* %68, i8** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @PPP_HDRLEN, align 4
  %71 = add nsw i32 %70, 2
  %72 = sub nsw i32 %69, %71
  store i32 %72, i32* %28, align 4
  %73 = load i32, i32* %20, align 4
  %74 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %75 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %5
  %79 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %80 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %79, i32 0, i32 9
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %78
  %84 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %85 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %20, align 4
  %88 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %89 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %83, %78
  %94 = load i32, i32* @DECOMP_ERROR, align 4
  store i32 %94, i32* %6, align 4
  br label %467

95:                                               ; preds = %5
  %96 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %97 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* %28, align 4
  %101 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %102 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load i8*, i8** %10, align 8
  store i8* %105, i8** %25, align 8
  %106 = load i32, i32* %26, align 4
  %107 = trunc i32 %106 to i8
  %108 = load i8*, i8** %25, align 8
  %109 = getelementptr inbounds i8, i8* %108, i32 1
  store i8* %109, i8** %25, align 8
  store i8 %107, i8* %108, align 1
  %110 = load i32, i32* %27, align 4
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %25, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %25, align 8
  store i8 %111, i8* %112, align 1
  %114 = load i8*, i8** %25, align 8
  %115 = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %115, i8** %25, align 8
  store i8 0, i8* %114, align 1
  %116 = load i32, i32* @CLEAR, align 4
  store i32 %116, i32* %22, align 4
  store i32 3, i32* %19, align 4
  br label %117

117:                                              ; preds = %422, %143, %95
  %118 = load i32, i32* %28, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %28, align 4
  %120 = icmp sle i32 %118, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %117
  %122 = load i32, i32* %19, align 4
  %123 = sub nsw i32 %122, 3
  %124 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %125 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %424

128:                                              ; preds = %117
  %129 = load i32, i32* %15, align 4
  %130 = sub i32 %129, 8
  store i32 %130, i32* %15, align 4
  %131 = load i8*, i8** %8, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %8, align 8
  %133 = load i8, i8* %131, align 1
  %134 = zext i8 %133 to i32
  %135 = load i32, i32* %15, align 4
  %136 = shl i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = load i64, i64* %14, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %14, align 8
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* %15, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %128
  br label %117

144:                                              ; preds = %128
  %145 = load i64, i64* %14, align 8
  %146 = load i32, i32* %17, align 4
  %147 = zext i32 %146 to i64
  %148 = lshr i64 %145, %147
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* %16, align 4
  %151 = load i64, i64* %14, align 8
  %152 = zext i32 %150 to i64
  %153 = shl i64 %151, %152
  store i64 %153, i64* %14, align 8
  %154 = load i32, i32* %16, align 4
  %155 = load i32, i32* %15, align 4
  %156 = add i32 %155, %154
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %21, align 4
  %158 = load i32, i32* @CLEAR, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %178

160:                                              ; preds = %144
  %161 = load i32, i32* %28, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %175

163:                                              ; preds = %160
  %164 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %165 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %164, i32 0, i32 9
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %170 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %168, %163
  %174 = load i32, i32* @DECOMP_FATALERROR, align 4
  store i32 %174, i32* %6, align 4
  br label %467

175:                                              ; preds = %160
  %176 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %177 = call i32 @bsd_clear(%struct.bsd_db* %176)
  br label %424

178:                                              ; preds = %144
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %13, align 4
  %181 = add i32 %180, 2
  %182 = icmp ugt i32 %179, %181
  br i1 %182, label %197, label %183

183:                                              ; preds = %178
  %184 = load i32, i32* %21, align 4
  %185 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %186 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = icmp ugt i32 %184, %187
  br i1 %188, label %197, label %189

189:                                              ; preds = %183
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp ugt i32 %190, %191
  br i1 %192, label %193, label %217

193:                                              ; preds = %189
  %194 = load i32, i32* %22, align 4
  %195 = load i32, i32* @CLEAR, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %217

197:                                              ; preds = %193, %183, %178
  %198 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %199 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %198, i32 0, i32 9
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %197
  %203 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %204 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %22, align 4
  %208 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %205, i32 %206, i32 %207)
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %19, align 4
  %211 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %212 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %209, i32 %210, i32 %213)
  br label %215

215:                                              ; preds = %202, %197
  %216 = load i32, i32* @DECOMP_FATALERROR, align 4
  store i32 %216, i32* %6, align 4
  br label %467

217:                                              ; preds = %193, %189
  %218 = load i32, i32* %21, align 4
  %219 = load i32, i32* %13, align 4
  %220 = icmp ugt i32 %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  %222 = load i32, i32* %22, align 4
  store i32 %222, i32* %23, align 4
  store i32 1, i32* %30, align 4
  br label %225

223:                                              ; preds = %217
  %224 = load i32, i32* %21, align 4
  store i32 %224, i32* %23, align 4
  store i32 0, i32* %30, align 4
  br label %225

225:                                              ; preds = %223, %221
  %226 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %227 = load i32, i32* %23, align 4
  %228 = call i32* @lens_ptr(%struct.bsd_db* %226, i32 %227)
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %29, align 4
  %230 = load i32, i32* %29, align 4
  %231 = load i32, i32* %30, align 4
  %232 = add nsw i32 %230, %231
  %233 = load i32, i32* %19, align 4
  %234 = add nsw i32 %233, %232
  store i32 %234, i32* %19, align 4
  %235 = load i32, i32* %19, align 4
  %236 = load i32, i32* %11, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %250

238:                                              ; preds = %225
  %239 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %240 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %239, i32 0, i32 9
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %245 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %244, i32 0, i32 8
  %246 = load i32, i32* %245, align 8
  %247 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %243, %238
  %249 = load i32, i32* @DECOMP_FATALERROR, align 4
  store i32 %249, i32* %6, align 4
  br label %467

250:                                              ; preds = %225
  %251 = load i32, i32* %29, align 4
  %252 = load i8*, i8** %25, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8* %254, i8** %25, align 8
  %255 = load i8*, i8** %25, align 8
  store i8* %255, i8** %24, align 8
  br label %256

256:                                              ; preds = %260, %250
  %257 = load i32, i32* %23, align 4
  %258 = load i32, i32* @LAST, align 4
  %259 = icmp ugt i32 %257, %258
  br i1 %259, label %260, label %281

260:                                              ; preds = %256
  %261 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %262 = load i32, i32* %23, align 4
  %263 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %261, i32 %262)
  store %struct.bsd_dict* %263, %struct.bsd_dict** %31, align 8
  %264 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %265 = load %struct.bsd_dict*, %struct.bsd_dict** %31, align 8
  %266 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %264, i32 %267)
  store %struct.bsd_dict* %268, %struct.bsd_dict** %18, align 8
  %269 = load %struct.bsd_dict*, %struct.bsd_dict** %18, align 8
  %270 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i8, i8* %272, align 8
  %274 = load i8*, i8** %24, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 -1
  store i8* %275, i8** %24, align 8
  store i8 %273, i8* %275, align 1
  %276 = load %struct.bsd_dict*, %struct.bsd_dict** %18, align 8
  %277 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  store i32 %280, i32* %23, align 4
  br label %256

281:                                              ; preds = %256
  %282 = load i32, i32* %23, align 4
  %283 = trunc i32 %282 to i8
  %284 = load i8*, i8** %24, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 -1
  store i8* %285, i8** %24, align 8
  store i8 %283, i8* %285, align 1
  %286 = load i32, i32* %30, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %281
  %289 = load i32, i32* %23, align 4
  %290 = trunc i32 %289 to i8
  %291 = load i8*, i8** %25, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %25, align 8
  store i8 %290, i8* %291, align 1
  br label %293

293:                                              ; preds = %288, %281
  %294 = load i32, i32* %22, align 4
  %295 = load i32, i32* @CLEAR, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %422

297:                                              ; preds = %293
  %298 = load i32, i32* %13, align 4
  %299 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %300 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = icmp ult i32 %298, %301
  br i1 %302, label %303, label %422

303:                                              ; preds = %297
  %304 = load i32, i32* %22, align 4
  %305 = load i32, i32* %23, align 4
  %306 = call i64 @BSD_KEY(i32 %304, i32 %305)
  store i64 %306, i64* %36, align 8
  %307 = load i32, i32* %22, align 4
  %308 = load i32, i32* %23, align 4
  %309 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %310 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %309, i32 0, i32 13
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @BSD_HASH(i32 %307, i32 %308, i32 %311)
  store i32 %312, i32* %37, align 4
  %313 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %314 = load i32, i32* %37, align 4
  %315 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %313, i32 %314)
  store %struct.bsd_dict* %315, %struct.bsd_dict** %18, align 8
  %316 = load %struct.bsd_dict*, %struct.bsd_dict** %18, align 8
  %317 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %13, align 4
  %320 = icmp ult i32 %318, %319
  br i1 %320, label %321, label %355

321:                                              ; preds = %303
  %322 = load i32, i32* %37, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %321
  br label %327

325:                                              ; preds = %321
  %326 = load i32, i32* %37, align 4
  br label %327

327:                                              ; preds = %325, %324
  %328 = phi i32 [ 1, %324 ], [ %326, %325 ]
  store i32 %328, i32* %38, align 4
  br label %329

329:                                              ; preds = %348, %327
  %330 = load i32, i32* %38, align 4
  %331 = load i32, i32* %37, align 4
  %332 = add nsw i32 %331, %330
  store i32 %332, i32* %37, align 4
  %333 = load i32, i32* %37, align 4
  %334 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %335 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 8
  %337 = icmp sge i32 %333, %336
  br i1 %337, label %338, label %344

338:                                              ; preds = %329
  %339 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %340 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %339, i32 0, i32 6
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* %37, align 4
  %343 = sub nsw i32 %342, %341
  store i32 %343, i32* %37, align 4
  br label %344

344:                                              ; preds = %338, %329
  %345 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %346 = load i32, i32* %37, align 4
  %347 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %345, i32 %346)
  store %struct.bsd_dict* %347, %struct.bsd_dict** %18, align 8
  br label %348

348:                                              ; preds = %344
  %349 = load %struct.bsd_dict*, %struct.bsd_dict** %18, align 8
  %350 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %13, align 4
  %353 = icmp ult i32 %351, %352
  br i1 %353, label %329, label %354

354:                                              ; preds = %348
  br label %355

355:                                              ; preds = %354, %303
  %356 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %357 = load i32, i32* %13, align 4
  %358 = add i32 %357, 1
  %359 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %356, i32 %358)
  store %struct.bsd_dict* %359, %struct.bsd_dict** %32, align 8
  %360 = load %struct.bsd_dict*, %struct.bsd_dict** %32, align 8
  %361 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  store i32 %362, i32* %39, align 4
  %363 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %364 = load i32, i32* %39, align 4
  %365 = call %struct.bsd_dict* @dict_ptr(%struct.bsd_db* %363, i32 %364)
  store %struct.bsd_dict* %365, %struct.bsd_dict** %33, align 8
  %366 = load %struct.bsd_dict*, %struct.bsd_dict** %33, align 8
  %367 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %13, align 4
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %371, label %375

371:                                              ; preds = %355
  %372 = load i32, i32* @BADCODEM1, align 4
  %373 = load %struct.bsd_dict*, %struct.bsd_dict** %33, align 8
  %374 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %373, i32 0, i32 1
  store i32 %372, i32* %374, align 4
  br label %375

375:                                              ; preds = %371, %355
  %376 = load i32, i32* %37, align 4
  %377 = load %struct.bsd_dict*, %struct.bsd_dict** %32, align 8
  %378 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %377, i32 0, i32 0
  store i32 %376, i32* %378, align 8
  %379 = load i32, i32* %13, align 4
  %380 = load %struct.bsd_dict*, %struct.bsd_dict** %18, align 8
  %381 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %380, i32 0, i32 1
  store i32 %379, i32* %381, align 4
  %382 = load i64, i64* %36, align 8
  %383 = load %struct.bsd_dict*, %struct.bsd_dict** %18, align 8
  %384 = getelementptr inbounds %struct.bsd_dict, %struct.bsd_dict* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i32 0, i32 0
  store i64 %382, i64* %385, align 8
  %386 = load i32, i32* %13, align 4
  %387 = add i32 %386, 1
  store i32 %387, i32* %13, align 4
  %388 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %389 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %388, i32 0, i32 0
  store i32 %387, i32* %389, align 8
  %390 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %391 = load i32, i32* %13, align 4
  %392 = call i32* @lens_ptr(%struct.bsd_db* %390, i32 %391)
  %393 = bitcast i32* %392 to i16*
  store i16* %393, i16** %34, align 8
  %394 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %395 = load i32, i32* %22, align 4
  %396 = call i32* @lens_ptr(%struct.bsd_db* %394, i32 %395)
  %397 = bitcast i32* %396 to i16*
  store i16* %397, i16** %35, align 8
  %398 = load i16*, i16** %35, align 8
  %399 = load i16, i16* %398, align 2
  %400 = zext i16 %399 to i32
  %401 = add nsw i32 %400, 1
  %402 = trunc i32 %401 to i16
  %403 = load i16*, i16** %34, align 8
  store i16 %402, i16* %403, align 2
  %404 = load i32, i32* %13, align 4
  %405 = load i32, i32* %16, align 4
  %406 = call i32 @MAXCODE(i32 %405)
  %407 = icmp uge i32 %404, %406
  br i1 %407, label %408, label %421

408:                                              ; preds = %375
  %409 = load i32, i32* %13, align 4
  %410 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %411 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %410, i32 0, i32 5
  %412 = load i32, i32* %411, align 4
  %413 = icmp ult i32 %409, %412
  br i1 %413, label %414, label %421

414:                                              ; preds = %408
  %415 = load i32, i32* %16, align 4
  %416 = add i32 %415, 1
  store i32 %416, i32* %16, align 4
  %417 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %418 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %417, i32 0, i32 1
  store i32 %416, i32* %418, align 4
  %419 = load i32, i32* %16, align 4
  %420 = sub i32 32, %419
  store i32 %420, i32* %17, align 4
  br label %421

421:                                              ; preds = %414, %408, %375
  br label %422

422:                                              ; preds = %421, %297, %293
  %423 = load i32, i32* %21, align 4
  store i32 %423, i32* %22, align 4
  br label %117

424:                                              ; preds = %175, %121
  %425 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %426 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %425, i32 0, i32 12
  %427 = load i32, i32* %426, align 8
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %426, align 8
  %429 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %430 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %429, i32 0, i32 11
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %430, align 4
  %433 = load i32, i32* %9, align 4
  %434 = load i32, i32* @BSD_OVHD, align 4
  %435 = sub nsw i32 %433, %434
  %436 = load i32, i32* @PPP_HDRLEN, align 4
  %437 = sub nsw i32 %435, %436
  %438 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %439 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %438, i32 0, i32 10
  %440 = load i32, i32* %439, align 8
  %441 = add nsw i32 %440, %437
  store i32 %441, i32* %439, align 8
  %442 = load i32, i32* %19, align 4
  %443 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %444 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %443, i32 0, i32 7
  %445 = load i32, i32* %444, align 4
  %446 = add nsw i32 %445, %442
  store i32 %446, i32* %444, align 4
  %447 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %448 = call i64 @bsd_check(%struct.bsd_db* %447)
  %449 = icmp ne i64 %448, 0
  br i1 %449, label %450, label %465

450:                                              ; preds = %424
  %451 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %452 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %451, i32 0, i32 9
  %453 = load i64, i64* %452, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %450
  %456 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %457 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %456, i32 0, i32 8
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.bsd_db*, %struct.bsd_db** %12, align 8
  %460 = getelementptr inbounds %struct.bsd_db, %struct.bsd_db* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 8
  %462 = sub nsw i32 %461, 1
  %463 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %458, i32 %462)
  br label %464

464:                                              ; preds = %455, %450
  br label %465

465:                                              ; preds = %464, %424
  %466 = load i32, i32* %19, align 4
  store i32 %466, i32* %6, align 4
  br label %467

467:                                              ; preds = %465, %248, %215, %173, %93
  %468 = load i32, i32* %6, align 4
  ret i32 %468
}

declare dso_local i32 @PPP_ADDRESS(i8*) #1

declare dso_local i32 @PPP_CONTROL(i8*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @bsd_clear(%struct.bsd_db*) #1

declare dso_local i32* @lens_ptr(%struct.bsd_db*, i32) #1

declare dso_local %struct.bsd_dict* @dict_ptr(%struct.bsd_db*, i32) #1

declare dso_local i64 @BSD_KEY(i32, i32) #1

declare dso_local i32 @BSD_HASH(i32, i32, i32) #1

declare dso_local i32 @MAXCODE(i32) #1

declare dso_local i64 @bsd_check(%struct.bsd_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
