; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_receive_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_n_tty.c_n_tty_receive_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i64, i64, i8*, i32, i32, i32, i32, i32*, i32, i64, i64, i32, i64, i32, i64, i64 }

@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGTSTP = common dso_local global i32 0, align 4
@TTY_PUSH = common dso_local global i64 0, align 8
@__DISABLED_CHAR = common dso_local global i8 0, align 1
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i8)* @n_tty_receive_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @n_tty_receive_char(%struct.tty_struct* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i8 %1, i8* %4, align 1
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 17
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8, i8* %4, align 1
  %15 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %16 = call i32 @put_tty_queue(i8 zeroext %14, %struct.tty_struct* %15)
  br label %693

17:                                               ; preds = %2
  %18 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %19 = call i64 @I_ISTRIP(%struct.tty_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i8, i8* %4, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %23, 127
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %4, align 1
  br label %26

26:                                               ; preds = %21, %17
  %27 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %28 = call i64 @I_IUCLC(%struct.tty_struct* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %32 = call i64 @L_IEXTEN(%struct.tty_struct* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8, i8* %4, align 1
  %36 = call zeroext i8 @tolower(i8 zeroext %35)
  store i8 %36, i8* %4, align 1
  br label %37

37:                                               ; preds = %34, %30, %26
  %38 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %39 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %38, i32 0, i32 16
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %95

42:                                               ; preds = %37
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %44 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %43, i32 0, i32 15
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %95, label %47

47:                                               ; preds = %42
  %48 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %49 = call i64 @I_IXON(%struct.tty_struct* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %95

51:                                               ; preds = %47
  %52 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %53 = call i64 @I_IXANY(%struct.tty_struct* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %95

55:                                               ; preds = %51
  %56 = load i8, i8* %4, align 1
  %57 = zext i8 %56 to i32
  %58 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %59 = call zeroext i8 @START_CHAR(%struct.tty_struct* %58)
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %57, %60
  br i1 %61, label %62, label %95

62:                                               ; preds = %55
  %63 = load i8, i8* %4, align 1
  %64 = zext i8 %63 to i32
  %65 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %66 = call zeroext i8 @STOP_CHAR(%struct.tty_struct* %65)
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %95

69:                                               ; preds = %62
  %70 = load i8, i8* %4, align 1
  %71 = zext i8 %70 to i32
  %72 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %73 = call zeroext i8 @INTR_CHAR(%struct.tty_struct* %72)
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %69
  %77 = load i8, i8* %4, align 1
  %78 = zext i8 %77 to i32
  %79 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %80 = call zeroext i8 @QUIT_CHAR(%struct.tty_struct* %79)
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %76
  %84 = load i8, i8* %4, align 1
  %85 = zext i8 %84 to i32
  %86 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %87 = call zeroext i8 @SUSP_CHAR(%struct.tty_struct* %86)
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %83
  %91 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %92 = call i32 @start_tty(%struct.tty_struct* %91)
  %93 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %94 = call i32 @process_echoes(%struct.tty_struct* %93)
  br label %95

95:                                               ; preds = %90, %83, %76, %69, %62, %55, %51, %47, %42, %37
  %96 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %97 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %96, i32 0, i32 14
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %129

100:                                              ; preds = %95
  %101 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %102 = call i64 @I_IXON(%struct.tty_struct* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %100
  %105 = load i8, i8* %4, align 1
  %106 = zext i8 %105 to i32
  %107 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %108 = call zeroext i8 @START_CHAR(%struct.tty_struct* %107)
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %104
  %112 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %113 = call i32 @start_tty(%struct.tty_struct* %112)
  %114 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %115 = call i32 @process_echoes(%struct.tty_struct* %114)
  br label %127

116:                                              ; preds = %104
  %117 = load i8, i8* %4, align 1
  %118 = zext i8 %117 to i32
  %119 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %120 = call zeroext i8 @STOP_CHAR(%struct.tty_struct* %119)
  %121 = zext i8 %120 to i32
  %122 = icmp eq i32 %118, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %125 = call i32 @stop_tty(%struct.tty_struct* %124)
  br label %126

126:                                              ; preds = %123, %116
  br label %127

127:                                              ; preds = %126, %111
  br label %128

128:                                              ; preds = %127, %100
  br label %693

129:                                              ; preds = %95
  %130 = load i8, i8* %4, align 1
  %131 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %132 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %131, i32 0, i32 13
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @test_bit(i8 zeroext %130, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %129
  %137 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %138 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %205

141:                                              ; preds = %136, %129
  %142 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %143 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load i8, i8* %4, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 255
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %149 = call i64 @I_PARMRK(%struct.tty_struct* %148)
  %150 = icmp ne i64 %149, 0
  br label %151

151:                                              ; preds = %147, %141
  %152 = phi i1 [ false, %141 ], [ %150, %147 ]
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 1, i32 0
  store i32 %154, i32* %6, align 4
  %155 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %156 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %159 = load i32, i32* %6, align 4
  %160 = sub nsw i32 %158, %159
  %161 = sub nsw i32 %160, 1
  %162 = icmp sge i32 %157, %161
  br i1 %162, label %163, label %171

163:                                              ; preds = %151
  %164 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %165 = call i64 @L_ECHO(%struct.tty_struct* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %169 = call i32 @process_output(i8 signext 7, %struct.tty_struct* %168)
  br label %170

170:                                              ; preds = %167, %163
  br label %693

171:                                              ; preds = %151
  %172 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %173 = call i64 @L_ECHO(%struct.tty_struct* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %171
  %176 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %177 = call i32 @finish_erasing(%struct.tty_struct* %176)
  %178 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %179 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %182 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %180, %183
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %187 = call i32 @echo_set_canon_col(%struct.tty_struct* %186)
  br label %188

188:                                              ; preds = %185, %175
  %189 = load i8, i8* %4, align 1
  %190 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %191 = call i32 @echo_char(i8 zeroext %189, %struct.tty_struct* %190)
  %192 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %193 = call i32 @process_echoes(%struct.tty_struct* %192)
  br label %194

194:                                              ; preds = %188, %171
  %195 = load i32, i32* %6, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load i8, i8* %4, align 1
  %199 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %200 = call i32 @put_tty_queue(i8 zeroext %198, %struct.tty_struct* %199)
  br label %201

201:                                              ; preds = %197, %194
  %202 = load i8, i8* %4, align 1
  %203 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %204 = call i32 @put_tty_queue(i8 zeroext %202, %struct.tty_struct* %203)
  br label %693

205:                                              ; preds = %136
  %206 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %207 = call i64 @I_IXON(%struct.tty_struct* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %205
  %210 = load i8, i8* %4, align 1
  %211 = zext i8 %210 to i32
  %212 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %213 = call zeroext i8 @START_CHAR(%struct.tty_struct* %212)
  %214 = zext i8 %213 to i32
  %215 = icmp eq i32 %211, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %209
  %217 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %218 = call i32 @start_tty(%struct.tty_struct* %217)
  %219 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %220 = call i32 @process_echoes(%struct.tty_struct* %219)
  br label %693

221:                                              ; preds = %209
  %222 = load i8, i8* %4, align 1
  %223 = zext i8 %222 to i32
  %224 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %225 = call zeroext i8 @STOP_CHAR(%struct.tty_struct* %224)
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %223, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %221
  %229 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %230 = call i32 @stop_tty(%struct.tty_struct* %229)
  br label %693

231:                                              ; preds = %221
  br label %232

232:                                              ; preds = %231, %205
  %233 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %234 = call i64 @L_ISIG(%struct.tty_struct* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %302

236:                                              ; preds = %232
  %237 = load i32, i32* @SIGINT, align 4
  store i32 %237, i32* %7, align 4
  %238 = load i8, i8* %4, align 1
  %239 = zext i8 %238 to i32
  %240 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %241 = call zeroext i8 @INTR_CHAR(%struct.tty_struct* %240)
  %242 = zext i8 %241 to i32
  %243 = icmp eq i32 %239, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %236
  br label %263

245:                                              ; preds = %236
  %246 = load i32, i32* @SIGQUIT, align 4
  store i32 %246, i32* %7, align 4
  %247 = load i8, i8* %4, align 1
  %248 = zext i8 %247 to i32
  %249 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %250 = call zeroext i8 @QUIT_CHAR(%struct.tty_struct* %249)
  %251 = zext i8 %250 to i32
  %252 = icmp eq i32 %248, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %245
  br label %263

254:                                              ; preds = %245
  %255 = load i32, i32* @SIGTSTP, align 4
  store i32 %255, i32* %7, align 4
  %256 = load i8, i8* %4, align 1
  %257 = zext i8 %256 to i32
  %258 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %259 = call zeroext i8 @SUSP_CHAR(%struct.tty_struct* %258)
  %260 = zext i8 %259 to i32
  %261 = icmp eq i32 %257, %260
  br i1 %261, label %262, label %301

262:                                              ; preds = %254
  br label %263

263:                                              ; preds = %262, %253, %244
  %264 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %265 = call i32 @L_NOFLSH(%struct.tty_struct* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %272, label %267

267:                                              ; preds = %263
  %268 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %269 = call i32 @n_tty_flush_buffer(%struct.tty_struct* %268)
  %270 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %271 = call i32 @tty_driver_flush_buffer(%struct.tty_struct* %270)
  br label %272

272:                                              ; preds = %267, %263
  %273 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %274 = call i64 @I_IXON(%struct.tty_struct* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %278 = call i32 @start_tty(%struct.tty_struct* %277)
  br label %279

279:                                              ; preds = %276, %272
  %280 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %281 = call i64 @L_ECHO(%struct.tty_struct* %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %279
  %284 = load i8, i8* %4, align 1
  %285 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %286 = call i32 @echo_char(i8 zeroext %284, %struct.tty_struct* %285)
  %287 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %288 = call i32 @process_echoes(%struct.tty_struct* %287)
  br label %289

289:                                              ; preds = %283, %279
  %290 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %291 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %290, i32 0, i32 12
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %289
  %295 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %296 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %295, i32 0, i32 12
  %297 = load i64, i64* %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = call i32 @kill_pgrp(i64 %297, i32 %298, i32 1)
  br label %300

300:                                              ; preds = %294, %289
  br label %693

301:                                              ; preds = %254
  br label %302

302:                                              ; preds = %301, %232
  %303 = load i8, i8* %4, align 1
  %304 = zext i8 %303 to i32
  %305 = icmp eq i32 %304, 13
  br i1 %305, label %306, label %317

306:                                              ; preds = %302
  %307 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %308 = call i64 @I_IGNCR(%struct.tty_struct* %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %306
  br label %693

311:                                              ; preds = %306
  %312 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %313 = call i64 @I_ICRNL(%struct.tty_struct* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %311
  store i8 10, i8* %4, align 1
  br label %316

316:                                              ; preds = %315, %311
  br label %327

317:                                              ; preds = %302
  %318 = load i8, i8* %4, align 1
  %319 = zext i8 %318 to i32
  %320 = icmp eq i32 %319, 10
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %323 = call i64 @I_INLCR(%struct.tty_struct* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  store i8 13, i8* %4, align 1
  br label %326

326:                                              ; preds = %325, %321, %317
  br label %327

327:                                              ; preds = %326, %316
  %328 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %329 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %328, i32 0, i32 11
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %623

332:                                              ; preds = %327
  %333 = load i8, i8* %4, align 1
  %334 = zext i8 %333 to i32
  %335 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %336 = call zeroext i8 @ERASE_CHAR(%struct.tty_struct* %335)
  %337 = zext i8 %336 to i32
  %338 = icmp eq i32 %334, %337
  br i1 %338, label %357, label %339

339:                                              ; preds = %332
  %340 = load i8, i8* %4, align 1
  %341 = zext i8 %340 to i32
  %342 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %343 = call zeroext i8 @KILL_CHAR(%struct.tty_struct* %342)
  %344 = zext i8 %343 to i32
  %345 = icmp eq i32 %341, %344
  br i1 %345, label %357, label %346

346:                                              ; preds = %339
  %347 = load i8, i8* %4, align 1
  %348 = zext i8 %347 to i32
  %349 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %350 = call zeroext i8 @WERASE_CHAR(%struct.tty_struct* %349)
  %351 = zext i8 %350 to i32
  %352 = icmp eq i32 %348, %351
  br i1 %352, label %353, label %363

353:                                              ; preds = %346
  %354 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %355 = call i64 @L_IEXTEN(%struct.tty_struct* %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %353, %339, %332
  %358 = load i8, i8* %4, align 1
  %359 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %360 = call i32 @eraser(i8 zeroext %358, %struct.tty_struct* %359)
  %361 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %362 = call i32 @process_echoes(%struct.tty_struct* %361)
  br label %693

363:                                              ; preds = %353, %346
  %364 = load i8, i8* %4, align 1
  %365 = zext i8 %364 to i32
  %366 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %367 = call zeroext i8 @LNEXT_CHAR(%struct.tty_struct* %366)
  %368 = zext i8 %367 to i32
  %369 = icmp eq i32 %365, %368
  br i1 %369, label %370, label %395

370:                                              ; preds = %363
  %371 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %372 = call i64 @L_IEXTEN(%struct.tty_struct* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %395

374:                                              ; preds = %370
  %375 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %376 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %375, i32 0, i32 0
  store i32 1, i32* %376, align 8
  %377 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %378 = call i64 @L_ECHO(%struct.tty_struct* %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %394

380:                                              ; preds = %374
  %381 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %382 = call i32 @finish_erasing(%struct.tty_struct* %381)
  %383 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %384 = call i64 @L_ECHOCTL(%struct.tty_struct* %383)
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %393

386:                                              ; preds = %380
  %387 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %388 = call i32 @echo_char_raw(i8 signext 94, %struct.tty_struct* %387)
  %389 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %390 = call i32 @echo_char_raw(i8 signext 8, %struct.tty_struct* %389)
  %391 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %392 = call i32 @process_echoes(%struct.tty_struct* %391)
  br label %393

393:                                              ; preds = %386, %380
  br label %394

394:                                              ; preds = %393, %374
  br label %693

395:                                              ; preds = %370, %363
  %396 = load i8, i8* %4, align 1
  %397 = zext i8 %396 to i32
  %398 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %399 = call zeroext i8 @REPRINT_CHAR(%struct.tty_struct* %398)
  %400 = zext i8 %399 to i32
  %401 = icmp eq i32 %397, %400
  br i1 %401, label %402, label %445

402:                                              ; preds = %395
  %403 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %404 = call i64 @L_ECHO(%struct.tty_struct* %403)
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %406, label %445

406:                                              ; preds = %402
  %407 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %408 = call i64 @L_IEXTEN(%struct.tty_struct* %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %445

410:                                              ; preds = %406
  %411 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %412 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  store i64 %413, i64* %8, align 8
  %414 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %415 = call i32 @finish_erasing(%struct.tty_struct* %414)
  %416 = load i8, i8* %4, align 1
  %417 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %418 = call i32 @echo_char(i8 zeroext %416, %struct.tty_struct* %417)
  %419 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %420 = call i32 @echo_char_raw(i8 signext 10, %struct.tty_struct* %419)
  br label %421

421:                                              ; preds = %427, %410
  %422 = load i64, i64* %8, align 8
  %423 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %424 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %423, i32 0, i32 3
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %422, %425
  br i1 %426, label %427, label %442

427:                                              ; preds = %421
  %428 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %429 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %428, i32 0, i32 4
  %430 = load i8*, i8** %429, align 8
  %431 = load i64, i64* %8, align 8
  %432 = getelementptr inbounds i8, i8* %430, i64 %431
  %433 = load i8, i8* %432, align 1
  %434 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %435 = call i32 @echo_char(i8 zeroext %433, %struct.tty_struct* %434)
  %436 = load i64, i64* %8, align 8
  %437 = add i64 %436, 1
  %438 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %439 = sub nsw i32 %438, 1
  %440 = sext i32 %439 to i64
  %441 = and i64 %437, %440
  store i64 %441, i64* %8, align 8
  br label %421

442:                                              ; preds = %421
  %443 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %444 = call i32 @process_echoes(%struct.tty_struct* %443)
  br label %693

445:                                              ; preds = %406, %402, %395
  %446 = load i8, i8* %4, align 1
  %447 = zext i8 %446 to i32
  %448 = icmp eq i32 %447, 10
  br i1 %448, label %449, label %477

449:                                              ; preds = %445
  %450 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %451 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %454 = icmp sge i32 %452, %453
  br i1 %454, label %455, label %463

455:                                              ; preds = %449
  %456 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %457 = call i64 @L_ECHO(%struct.tty_struct* %456)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %455
  %460 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %461 = call i32 @process_output(i8 signext 7, %struct.tty_struct* %460)
  br label %462

462:                                              ; preds = %459, %455
  br label %693

463:                                              ; preds = %449
  %464 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %465 = call i64 @L_ECHO(%struct.tty_struct* %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %471, label %467

467:                                              ; preds = %463
  %468 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %469 = call i64 @L_ECHONL(%struct.tty_struct* %468)
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %476

471:                                              ; preds = %467, %463
  %472 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %473 = call i32 @echo_char_raw(i8 signext 10, %struct.tty_struct* %472)
  %474 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %475 = call i32 @process_echoes(%struct.tty_struct* %474)
  br label %476

476:                                              ; preds = %471, %467
  br label %580

477:                                              ; preds = %445
  %478 = load i8, i8* %4, align 1
  %479 = zext i8 %478 to i32
  %480 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %481 = call zeroext i8 @EOF_CHAR(%struct.tty_struct* %480)
  %482 = zext i8 %481 to i32
  %483 = icmp eq i32 %479, %482
  br i1 %483, label %484, label %506

484:                                              ; preds = %477
  %485 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %486 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %489 = icmp sge i32 %487, %488
  br i1 %489, label %490, label %491

490:                                              ; preds = %484
  br label %693

491:                                              ; preds = %484
  %492 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %493 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %492, i32 0, i32 2
  %494 = load i64, i64* %493, align 8
  %495 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %496 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %495, i32 0, i32 3
  %497 = load i64, i64* %496, align 8
  %498 = icmp ne i64 %494, %497
  br i1 %498, label %499, label %504

499:                                              ; preds = %491
  %500 = load i64, i64* @TTY_PUSH, align 8
  %501 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %502 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %501, i32 0, i32 10
  %503 = call i32 @set_bit(i64 %500, i32* %502)
  br label %504

504:                                              ; preds = %499, %491
  %505 = load i8, i8* @__DISABLED_CHAR, align 1
  store i8 %505, i8* %4, align 1
  br label %580

506:                                              ; preds = %477
  %507 = load i8, i8* %4, align 1
  %508 = zext i8 %507 to i32
  %509 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %510 = call zeroext i8 @EOL_CHAR(%struct.tty_struct* %509)
  %511 = zext i8 %510 to i32
  %512 = icmp eq i32 %508, %511
  br i1 %512, label %524, label %513

513:                                              ; preds = %506
  %514 = load i8, i8* %4, align 1
  %515 = zext i8 %514 to i32
  %516 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %517 = call zeroext i8 @EOL2_CHAR(%struct.tty_struct* %516)
  %518 = zext i8 %517 to i32
  %519 = icmp eq i32 %515, %518
  br i1 %519, label %520, label %622

520:                                              ; preds = %513
  %521 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %522 = call i64 @L_IEXTEN(%struct.tty_struct* %521)
  %523 = icmp ne i64 %522, 0
  br i1 %523, label %524, label %622

524:                                              ; preds = %520, %506
  %525 = load i8, i8* %4, align 1
  %526 = zext i8 %525 to i32
  %527 = icmp eq i32 %526, 255
  br i1 %527, label %528, label %532

528:                                              ; preds = %524
  %529 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %530 = call i64 @I_PARMRK(%struct.tty_struct* %529)
  %531 = icmp ne i64 %530, 0
  br label %532

532:                                              ; preds = %528, %524
  %533 = phi i1 [ false, %524 ], [ %531, %528 ]
  %534 = zext i1 %533 to i64
  %535 = select i1 %533, i32 1, i32 0
  store i32 %535, i32* %6, align 4
  %536 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %537 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %536, i32 0, i32 1
  %538 = load i32, i32* %537, align 4
  %539 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %540 = load i32, i32* %6, align 4
  %541 = sub nsw i32 %539, %540
  %542 = icmp sge i32 %538, %541
  br i1 %542, label %543, label %551

543:                                              ; preds = %532
  %544 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %545 = call i64 @L_ECHO(%struct.tty_struct* %544)
  %546 = icmp ne i64 %545, 0
  br i1 %546, label %547, label %550

547:                                              ; preds = %543
  %548 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %549 = call i32 @process_output(i8 signext 7, %struct.tty_struct* %548)
  br label %550

550:                                              ; preds = %547, %543
  br label %693

551:                                              ; preds = %532
  %552 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %553 = call i64 @L_ECHO(%struct.tty_struct* %552)
  %554 = icmp ne i64 %553, 0
  br i1 %554, label %555, label %572

555:                                              ; preds = %551
  %556 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %557 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %556, i32 0, i32 2
  %558 = load i64, i64* %557, align 8
  %559 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %560 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %559, i32 0, i32 3
  %561 = load i64, i64* %560, align 8
  %562 = icmp eq i64 %558, %561
  br i1 %562, label %563, label %566

563:                                              ; preds = %555
  %564 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %565 = call i32 @echo_set_canon_col(%struct.tty_struct* %564)
  br label %566

566:                                              ; preds = %563, %555
  %567 = load i8, i8* %4, align 1
  %568 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %569 = call i32 @echo_char(i8 zeroext %567, %struct.tty_struct* %568)
  %570 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %571 = call i32 @process_echoes(%struct.tty_struct* %570)
  br label %572

572:                                              ; preds = %566, %551
  %573 = load i32, i32* %6, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %579

575:                                              ; preds = %572
  %576 = load i8, i8* %4, align 1
  %577 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %578 = call i32 @put_tty_queue(i8 zeroext %576, %struct.tty_struct* %577)
  br label %579

579:                                              ; preds = %575, %572
  br label %580

580:                                              ; preds = %579, %504, %476
  %581 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %582 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %581, i32 0, i32 7
  %583 = load i64, i64* %5, align 8
  %584 = call i32 @spin_lock_irqsave(i32* %582, i64 %583)
  %585 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %586 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %585, i32 0, i32 3
  %587 = load i64, i64* %586, align 8
  %588 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %589 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %588, i32 0, i32 9
  %590 = load i32*, i32** %589, align 8
  %591 = call i32 @set_bit(i64 %587, i32* %590)
  %592 = load i8, i8* %4, align 1
  %593 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %594 = call i32 @put_tty_queue_nolock(i8 zeroext %592, %struct.tty_struct* %593)
  %595 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %596 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %595, i32 0, i32 3
  %597 = load i64, i64* %596, align 8
  %598 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %599 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %598, i32 0, i32 2
  store i64 %597, i64* %599, align 8
  %600 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %601 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %600, i32 0, i32 8
  %602 = load i32, i32* %601, align 4
  %603 = add nsw i32 %602, 1
  store i32 %603, i32* %601, align 4
  %604 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %605 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %604, i32 0, i32 7
  %606 = load i64, i64* %5, align 8
  %607 = call i32 @spin_unlock_irqrestore(i32* %605, i64 %606)
  %608 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %609 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %608, i32 0, i32 6
  %610 = load i32, i32* @SIGIO, align 4
  %611 = load i32, i32* @POLL_IN, align 4
  %612 = call i32 @kill_fasync(i32* %609, i32 %610, i32 %611)
  %613 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %614 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %613, i32 0, i32 5
  %615 = call i64 @waitqueue_active(i32* %614)
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %621

617:                                              ; preds = %580
  %618 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %619 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %618, i32 0, i32 5
  %620 = call i32 @wake_up_interruptible(i32* %619)
  br label %621

621:                                              ; preds = %617, %580
  br label %693

622:                                              ; preds = %520, %513
  br label %623

623:                                              ; preds = %622, %327
  %624 = load i8, i8* %4, align 1
  %625 = zext i8 %624 to i32
  %626 = icmp eq i32 %625, 255
  br i1 %626, label %627, label %631

627:                                              ; preds = %623
  %628 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %629 = call i64 @I_PARMRK(%struct.tty_struct* %628)
  %630 = icmp ne i64 %629, 0
  br label %631

631:                                              ; preds = %627, %623
  %632 = phi i1 [ false, %623 ], [ %630, %627 ]
  %633 = zext i1 %632 to i64
  %634 = select i1 %632, i32 1, i32 0
  store i32 %634, i32* %6, align 4
  %635 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %636 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %639 = load i32, i32* %6, align 4
  %640 = sub nsw i32 %638, %639
  %641 = sub nsw i32 %640, 1
  %642 = icmp sge i32 %637, %641
  br i1 %642, label %643, label %651

643:                                              ; preds = %631
  %644 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %645 = call i64 @L_ECHO(%struct.tty_struct* %644)
  %646 = icmp ne i64 %645, 0
  br i1 %646, label %647, label %650

647:                                              ; preds = %643
  %648 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %649 = call i32 @process_output(i8 signext 7, %struct.tty_struct* %648)
  br label %650

650:                                              ; preds = %647, %643
  br label %693

651:                                              ; preds = %631
  %652 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %653 = call i64 @L_ECHO(%struct.tty_struct* %652)
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %682

655:                                              ; preds = %651
  %656 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %657 = call i32 @finish_erasing(%struct.tty_struct* %656)
  %658 = load i8, i8* %4, align 1
  %659 = zext i8 %658 to i32
  %660 = icmp eq i32 %659, 10
  br i1 %660, label %661, label %664

661:                                              ; preds = %655
  %662 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %663 = call i32 @echo_char_raw(i8 signext 10, %struct.tty_struct* %662)
  br label %679

664:                                              ; preds = %655
  %665 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %666 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %665, i32 0, i32 2
  %667 = load i64, i64* %666, align 8
  %668 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %669 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %668, i32 0, i32 3
  %670 = load i64, i64* %669, align 8
  %671 = icmp eq i64 %667, %670
  br i1 %671, label %672, label %675

672:                                              ; preds = %664
  %673 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %674 = call i32 @echo_set_canon_col(%struct.tty_struct* %673)
  br label %675

675:                                              ; preds = %672, %664
  %676 = load i8, i8* %4, align 1
  %677 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %678 = call i32 @echo_char(i8 zeroext %676, %struct.tty_struct* %677)
  br label %679

679:                                              ; preds = %675, %661
  %680 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %681 = call i32 @process_echoes(%struct.tty_struct* %680)
  br label %682

682:                                              ; preds = %679, %651
  %683 = load i32, i32* %6, align 4
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %689

685:                                              ; preds = %682
  %686 = load i8, i8* %4, align 1
  %687 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %688 = call i32 @put_tty_queue(i8 zeroext %686, %struct.tty_struct* %687)
  br label %689

689:                                              ; preds = %685, %682
  %690 = load i8, i8* %4, align 1
  %691 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %692 = call i32 @put_tty_queue(i8 zeroext %690, %struct.tty_struct* %691)
  br label %693

693:                                              ; preds = %689, %650, %621, %550, %490, %462, %442, %394, %357, %310, %300, %228, %216, %201, %170, %128, %13
  ret void
}

declare dso_local i32 @put_tty_queue(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i64 @I_ISTRIP(%struct.tty_struct*) #1

declare dso_local i64 @I_IUCLC(%struct.tty_struct*) #1

declare dso_local i64 @L_IEXTEN(%struct.tty_struct*) #1

declare dso_local zeroext i8 @tolower(i8 zeroext) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i64 @I_IXANY(%struct.tty_struct*) #1

declare dso_local zeroext i8 @START_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @INTR_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @QUIT_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @SUSP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @start_tty(%struct.tty_struct*) #1

declare dso_local i32 @process_echoes(%struct.tty_struct*) #1

declare dso_local i32 @stop_tty(%struct.tty_struct*) #1

declare dso_local i32 @test_bit(i8 zeroext, i32) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHO(%struct.tty_struct*) #1

declare dso_local i32 @process_output(i8 signext, %struct.tty_struct*) #1

declare dso_local i32 @finish_erasing(%struct.tty_struct*) #1

declare dso_local i32 @echo_set_canon_col(%struct.tty_struct*) #1

declare dso_local i32 @echo_char(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i64 @L_ISIG(%struct.tty_struct*) #1

declare dso_local i32 @L_NOFLSH(%struct.tty_struct*) #1

declare dso_local i32 @n_tty_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_driver_flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @kill_pgrp(i64, i32, i32) #1

declare dso_local i64 @I_IGNCR(%struct.tty_struct*) #1

declare dso_local i64 @I_ICRNL(%struct.tty_struct*) #1

declare dso_local i64 @I_INLCR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @ERASE_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @KILL_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @WERASE_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @eraser(i8 zeroext, %struct.tty_struct*) #1

declare dso_local zeroext i8 @LNEXT_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHOCTL(%struct.tty_struct*) #1

declare dso_local i32 @echo_char_raw(i8 signext, %struct.tty_struct*) #1

declare dso_local zeroext i8 @REPRINT_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @L_ECHONL(%struct.tty_struct*) #1

declare dso_local zeroext i8 @EOF_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local zeroext i8 @EOL_CHAR(%struct.tty_struct*) #1

declare dso_local zeroext i8 @EOL2_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @put_tty_queue_nolock(i8 zeroext, %struct.tty_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
