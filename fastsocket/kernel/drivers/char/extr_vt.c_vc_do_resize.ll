; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_vc_do_resize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_vc_do_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.vc_data = type { i32, i32, i32, i32, i32, i64, i32, i32, i16*, i32, i32, i32, i32, i64, i32 }
%struct.winsize = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@VC_RESIZE_MAXCOL = common dso_local global i32 0, align 4
@VC_RESIZE_MAXROW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VT_EVENT_RESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.vc_data*, i32, i32)* @vc_do_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc_do_resize(%struct.tty_struct* %0, %struct.vc_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i16*, align 8
  %27 = alloca %struct.winsize, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.vc_data* %1, %struct.vc_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %15, align 8
  %28 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %29 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %30 = icmp ne %struct.vc_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %331

34:                                               ; preds = %4
  %35 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %36 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %25, align 4
  %38 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @VC_RESIZE_MAXCOL, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @VC_RESIZE_MAXROW, align 4
  %46 = icmp ugt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %34
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %331

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %8, align 4
  br label %59

55:                                               ; preds = %50
  %56 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i32 [ %54, %53 ], [ %58, %55 ]
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  br label %69

65:                                               ; preds = %59
  %66 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %67 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi i32 [ %64, %63 ], [ %68, %65 ]
  store i32 %70, i32* %21, align 4
  %71 = load i32, i32* %20, align 4
  %72 = shl i32 %71, 1
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %21, align 4
  %75 = mul i32 %73, %74
  store i32 %75, i32* %23, align 4
  %76 = load i32, i32* %20, align 4
  %77 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %78 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load i32, i32* %21, align 4
  %83 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %84 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %331

88:                                               ; preds = %81, %69
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* @GFP_USER, align 4
  %91 = call i16* @kmalloc(i32 %89, i32 %90)
  store i16* %91, i16** %26, align 8
  %92 = load i16*, i16** %26, align 8
  %93 = icmp ne i16* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %331

97:                                               ; preds = %88
  %98 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %99 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %17, align 4
  %101 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %102 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %16, align 4
  %104 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %105 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %18, align 4
  %107 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %19, align 4
  %110 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %111 = load i32, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = load i32, i32* %25, align 4
  %114 = call i64 @resize_screen(%struct.vc_data* %110, i32 %111, i32 %112, i32 %113)
  store i64 %114, i64* %15, align 8
  %115 = load i64, i64* %15, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %97
  %118 = load i16*, i16** %26, align 8
  %119 = call i32 @kfree(i16* %118)
  %120 = load i64, i64* %15, align 8
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %5, align 4
  br label %331

122:                                              ; preds = %97
  %123 = load i32, i32* %21, align 4
  %124 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %125 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %20, align 4
  %127 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %128 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %22, align 4
  %130 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %131 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %23, align 4
  %133 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %134 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %133, i32 0, i32 4
  store i32 %132, i32* %134, align 8
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %22, align 4
  %137 = call i64 @min(i32 %135, i32 %136)
  store i64 %137, i64* %13, align 8
  %138 = load i32, i32* %22, align 4
  %139 = zext i32 %138 to i64
  %140 = load i64, i64* %13, align 8
  %141 = sub i64 %139, %140
  store i64 %141, i64* %14, align 8
  %142 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %143 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %142, i32 0, i32 5
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %10, align 8
  %145 = load i16*, i16** %26, align 8
  %146 = ptrtoint i16* %145 to i64
  store i64 %146, i64* %11, align 8
  %147 = load i64, i64* %11, align 8
  %148 = load i32, i32* %23, align 4
  %149 = zext i32 %148 to i64
  %150 = add i64 %147, %149
  store i64 %150, i64* %12, align 8
  %151 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %152 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %21, align 4
  %155 = icmp ugt i32 %153, %154
  br i1 %155, label %156, label %196

156:                                              ; preds = %122
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %159 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = sub i32 %157, %160
  %162 = load i32, i32* %21, align 4
  %163 = icmp ult i32 %161, %162
  br i1 %163, label %164, label %176

164:                                              ; preds = %156
  %165 = load i32, i32* %17, align 4
  %166 = load i32, i32* %21, align 4
  %167 = sub i32 %165, %166
  %168 = load i32, i32* %18, align 4
  %169 = mul i32 %167, %168
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* %10, align 8
  %172 = add i64 %171, %170
  store i64 %172, i64* %10, align 8
  %173 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %174 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %173, i32 0, i32 7
  %175 = load i32, i32* %174, align 4
  store i32 %175, i32* %24, align 4
  br label %195

176:                                              ; preds = %156
  %177 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %178 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %21, align 4
  %181 = udiv i32 %180, 2
  %182 = sub i32 %179, %181
  %183 = load i32, i32* %18, align 4
  %184 = mul i32 %182, %183
  %185 = zext i32 %184 to i64
  %186 = load i64, i64* %10, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %10, align 8
  %188 = load i64, i64* %10, align 8
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* %21, align 4
  %191 = mul i32 %189, %190
  %192 = zext i32 %191 to i64
  %193 = add i64 %188, %192
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %24, align 4
  br label %195

195:                                              ; preds = %176, %164
  br label %215

196:                                              ; preds = %122
  %197 = load i32, i32* %17, align 4
  %198 = load i32, i32* %21, align 4
  %199 = icmp ugt i32 %197, %198
  br i1 %199, label %200, label %207

200:                                              ; preds = %196
  %201 = load i64, i64* %10, align 8
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %21, align 4
  %204 = mul i32 %202, %203
  %205 = zext i32 %204 to i64
  %206 = add i64 %201, %205
  br label %212

207:                                              ; preds = %196
  %208 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %209 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 4
  %211 = zext i32 %210 to i64
  br label %212

212:                                              ; preds = %207, %200
  %213 = phi i64 [ %206, %200 ], [ %211, %207 ]
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %24, align 4
  br label %215

215:                                              ; preds = %212, %195
  %216 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %217 = call i32 @update_attr(%struct.vc_data* %216)
  br label %218

218:                                              ; preds = %242, %215
  %219 = load i64, i64* %10, align 8
  %220 = load i32, i32* %24, align 4
  %221 = zext i32 %220 to i64
  %222 = icmp ult i64 %219, %221
  br i1 %222, label %223, label %251

223:                                              ; preds = %218
  %224 = load i64, i64* %11, align 8
  %225 = inttoptr i64 %224 to i16*
  %226 = load i64, i64* %10, align 8
  %227 = inttoptr i64 %226 to i16*
  %228 = load i64, i64* %13, align 8
  %229 = call i32 @scr_memcpyw(i16* %225, i16* %227, i64 %228)
  %230 = load i64, i64* %14, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %242

232:                                              ; preds = %223
  %233 = load i64, i64* %11, align 8
  %234 = load i64, i64* %13, align 8
  %235 = add i64 %233, %234
  %236 = inttoptr i64 %235 to i8*
  %237 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %238 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %237, i32 0, i32 14
  %239 = load i32, i32* %238, align 8
  %240 = load i64, i64* %14, align 8
  %241 = call i32 @scr_memsetw(i8* %236, i32 %239, i64 %240)
  br label %242

242:                                              ; preds = %232, %223
  %243 = load i32, i32* %18, align 4
  %244 = zext i32 %243 to i64
  %245 = load i64, i64* %10, align 8
  %246 = add i64 %245, %244
  store i64 %246, i64* %10, align 8
  %247 = load i32, i32* %22, align 4
  %248 = zext i32 %247 to i64
  %249 = load i64, i64* %11, align 8
  %250 = add i64 %249, %248
  store i64 %250, i64* %11, align 8
  br label %218

251:                                              ; preds = %218
  %252 = load i64, i64* %12, align 8
  %253 = load i64, i64* %11, align 8
  %254 = icmp ugt i64 %252, %253
  br i1 %254, label %255, label %265

255:                                              ; preds = %251
  %256 = load i64, i64* %11, align 8
  %257 = inttoptr i64 %256 to i8*
  %258 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %259 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %258, i32 0, i32 14
  %260 = load i32, i32* %259, align 8
  %261 = load i64, i64* %12, align 8
  %262 = load i64, i64* %11, align 8
  %263 = sub i64 %261, %262
  %264 = call i32 @scr_memsetw(i8* %257, i32 %260, i64 %263)
  br label %265

265:                                              ; preds = %255, %251
  %266 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %267 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %266, i32 0, i32 8
  %268 = load i16*, i16** %267, align 8
  %269 = call i32 @kfree(i16* %268)
  %270 = load i16*, i16** %26, align 8
  %271 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %272 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %271, i32 0, i32 8
  store i16* %270, i16** %272, align 8
  %273 = load i32, i32* %23, align 4
  %274 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %275 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %274, i32 0, i32 4
  store i32 %273, i32* %275, align 8
  %276 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %277 = call i32 @set_origin(%struct.vc_data* %276)
  %278 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %279 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %278, i32 0, i32 13
  store i64 0, i64* %279, align 8
  %280 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %281 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %284 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %283, i32 0, i32 9
  store i32 %282, i32* %284, align 8
  %285 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %286 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %287 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %286, i32 0, i32 12
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %290 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @gotoxy(%struct.vc_data* %285, i32 %288, i32 %291)
  %293 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %294 = call i32 @save_cur(%struct.vc_data* %293)
  %295 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %296 = icmp ne %struct.tty_struct* %295, null
  br i1 %296, label %297, label %313

297:                                              ; preds = %265
  %298 = call i32 @memset(%struct.winsize* %27, i32 0, i32 12)
  %299 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %300 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds %struct.winsize, %struct.winsize* %27, i32 0, i32 0
  store i32 %301, i32* %302, align 4
  %303 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %304 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = getelementptr inbounds %struct.winsize, %struct.winsize* %27, i32 0, i32 1
  store i32 %305, i32* %306, align 4
  %307 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %308 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %307, i32 0, i32 11
  %309 = load i32, i32* %308, align 8
  %310 = getelementptr inbounds %struct.winsize, %struct.winsize* %27, i32 0, i32 2
  store i32 %309, i32* %310, align 4
  %311 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %312 = call i32 @tty_do_resize(%struct.tty_struct* %311, %struct.winsize* %27)
  br label %313

313:                                              ; preds = %297, %265
  %314 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %315 = call i64 @CON_IS_VISIBLE(%struct.vc_data* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %320

317:                                              ; preds = %313
  %318 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %319 = call i32 @update_screen(%struct.vc_data* %318)
  br label %320

320:                                              ; preds = %317, %313
  %321 = load i32, i32* @VT_EVENT_RESIZE, align 4
  %322 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %323 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %322, i32 0, i32 10
  %324 = load i32, i32* %323, align 4
  %325 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %326 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %325, i32 0, i32 10
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @vt_event_post(i32 %321, i32 %324, i32 %327)
  %329 = load i64, i64* %15, align 8
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %5, align 4
  br label %331

331:                                              ; preds = %320, %117, %94, %87, %47, %31
  %332 = load i32, i32* %5, align 4
  ret i32 %332
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local i16* @kmalloc(i32, i32) #1

declare dso_local i64 @resize_screen(%struct.vc_data*, i32, i32, i32) #1

declare dso_local i32 @kfree(i16*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @scr_memcpyw(i16*, i16*, i64) #1

declare dso_local i32 @scr_memsetw(i8*, i32, i64) #1

declare dso_local i32 @set_origin(%struct.vc_data*) #1

declare dso_local i32 @gotoxy(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @save_cur(%struct.vc_data*) #1

declare dso_local i32 @memset(%struct.winsize*, i32, i32) #1

declare dso_local i32 @tty_do_resize(%struct.tty_struct*, %struct.winsize*) #1

declare dso_local i64 @CON_IS_VISIBLE(%struct.vc_data*) #1

declare dso_local i32 @update_screen(%struct.vc_data*) #1

declare dso_local i32 @vt_event_post(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
