; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_config_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_isicom.c_isicom_config_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_3__*, %struct.isi_port* }
%struct.TYPE_3__ = type { i64 }
%struct.isi_port = type { i32, %struct.TYPE_4__, %struct.isi_board* }
%struct.TYPE_4__ = type { i32 }
%struct.isi_board = type { i64, i32, i32 }

@CBAUDEX = common dso_local global i64 0, align 8
@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@ASYNC_SPD_HI = common dso_local global i32 0, align 4
@ASYNC_SPD_VHI = common dso_local global i32 0, align 4
@ASYNC_SPD_SHI = common dso_local global i32 0, align 4
@ASYNC_SPD_WARP = common dso_local global i32 0, align 4
@linuxb_to_isib = common dso_local global i32* null, align 8
@ISICOM_CS5 = common dso_local global i32 0, align 4
@ISICOM_CS6 = common dso_local global i32 0, align 4
@ISICOM_CS7 = common dso_local global i32 0, align 4
@ISICOM_CS8 = common dso_local global i32 0, align 4
@ISICOM_2SB = common dso_local global i32 0, align 4
@ISICOM_EVPAR = common dso_local global i32 0, align 4
@ISICOM_ODPAR = common dso_local global i32 0, align 4
@ASYNC_CHECK_CD = common dso_local global i32 0, align 4
@ASYNC_CTS_FLOW = common dso_local global i32 0, align 4
@ISICOM_CTSRTS = common dso_local global i8 0, align 1
@ISICOM_RESPOND_XONXOFF = common dso_local global i8 0, align 1
@ISICOM_INITIATE_XONXOFF = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @isicom_config_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isicom_config_port(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca %struct.isi_port*, align 8
  %4 = alloca %struct.isi_board*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %11 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %12 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %11, i32 0, i32 1
  %13 = load %struct.isi_port*, %struct.isi_port** %12, align 8
  store %struct.isi_port* %13, %struct.isi_port** %3, align 8
  %14 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %15 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %14, i32 0, i32 2
  %16 = load %struct.isi_board*, %struct.isi_board** %15, align 8
  store %struct.isi_board* %16, %struct.isi_board** %4, align 8
  %17 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %18 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %6, align 8
  %20 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %21 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %24 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %9, align 4
  %26 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %27 = call i64 @C_BAUD(%struct.tty_struct* %26)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* @CBAUDEX, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %1
  %33 = load i64, i64* @CBAUDEX, align 8
  %34 = xor i64 %33, -1
  %35 = load i64, i64* %5, align 8
  %36 = and i64 %35, %34
  store i64 %36, i64* %5, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ult i64 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i64, i64* %5, align 8
  %41 = icmp ugt i64 %40, 4
  br i1 %41, label %42, label %51

42:                                               ; preds = %39, %32
  %43 = load i64, i64* @CBAUDEX, align 8
  %44 = xor i64 %43, -1
  %45 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %46 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = and i64 %49, %44
  store i64 %50, i64* %48, align 8
  br label %54

51:                                               ; preds = %39
  %52 = load i64, i64* %5, align 8
  %53 = add i64 %52, 15
  store i64 %53, i64* %5, align 8
  br label %54

54:                                               ; preds = %51, %42
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i64, i64* %5, align 8
  %57 = icmp eq i64 %56, 15
  br i1 %57, label %58, label %107

58:                                               ; preds = %55
  %59 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %60 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @ASYNC_SPD_HI, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %58
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  br label %70

70:                                               ; preds = %67, %58
  %71 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %72 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @ASYNC_SPD_VHI, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %80, 2
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %79, %70
  %83 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %84 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @ASYNC_SPD_SHI, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %82
  %92 = load i64, i64* %5, align 8
  %93 = add i64 %92, 3
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %91, %82
  %95 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %96 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %100 = and i32 %98, %99
  %101 = load i32, i32* @ASYNC_SPD_WARP, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load i64, i64* %5, align 8
  %105 = add i64 %104, 4
  store i64 %105, i64* %5, align 8
  br label %106

106:                                              ; preds = %103, %94
  br label %107

107:                                              ; preds = %106, %55
  %108 = load i32*, i32** @linuxb_to_isib, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %115 = call i32 @drop_dtr(%struct.isi_port* %114)
  br label %297

116:                                              ; preds = %107
  %117 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %118 = call i32 @raise_dtr(%struct.isi_port* %117)
  br label %119

119:                                              ; preds = %116
  %120 = load i64, i64* %6, align 8
  %121 = call i64 @WaitTillCardIsFree(i64 %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %187

123:                                              ; preds = %119
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = shl i32 %124, %125
  %127 = or i32 32768, %126
  %128 = or i32 %127, 3
  %129 = load i64, i64* %6, align 8
  %130 = call i32 @outw(i32 %128, i64 %129)
  %131 = load i32*, i32** @linuxb_to_isib, align 8
  %132 = load i64, i64* %5, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = shl i32 %134, 8
  %136 = or i32 %135, 3
  %137 = load i64, i64* %6, align 8
  %138 = call i32 @outw(i32 %136, i64 %137)
  store i32 0, i32* %7, align 4
  %139 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %140 = call i32 @C_CSIZE(%struct.tty_struct* %139)
  switch i32 %140, label %157 [
    i32 131, label %141
    i32 130, label %145
    i32 129, label %149
    i32 128, label %153
  ]

141:                                              ; preds = %123
  %142 = load i32, i32* @ISICOM_CS5, align 4
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  br label %157

145:                                              ; preds = %123
  %146 = load i32, i32* @ISICOM_CS6, align 4
  %147 = load i32, i32* %7, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %7, align 4
  br label %157

149:                                              ; preds = %123
  %150 = load i32, i32* @ISICOM_CS7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %7, align 4
  br label %157

153:                                              ; preds = %123
  %154 = load i32, i32* @ISICOM_CS8, align 4
  %155 = load i32, i32* %7, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %123, %153, %149, %145, %141
  %158 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %159 = call i64 @C_CSTOPB(%struct.tty_struct* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load i32, i32* @ISICOM_2SB, align 4
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %161, %157
  %166 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %167 = call i64 @C_PARENB(%struct.tty_struct* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %181

169:                                              ; preds = %165
  %170 = load i32, i32* @ISICOM_EVPAR, align 4
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %174 = call i64 @C_PARODD(%struct.tty_struct* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32, i32* @ISICOM_ODPAR, align 4
  %178 = load i32, i32* %7, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %7, align 4
  br label %180

180:                                              ; preds = %176, %169
  br label %181

181:                                              ; preds = %180, %165
  %182 = load i32, i32* %7, align 4
  %183 = load i64, i64* %6, align 8
  %184 = call i32 @outw(i32 %182, i64 %183)
  %185 = load i64, i64* %6, align 8
  %186 = call i32 @InterruptTheCard(i64 %185)
  br label %187

187:                                              ; preds = %181, %119
  %188 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %189 = call i64 @C_CLOCAL(%struct.tty_struct* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %199

191:                                              ; preds = %187
  %192 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %195 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %193
  store i32 %198, i32* %196, align 4
  br label %206

199:                                              ; preds = %187
  %200 = load i32, i32* @ASYNC_CHECK_CD, align 4
  %201 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %202 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %200
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %199, %191
  store i8 0, i8* %10, align 1
  %207 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %210 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, %208
  store i32 %213, i32* %211, align 4
  %214 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %215 = call i64 @C_CRTSCTS(%struct.tty_struct* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %230

217:                                              ; preds = %206
  %218 = load i32, i32* @ASYNC_CTS_FLOW, align 4
  %219 = load %struct.isi_port*, %struct.isi_port** %3, align 8
  %220 = getelementptr inbounds %struct.isi_port, %struct.isi_port* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = or i32 %222, %218
  store i32 %223, i32* %221, align 4
  %224 = load i8, i8* @ISICOM_CTSRTS, align 1
  %225 = zext i8 %224 to i32
  %226 = load i8, i8* %10, align 1
  %227 = zext i8 %226 to i32
  %228 = or i32 %227, %225
  %229 = trunc i32 %228 to i8
  store i8 %229, i8* %10, align 1
  br label %230

230:                                              ; preds = %217, %206
  %231 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %232 = call i64 @I_IXON(%struct.tty_struct* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %230
  %235 = load i8, i8* @ISICOM_RESPOND_XONXOFF, align 1
  %236 = zext i8 %235 to i32
  %237 = load i8, i8* %10, align 1
  %238 = zext i8 %237 to i32
  %239 = or i32 %238, %236
  %240 = trunc i32 %239 to i8
  store i8 %240, i8* %10, align 1
  br label %241

241:                                              ; preds = %234, %230
  %242 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %243 = call i64 @I_IXOFF(%struct.tty_struct* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %241
  %246 = load i8, i8* @ISICOM_INITIATE_XONXOFF, align 1
  %247 = zext i8 %246 to i32
  %248 = load i8, i8* %10, align 1
  %249 = zext i8 %248 to i32
  %250 = or i32 %249, %247
  %251 = trunc i32 %250 to i8
  store i8 %251, i8* %10, align 1
  br label %252

252:                                              ; preds = %245, %241
  %253 = load i64, i64* %6, align 8
  %254 = call i64 @WaitTillCardIsFree(i64 %253)
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %280

256:                                              ; preds = %252
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %9, align 4
  %259 = shl i32 %257, %258
  %260 = or i32 32768, %259
  %261 = or i32 %260, 4
  %262 = load i64, i64* %6, align 8
  %263 = call i32 @outw(i32 %261, i64 %262)
  %264 = load i8, i8* %10, align 1
  %265 = zext i8 %264 to i32
  %266 = shl i32 %265, 8
  %267 = or i32 %266, 5
  %268 = load i64, i64* %6, align 8
  %269 = call i32 @outw(i32 %267, i64 %268)
  %270 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %271 = call i32 @STOP_CHAR(%struct.tty_struct* %270)
  %272 = shl i32 %271, 8
  %273 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %274 = call i32 @START_CHAR(%struct.tty_struct* %273)
  %275 = or i32 %272, %274
  %276 = load i64, i64* %6, align 8
  %277 = call i32 @outw(i32 %275, i64 %276)
  %278 = load i64, i64* %6, align 8
  %279 = call i32 @InterruptTheCard(i64 %278)
  br label %280

280:                                              ; preds = %256, %252
  %281 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %282 = call i64 @C_CREAD(%struct.tty_struct* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %297

284:                                              ; preds = %280
  %285 = load i32, i32* %8, align 4
  %286 = shl i32 1, %285
  %287 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %288 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %286
  store i32 %290, i32* %288, align 4
  %291 = load %struct.isi_board*, %struct.isi_board** %4, align 8
  %292 = getelementptr inbounds %struct.isi_board, %struct.isi_board* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = load i64, i64* %6, align 8
  %295 = add i64 %294, 2
  %296 = call i32 @outw(i32 %293, i64 %295)
  br label %297

297:                                              ; preds = %113, %284, %280
  ret void
}

declare dso_local i64 @C_BAUD(%struct.tty_struct*) #1

declare dso_local i32 @drop_dtr(%struct.isi_port*) #1

declare dso_local i32 @raise_dtr(%struct.isi_port*) #1

declare dso_local i64 @WaitTillCardIsFree(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @C_CSIZE(%struct.tty_struct*) #1

declare dso_local i64 @C_CSTOPB(%struct.tty_struct*) #1

declare dso_local i64 @C_PARENB(%struct.tty_struct*) #1

declare dso_local i64 @C_PARODD(%struct.tty_struct*) #1

declare dso_local i32 @InterruptTheCard(i64) #1

declare dso_local i64 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i64 @C_CRTSCTS(%struct.tty_struct*) #1

declare dso_local i64 @I_IXON(%struct.tty_struct*) #1

declare dso_local i64 @I_IXOFF(%struct.tty_struct*) #1

declare dso_local i32 @STOP_CHAR(%struct.tty_struct*) #1

declare dso_local i32 @START_CHAR(%struct.tty_struct*) #1

declare dso_local i64 @C_CREAD(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
