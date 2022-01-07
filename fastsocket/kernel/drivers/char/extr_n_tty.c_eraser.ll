; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_eraser.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_eraser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i32, i8*, i32, i32 }

@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, %struct.tty_struct*)* @eraser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eraser(i8 zeroext %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8 %0, i8* %3, align 1
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %13 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %14 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %384

21:                                               ; preds = %2
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = call zeroext i8 @ERASE_CHAR(%struct.tty_struct* %24)
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %124

29:                                               ; preds = %21
  %30 = load i8, i8* %3, align 1
  %31 = zext i8 %30 to i32
  %32 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %33 = call zeroext i8 @WERASE_CHAR(%struct.tty_struct* %32)
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %5, align 4
  br label %123

37:                                               ; preds = %29
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = call i64 @L_ECHO(%struct.tty_struct* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %69, label %41

41:                                               ; preds = %37
  %42 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %43 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %42, i32 0, i32 5
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %48, %51
  %53 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %52, %54
  %56 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %57 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %61 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %66 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %65, i32 0, i32 5
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  br label %384

69:                                               ; preds = %37
  %70 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %71 = call i64 @L_ECHOK(%struct.tty_struct* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %75 = call i32 @L_ECHOKE(%struct.tty_struct* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %79 = call i32 @L_ECHOE(%struct.tty_struct* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %122, label %81

81:                                               ; preds = %77, %73, %69
  %82 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %83 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %82, i32 0, i32 5
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @spin_lock_irqsave(i32* %83, i64 %84)
  %86 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %87 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %90 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %88, %91
  %93 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %94 = sub nsw i32 %93, 1
  %95 = and i32 %92, %94
  %96 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %97 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %101 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %104 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %106 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %105, i32 0, i32 5
  %107 = load i64, i64* %9, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %110 = call i32 @finish_erasing(%struct.tty_struct* %109)
  %111 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %112 = call zeroext i8 @KILL_CHAR(%struct.tty_struct* %111)
  %113 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %114 = call i32 @echo_char(i8 zeroext %112, %struct.tty_struct* %113)
  %115 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %116 = call i64 @L_ECHOK(%struct.tty_struct* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %81
  %119 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %120 = call i32 @echo_char_raw(i8 signext 10, %struct.tty_struct* %119)
  br label %121

121:                                              ; preds = %118, %81
  br label %384

122:                                              ; preds = %77
  store i32 2, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %36
  br label %124

124:                                              ; preds = %123, %28
  store i32 0, i32* %7, align 4
  br label %125

125:                                              ; preds = %368, %124
  %126 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %127 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %130 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %128, %131
  br i1 %132, label %133, label %369

133:                                              ; preds = %125
  %134 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %135 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %161, %133
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %138, 1
  %140 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %141 = sub nsw i32 %140, 1
  %142 = and i32 %139, %141
  store i32 %142, i32* %6, align 4
  %143 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %144 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %143, i32 0, i32 3
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  store i8 %149, i8* %3, align 1
  br label %150

150:                                              ; preds = %137
  %151 = load i8, i8* %3, align 1
  %152 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %153 = call i64 @is_continuation(i8 zeroext %151, %struct.tty_struct* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* %6, align 4
  %157 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %158 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %156, %159
  br label %161

161:                                              ; preds = %155, %150
  %162 = phi i1 [ false, %150 ], [ %160, %155 ]
  br i1 %162, label %137, label %163

163:                                              ; preds = %161
  %164 = load i8, i8* %3, align 1
  %165 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %166 = call i64 @is_continuation(i8 zeroext %164, %struct.tty_struct* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  br label %369

169:                                              ; preds = %163
  %170 = load i32, i32* %5, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %189

172:                                              ; preds = %169
  %173 = load i8, i8* %3, align 1
  %174 = call i64 @isalnum(i8 zeroext %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i8, i8* %3, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp eq i32 %178, 95
  br i1 %179, label %180, label %183

180:                                              ; preds = %176, %172
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %188

183:                                              ; preds = %176
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  br label %369

187:                                              ; preds = %183
  br label %188

188:                                              ; preds = %187, %180
  br label %189

189:                                              ; preds = %188, %169
  %190 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %191 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = sub nsw i32 %192, %193
  %195 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %196 = sub nsw i32 %195, 1
  %197 = and i32 %194, %196
  store i32 %197, i32* %8, align 4
  %198 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %199 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %198, i32 0, i32 5
  %200 = load i64, i64* %9, align 8
  %201 = call i32 @spin_lock_irqsave(i32* %199, i64 %200)
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %204 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %203, i32 0, i32 0
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* %8, align 4
  %206 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %207 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = sub nsw i32 %208, %205
  store i32 %209, i32* %207, align 8
  %210 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %211 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %210, i32 0, i32 5
  %212 = load i64, i64* %9, align 8
  %213 = call i32 @spin_unlock_irqrestore(i32* %211, i64 %212)
  %214 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %215 = call i64 @L_ECHO(%struct.tty_struct* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %364

217:                                              ; preds = %189
  %218 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %219 = call i64 @L_ECHOPRT(%struct.tty_struct* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %257

221:                                              ; preds = %217
  %222 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %223 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %231, label %226

226:                                              ; preds = %221
  %227 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %228 = call i32 @echo_char_raw(i8 signext 92, %struct.tty_struct* %227)
  %229 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %230 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %229, i32 0, i32 4
  store i32 1, i32* %230, align 8
  br label %231

231:                                              ; preds = %226, %221
  %232 = load i8, i8* %3, align 1
  %233 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %234 = call i32 @echo_char(i8 zeroext %232, %struct.tty_struct* %233)
  br label %235

235:                                              ; preds = %239, %231
  %236 = load i32, i32* %8, align 4
  %237 = add nsw i32 %236, -1
  store i32 %237, i32* %8, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %235
  %240 = load i32, i32* %6, align 4
  %241 = add nsw i32 %240, 1
  %242 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %243 = sub nsw i32 %242, 1
  %244 = and i32 %241, %243
  store i32 %244, i32* %6, align 4
  %245 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %246 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %245, i32 0, i32 3
  %247 = load i8*, i8** %246, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i8, i8* %247, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %253 = call i32 @echo_char_raw(i8 signext %251, %struct.tty_struct* %252)
  %254 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %255 = call i32 @echo_move_back_col(%struct.tty_struct* %254)
  br label %235

256:                                              ; preds = %235
  br label %363

257:                                              ; preds = %217
  %258 = load i32, i32* %5, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %257
  %261 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %262 = call i32 @L_ECHOE(%struct.tty_struct* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %269, label %264

264:                                              ; preds = %260
  %265 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %266 = call zeroext i8 @ERASE_CHAR(%struct.tty_struct* %265)
  %267 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %268 = call i32 @echo_char(i8 zeroext %266, %struct.tty_struct* %267)
  br label %362

269:                                              ; preds = %260, %257
  %270 = load i8, i8* %3, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp eq i32 %271, 9
  br i1 %272, label %273, label %330

273:                                              ; preds = %269
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %274 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %275 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  store i64 %277, i64* %12, align 8
  br label %278

278:                                              ; preds = %324, %273
  %279 = load i64, i64* %12, align 8
  %280 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %281 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = icmp ne i64 %279, %283
  br i1 %284, label %285, label %325

285:                                              ; preds = %278
  %286 = load i64, i64* %12, align 8
  %287 = sub i64 %286, 1
  %288 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = and i64 %287, %290
  store i64 %291, i64* %12, align 8
  %292 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %293 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %292, i32 0, i32 3
  %294 = load i8*, i8** %293, align 8
  %295 = load i64, i64* %12, align 8
  %296 = getelementptr inbounds i8, i8* %294, i64 %295
  %297 = load i8, i8* %296, align 1
  store i8 %297, i8* %3, align 1
  %298 = load i8, i8* %3, align 1
  %299 = zext i8 %298 to i32
  %300 = icmp eq i32 %299, 9
  br i1 %300, label %301, label %302

301:                                              ; preds = %285
  store i32 1, i32* %11, align 4
  br label %325

302:                                              ; preds = %285
  %303 = load i8, i8* %3, align 1
  %304 = call i64 @iscntrl(i8 zeroext %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %302
  %307 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %308 = call i64 @L_ECHOCTL(%struct.tty_struct* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load i32, i32* %10, align 4
  %312 = add i32 %311, 2
  store i32 %312, i32* %10, align 4
  br label %313

313:                                              ; preds = %310, %306
  br label %323

314:                                              ; preds = %302
  %315 = load i8, i8* %3, align 1
  %316 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %317 = call i64 @is_continuation(i8 zeroext %315, %struct.tty_struct* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %314
  %320 = load i32, i32* %10, align 4
  %321 = add i32 %320, 1
  store i32 %321, i32* %10, align 4
  br label %322

322:                                              ; preds = %319, %314
  br label %323

323:                                              ; preds = %322, %313
  br label %324

324:                                              ; preds = %323
  br label %278

325:                                              ; preds = %301, %278
  %326 = load i32, i32* %10, align 4
  %327 = load i32, i32* %11, align 4
  %328 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %329 = call i32 @echo_erase_tab(i32 %326, i32 %327, %struct.tty_struct* %328)
  br label %361

330:                                              ; preds = %269
  %331 = load i8, i8* %3, align 1
  %332 = call i64 @iscntrl(i8 zeroext %331)
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %330
  %335 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %336 = call i64 @L_ECHOCTL(%struct.tty_struct* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %334
  %339 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %340 = call i32 @echo_char_raw(i8 signext 8, %struct.tty_struct* %339)
  %341 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %342 = call i32 @echo_char_raw(i8 signext 32, %struct.tty_struct* %341)
  %343 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %344 = call i32 @echo_char_raw(i8 signext 8, %struct.tty_struct* %343)
  br label %345

345:                                              ; preds = %338, %334, %330
  %346 = load i8, i8* %3, align 1
  %347 = call i64 @iscntrl(i8 zeroext %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %345
  %350 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %351 = call i64 @L_ECHOCTL(%struct.tty_struct* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %349, %345
  %354 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %355 = call i32 @echo_char_raw(i8 signext 8, %struct.tty_struct* %354)
  %356 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %357 = call i32 @echo_char_raw(i8 signext 32, %struct.tty_struct* %356)
  %358 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %359 = call i32 @echo_char_raw(i8 signext 8, %struct.tty_struct* %358)
  br label %360

360:                                              ; preds = %353, %349
  br label %361

361:                                              ; preds = %360, %325
  br label %362

362:                                              ; preds = %361, %264
  br label %363

363:                                              ; preds = %362, %256
  br label %364

364:                                              ; preds = %363, %189
  %365 = load i32, i32* %5, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  br label %369

368:                                              ; preds = %364
  br label %125

369:                                              ; preds = %367, %186, %168, %125
  %370 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %371 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %374 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = icmp eq i32 %372, %375
  br i1 %376, label %377, label %384

377:                                              ; preds = %369
  %378 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %379 = call i64 @L_ECHO(%struct.tty_struct* %378)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %377
  %382 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %383 = call i32 @finish_erasing(%struct.tty_struct* %382)
  br label %384

384:                                              ; preds = %20, %41, %121, %381, %377, %369
  ret void
}

declare dso_local zeroext i8 @ERASE_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @WERASE_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @L_ECHOK(%struct.tty_struct*) #1

declare dso_local i32 @L_ECHOKE(%struct.tty_struct*) #1

declare dso_local i32 @L_ECHOE(%struct.tty_struct*) #1

declare dso_local i32 @finish_erasing(%struct.tty_struct*) #1

declare dso_local i32 @echo_char(i8 zeroext, %struct.tty_struct*) #1

declare dso_local zeroext i8 @KILL_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @echo_char_raw(i8 signext, %struct.tty_struct*) #1

declare dso_local i64 @is_continuation(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i64 @isalnum(i8 zeroext) #1

declare dso_local i64 @L_ECHOPRT(%struct.tty_struct*) #1

declare dso_local i32 @echo_move_back_col(%struct.tty_struct*) #1

declare dso_local i64 @iscntrl(i8 zeroext) #1

declare dso_local i64 @L_ECHOCTL(%struct.tty_struct*) #1

declare dso_local i32 @echo_erase_tab(i32, i32, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
