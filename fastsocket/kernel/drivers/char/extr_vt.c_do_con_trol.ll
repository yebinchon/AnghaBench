; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_do_con_trol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_vt.c_do_con_trol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32 }
%struct.vc_data = type { i32, i32, i32*, i32, i32, i32, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i32, i32, i64, i32, i32, i32 }

@lnm = common dso_local global i32 0, align 4
@ESnormal = common dso_local global i8* null, align 8
@kbdapplic = common dso_local global i32 0, align 4
@NPAR = common dso_local global i64 0, align 8
@CUR_DEFAULT = common dso_local global i32 0, align 4
@kbd_table = common dso_local global i64 0, align 8
@GRAF_MAP = common dso_local global i8* null, align 8
@LAT1_MAP = common dso_local global i8* null, align 8
@IBMPC_MAP = common dso_local global i8* null, align 8
@USER_MAP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.vc_data*, i32)* @do_con_trol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_con_trol(%struct.tty_struct* %0, %struct.vc_data* %1, i32 %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.vc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.vc_data* %1, %struct.vc_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %131 [
    i32 0, label %10
    i32 7, label %11
    i32 8, label %25
    i32 9, label %28
    i32 10, label %81
    i32 11, label %81
    i32 12, label %81
    i32 13, label %90
    i32 14, label %93
    i32 15, label %105
    i32 24, label %117
    i32 26, label %117
    i32 27, label %122
    i32 127, label %125
    i32 155, label %128
  ]

10:                                               ; preds = %3
  br label %1291

11:                                               ; preds = %3
  %12 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 26
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 27
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %21 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %20, i32 0, i32 26
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kd_mksound(i32 %19, i32 %22)
  br label %24

24:                                               ; preds = %16, %11
  br label %1291

25:                                               ; preds = %3
  %26 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %27 = call i32 @bs(%struct.vc_data* %26)
  br label %1291

28:                                               ; preds = %3
  %29 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %30 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 1
  %33 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %34 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %69, %28
  %38 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %39 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 25
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = icmp slt i32 %40, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %37
  %47 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %55 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = ashr i32 %56, 5
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %53, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 31
  %65 = shl i32 1, %64
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %46
  br label %70

69:                                               ; preds = %46
  br label %37

70:                                               ; preds = %68, %37
  %71 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %72 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 1
  %75 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %76 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %80 = call i32 @notify_write(%struct.vc_data* %79, i8 signext 9)
  br label %1291

81:                                               ; preds = %3, %3, %3
  %82 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %83 = call i32 @lf(%struct.vc_data* %82)
  %84 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %85 = load i32, i32* @lnm, align 4
  %86 = call i32 @is_kbd(%struct.vc_data* %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  br label %1291

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %3, %89
  %91 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %92 = call i32 @cr(%struct.vc_data* %91)
  br label %1291

93:                                               ; preds = %3
  %94 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %95 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %94, i32 0, i32 3
  store i32 1, i32* %95, align 8
  %96 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %97 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %96, i32 0, i32 19
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %100 = call i8* @set_translate(i8* %98, %struct.vc_data* %99)
  %101 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %102 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %101, i32 0, i32 20
  store i8* %100, i8** %102, align 8
  %103 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %104 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %103, i32 0, i32 4
  store i32 1, i32* %104, align 4
  br label %1291

105:                                              ; preds = %3
  %106 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %107 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %106, i32 0, i32 3
  store i32 0, i32* %107, align 8
  %108 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %109 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %108, i32 0, i32 21
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %112 = call i8* @set_translate(i8* %110, %struct.vc_data* %111)
  %113 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %114 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %113, i32 0, i32 20
  store i8* %112, i8** %114, align 8
  %115 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %116 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %115, i32 0, i32 4
  store i32 0, i32* %116, align 4
  br label %1291

117:                                              ; preds = %3, %3
  %118 = load i8*, i8** @ESnormal, align 8
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %121 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %120, i32 0, i32 5
  store i32 %119, i32* %121, align 8
  br label %1291

122:                                              ; preds = %3
  %123 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %124 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %123, i32 0, i32 5
  store i32 138, i32* %124, align 8
  br label %1291

125:                                              ; preds = %3
  %126 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %127 = call i32 @del(%struct.vc_data* %126)
  br label %1291

128:                                              ; preds = %3
  %129 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %130 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %129, i32 0, i32 5
  store i32 128, i32* %130, align 8
  br label %1291

131:                                              ; preds = %3
  %132 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %133 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  switch i32 %134, label %1286 [
    i32 138, label %135
    i32 133, label %208
    i32 132, label %255
    i32 128, label %412
    i32 136, label %456
    i32 135, label %503
    i32 131, label %1136
    i32 137, label %1149
    i32 134, label %1154
    i32 130, label %1188
    i32 129, label %1237
  ]

135:                                              ; preds = %131
  %136 = load i8*, i8** @ESnormal, align 8
  %137 = ptrtoint i8* %136 to i32
  %138 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %139 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %138, i32 0, i32 5
  store i32 %137, i32* %139, align 8
  %140 = load i32, i32* %6, align 4
  switch i32 %140, label %207 [
    i32 91, label %141
    i32 93, label %144
    i32 37, label %147
    i32 69, label %150
    i32 77, label %155
    i32 68, label %158
    i32 72, label %161
    i32 90, label %178
    i32 55, label %181
    i32 56, label %184
    i32 40, label %187
    i32 41, label %190
    i32 35, label %193
    i32 99, label %196
    i32 62, label %199
    i32 61, label %203
  ]

141:                                              ; preds = %135
  %142 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %143 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %142, i32 0, i32 5
  store i32 128, i32* %143, align 8
  br label %1291

144:                                              ; preds = %135
  %145 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %146 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %145, i32 0, i32 5
  store i32 133, i32* %146, align 8
  br label %1291

147:                                              ; preds = %135
  %148 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %149 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %148, i32 0, i32 5
  store i32 131, i32* %149, align 8
  br label %1291

150:                                              ; preds = %135
  %151 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %152 = call i32 @cr(%struct.vc_data* %151)
  %153 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %154 = call i32 @lf(%struct.vc_data* %153)
  br label %1291

155:                                              ; preds = %135
  %156 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %157 = call i32 @ri(%struct.vc_data* %156)
  br label %1291

158:                                              ; preds = %135
  %159 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %160 = call i32 @lf(%struct.vc_data* %159)
  br label %1291

161:                                              ; preds = %135
  %162 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %163 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 31
  %166 = shl i32 1, %165
  %167 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %168 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %171 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = ashr i32 %172, 5
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %169, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %166
  store i32 %177, i32* %175, align 4
  br label %1291

178:                                              ; preds = %135
  %179 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %180 = call i32 @respond_ID(%struct.tty_struct* %179)
  br label %1291

181:                                              ; preds = %135
  %182 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %183 = call i32 @save_cur(%struct.vc_data* %182)
  br label %1291

184:                                              ; preds = %135
  %185 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %186 = call i32 @restore_cur(%struct.vc_data* %185)
  br label %1291

187:                                              ; preds = %135
  %188 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %189 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %188, i32 0, i32 5
  store i32 130, i32* %189, align 8
  br label %1291

190:                                              ; preds = %135
  %191 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %192 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %191, i32 0, i32 5
  store i32 129, i32* %192, align 8
  br label %1291

193:                                              ; preds = %135
  %194 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %195 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %194, i32 0, i32 5
  store i32 134, i32* %195, align 8
  br label %1291

196:                                              ; preds = %135
  %197 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %198 = call i32 @reset_terminal(%struct.vc_data* %197, i32 1)
  br label %1291

199:                                              ; preds = %135
  %200 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %201 = load i32, i32* @kbdapplic, align 4
  %202 = call i32 @clr_kbd(%struct.vc_data* %200, i32 %201)
  br label %1291

203:                                              ; preds = %135
  %204 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %205 = load i32, i32* @kbdapplic, align 4
  %206 = call i32 @set_kbd(%struct.vc_data* %204, i32 %205)
  br label %1291

207:                                              ; preds = %135
  br label %1291

208:                                              ; preds = %131
  %209 = load i32, i32* %6, align 4
  %210 = icmp eq i32 %209, 80
  br i1 %210, label %211, label %238

211:                                              ; preds = %208
  %212 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %213 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %212, i32 0, i32 6
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %228, %211
  %215 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %216 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %215, i32 0, i32 6
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* @NPAR, align 8
  %219 = icmp ult i64 %217, %218
  br i1 %219, label %220, label %233

220:                                              ; preds = %214
  %221 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %222 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %221, i32 0, i32 7
  %223 = load i32*, i32** %222, align 8
  %224 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %225 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %224, i32 0, i32 6
  %226 = load i64, i64* %225, align 8
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  store i32 0, i32* %227, align 4
  br label %228

228:                                              ; preds = %220
  %229 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %230 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %229, i32 0, i32 6
  %231 = load i64, i64* %230, align 8
  %232 = add i64 %231, 1
  store i64 %232, i64* %230, align 8
  br label %214

233:                                              ; preds = %214
  %234 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %235 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %234, i32 0, i32 6
  store i64 0, i64* %235, align 8
  %236 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %237 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %236, i32 0, i32 5
  store i32 132, i32* %237, align 8
  br label %1291

238:                                              ; preds = %208
  %239 = load i32, i32* %6, align 4
  %240 = icmp eq i32 %239, 82
  br i1 %240, label %241, label %248

241:                                              ; preds = %238
  %242 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %243 = call i32 @reset_palette(%struct.vc_data* %242)
  %244 = load i8*, i8** @ESnormal, align 8
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %247 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %246, i32 0, i32 5
  store i32 %245, i32* %247, align 8
  br label %253

248:                                              ; preds = %238
  %249 = load i8*, i8** @ESnormal, align 8
  %250 = ptrtoint i8* %249 to i32
  %251 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %252 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %248, %241
  br label %254

254:                                              ; preds = %253
  br label %1291

255:                                              ; preds = %131
  %256 = load i32, i32* %6, align 4
  %257 = icmp sge i32 %256, 48
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i32, i32* %6, align 4
  %260 = icmp sle i32 %259, 57
  br i1 %260, label %273, label %261

261:                                              ; preds = %258, %255
  %262 = load i32, i32* %6, align 4
  %263 = icmp sge i32 %262, 65
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* %6, align 4
  %266 = icmp sle i32 %265, 70
  br i1 %266, label %273, label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %6, align 4
  %269 = icmp sge i32 %268, 97
  br i1 %269, label %270, label %406

270:                                              ; preds = %267
  %271 = load i32, i32* %6, align 4
  %272 = icmp sle i32 %271, 102
  br i1 %272, label %273, label %406

273:                                              ; preds = %270, %264, %258
  %274 = load i32, i32* %6, align 4
  %275 = icmp sgt i32 %274, 57
  br i1 %275, label %276, label %281

276:                                              ; preds = %273
  %277 = load i32, i32* %6, align 4
  %278 = and i32 %277, 223
  %279 = sub nsw i32 %278, 65
  %280 = add nsw i32 %279, 10
  br label %284

281:                                              ; preds = %273
  %282 = load i32, i32* %6, align 4
  %283 = sub nsw i32 %282, 48
  br label %284

284:                                              ; preds = %281, %276
  %285 = phi i32 [ %280, %276 ], [ %283, %281 ]
  %286 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %287 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %286, i32 0, i32 7
  %288 = load i32*, i32** %287, align 8
  %289 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %290 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %289, i32 0, i32 6
  %291 = load i64, i64* %290, align 8
  %292 = add i64 %291, 1
  store i64 %292, i64* %290, align 8
  %293 = getelementptr inbounds i32, i32* %288, i64 %291
  store i32 %285, i32* %293, align 4
  %294 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %295 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %294, i32 0, i32 6
  %296 = load i64, i64* %295, align 8
  %297 = icmp eq i64 %296, 7
  br i1 %297, label %298, label %405

298:                                              ; preds = %284
  %299 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %300 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %299, i32 0, i32 7
  %301 = load i32*, i32** %300, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = mul nsw i32 %303, 3
  store i32 %304, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %305 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %306 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %305, i32 0, i32 7
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %8, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = mul nsw i32 16, %312
  %314 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %315 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %314, i32 0, i32 8
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %7, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  store i32 %313, i32* %319, align 4
  %320 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %321 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %320, i32 0, i32 7
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %8, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %8, align 4
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %329 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %328, i32 0, i32 8
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %7, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %7, align 4
  %333 = sext i32 %331 to i64
  %334 = getelementptr inbounds i32, i32* %330, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, %327
  store i32 %336, i32* %334, align 4
  %337 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %338 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %337, i32 0, i32 7
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %8, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %8, align 4
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i32, i32* %339, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = mul nsw i32 16, %344
  %346 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %347 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %346, i32 0, i32 8
  %348 = load i32*, i32** %347, align 8
  %349 = load i32, i32* %7, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  store i32 %345, i32* %351, align 4
  %352 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %353 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %352, i32 0, i32 7
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %8, align 4
  %356 = add nsw i32 %355, 1
  store i32 %356, i32* %8, align 4
  %357 = sext i32 %355 to i64
  %358 = getelementptr inbounds i32, i32* %354, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %361 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %360, i32 0, i32 8
  %362 = load i32*, i32** %361, align 8
  %363 = load i32, i32* %7, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %7, align 4
  %365 = sext i32 %363 to i64
  %366 = getelementptr inbounds i32, i32* %362, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = add nsw i32 %367, %359
  store i32 %368, i32* %366, align 4
  %369 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %370 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %369, i32 0, i32 7
  %371 = load i32*, i32** %370, align 8
  %372 = load i32, i32* %8, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %8, align 4
  %374 = sext i32 %372 to i64
  %375 = getelementptr inbounds i32, i32* %371, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = mul nsw i32 16, %376
  %378 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %379 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %378, i32 0, i32 8
  %380 = load i32*, i32** %379, align 8
  %381 = load i32, i32* %7, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  store i32 %377, i32* %383, align 4
  %384 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %385 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %384, i32 0, i32 7
  %386 = load i32*, i32** %385, align 8
  %387 = load i32, i32* %8, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32, i32* %386, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %392 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %391, i32 0, i32 8
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %7, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, %390
  store i32 %398, i32* %396, align 4
  %399 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %400 = call i32 @set_palette(%struct.vc_data* %399)
  %401 = load i8*, i8** @ESnormal, align 8
  %402 = ptrtoint i8* %401 to i32
  %403 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %404 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %403, i32 0, i32 5
  store i32 %402, i32* %404, align 8
  br label %405

405:                                              ; preds = %298, %284
  br label %411

406:                                              ; preds = %270, %267
  %407 = load i8*, i8** @ESnormal, align 8
  %408 = ptrtoint i8* %407 to i32
  %409 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %410 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %409, i32 0, i32 5
  store i32 %408, i32* %410, align 8
  br label %411

411:                                              ; preds = %406, %405
  br label %1291

412:                                              ; preds = %131
  %413 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %414 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %413, i32 0, i32 6
  store i64 0, i64* %414, align 8
  br label %415

415:                                              ; preds = %429, %412
  %416 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %417 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %416, i32 0, i32 6
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @NPAR, align 8
  %420 = icmp ult i64 %418, %419
  br i1 %420, label %421, label %434

421:                                              ; preds = %415
  %422 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %423 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %422, i32 0, i32 7
  %424 = load i32*, i32** %423, align 8
  %425 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %426 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %425, i32 0, i32 6
  %427 = load i64, i64* %426, align 8
  %428 = getelementptr inbounds i32, i32* %424, i64 %427
  store i32 0, i32* %428, align 4
  br label %429

429:                                              ; preds = %421
  %430 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %431 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %430, i32 0, i32 6
  %432 = load i64, i64* %431, align 8
  %433 = add i64 %432, 1
  store i64 %433, i64* %431, align 8
  br label %415

434:                                              ; preds = %415
  %435 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %436 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %435, i32 0, i32 6
  store i64 0, i64* %436, align 8
  %437 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %438 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %437, i32 0, i32 5
  store i32 136, i32* %438, align 8
  %439 = load i32, i32* %6, align 4
  %440 = icmp eq i32 %439, 91
  br i1 %440, label %441, label %444

441:                                              ; preds = %434
  %442 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %443 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %442, i32 0, i32 5
  store i32 137, i32* %443, align 8
  br label %1291

444:                                              ; preds = %434
  %445 = load i32, i32* %6, align 4
  %446 = icmp eq i32 %445, 63
  %447 = zext i1 %446 to i32
  %448 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %449 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %448, i32 0, i32 9
  store i32 %447, i32* %449, align 8
  %450 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %451 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %450, i32 0, i32 9
  %452 = load i32, i32* %451, align 8
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %444
  br label %1291

455:                                              ; preds = %444
  br label %456

456:                                              ; preds = %131, %455
  %457 = load i32, i32* %6, align 4
  %458 = icmp eq i32 %457, 59
  br i1 %458, label %459, label %471

459:                                              ; preds = %456
  %460 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %461 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %460, i32 0, i32 6
  %462 = load i64, i64* %461, align 8
  %463 = load i64, i64* @NPAR, align 8
  %464 = sub i64 %463, 1
  %465 = icmp ult i64 %462, %464
  br i1 %465, label %466, label %471

466:                                              ; preds = %459
  %467 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %468 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %467, i32 0, i32 6
  %469 = load i64, i64* %468, align 8
  %470 = add i64 %469, 1
  store i64 %470, i64* %468, align 8
  br label %1291

471:                                              ; preds = %459, %456
  %472 = load i32, i32* %6, align 4
  %473 = icmp sge i32 %472, 48
  br i1 %473, label %474, label %498

474:                                              ; preds = %471
  %475 = load i32, i32* %6, align 4
  %476 = icmp sle i32 %475, 57
  br i1 %476, label %477, label %498

477:                                              ; preds = %474
  %478 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %479 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %478, i32 0, i32 7
  %480 = load i32*, i32** %479, align 8
  %481 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %482 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %481, i32 0, i32 6
  %483 = load i64, i64* %482, align 8
  %484 = getelementptr inbounds i32, i32* %480, i64 %483
  %485 = load i32, i32* %484, align 4
  %486 = mul nsw i32 %485, 10
  store i32 %486, i32* %484, align 4
  %487 = load i32, i32* %6, align 4
  %488 = sub nsw i32 %487, 48
  %489 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %490 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %489, i32 0, i32 7
  %491 = load i32*, i32** %490, align 8
  %492 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %493 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %492, i32 0, i32 6
  %494 = load i64, i64* %493, align 8
  %495 = getelementptr inbounds i32, i32* %491, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = add nsw i32 %496, %488
  store i32 %497, i32* %495, align 4
  br label %1291

498:                                              ; preds = %474, %471
  %499 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %500 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %499, i32 0, i32 5
  store i32 135, i32* %500, align 8
  br label %501

501:                                              ; preds = %498
  br label %502

502:                                              ; preds = %501
  br label %503

503:                                              ; preds = %131, %502
  %504 = load i8*, i8** @ESnormal, align 8
  %505 = ptrtoint i8* %504 to i32
  %506 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %507 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %506, i32 0, i32 5
  store i32 %505, i32* %507, align 8
  %508 = load i32, i32* %6, align 4
  switch i32 %508, label %620 [
    i32 104, label %509
    i32 108, label %512
    i32 99, label %515
    i32 109, label %555
    i32 110, label %591
  ]

509:                                              ; preds = %503
  %510 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %511 = call i32 @set_mode(%struct.vc_data* %510, i32 1)
  br label %1291

512:                                              ; preds = %503
  %513 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %514 = call i32 @set_mode(%struct.vc_data* %513, i32 0)
  br label %1291

515:                                              ; preds = %503
  %516 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %517 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %516, i32 0, i32 9
  %518 = load i32, i32* %517, align 8
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %554

520:                                              ; preds = %515
  %521 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %522 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %521, i32 0, i32 7
  %523 = load i32*, i32** %522, align 8
  %524 = getelementptr inbounds i32, i32* %523, i64 0
  %525 = load i32, i32* %524, align 4
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %549

527:                                              ; preds = %520
  %528 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %529 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %528, i32 0, i32 7
  %530 = load i32*, i32** %529, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 0
  %532 = load i32, i32* %531, align 4
  %533 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %534 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %533, i32 0, i32 7
  %535 = load i32*, i32** %534, align 8
  %536 = getelementptr inbounds i32, i32* %535, i64 1
  %537 = load i32, i32* %536, align 4
  %538 = shl i32 %537, 8
  %539 = or i32 %532, %538
  %540 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %541 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %540, i32 0, i32 7
  %542 = load i32*, i32** %541, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 2
  %544 = load i32, i32* %543, align 4
  %545 = shl i32 %544, 16
  %546 = or i32 %539, %545
  %547 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %548 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %547, i32 0, i32 10
  store i32 %546, i32* %548, align 4
  br label %553

549:                                              ; preds = %520
  %550 = load i32, i32* @CUR_DEFAULT, align 4
  %551 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %552 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %551, i32 0, i32 10
  store i32 %550, i32* %552, align 4
  br label %553

553:                                              ; preds = %549, %527
  br label %1291

554:                                              ; preds = %515
  br label %620

555:                                              ; preds = %503
  %556 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %557 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %556, i32 0, i32 9
  %558 = load i32, i32* %557, align 8
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %590

560:                                              ; preds = %555
  %561 = call i32 (...) @clear_selection()
  %562 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %563 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %562, i32 0, i32 7
  %564 = load i32*, i32** %563, align 8
  %565 = getelementptr inbounds i32, i32* %564, i64 0
  %566 = load i32, i32* %565, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %583

568:                                              ; preds = %560
  %569 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %570 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %569, i32 0, i32 7
  %571 = load i32*, i32** %570, align 8
  %572 = getelementptr inbounds i32, i32* %571, i64 0
  %573 = load i32, i32* %572, align 4
  %574 = shl i32 %573, 8
  %575 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %576 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %575, i32 0, i32 7
  %577 = load i32*, i32** %576, align 8
  %578 = getelementptr inbounds i32, i32* %577, i64 1
  %579 = load i32, i32* %578, align 4
  %580 = or i32 %574, %579
  %581 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %582 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %581, i32 0, i32 11
  store i32 %580, i32* %582, align 8
  br label %589

583:                                              ; preds = %560
  %584 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %585 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %584, i32 0, i32 12
  %586 = load i32, i32* %585, align 4
  %587 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %588 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %587, i32 0, i32 11
  store i32 %586, i32* %588, align 8
  br label %589

589:                                              ; preds = %583, %568
  br label %1291

590:                                              ; preds = %555
  br label %620

591:                                              ; preds = %503
  %592 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %593 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %592, i32 0, i32 9
  %594 = load i32, i32* %593, align 8
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %619, label %596

596:                                              ; preds = %591
  %597 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %598 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %597, i32 0, i32 7
  %599 = load i32*, i32** %598, align 8
  %600 = getelementptr inbounds i32, i32* %599, i64 0
  %601 = load i32, i32* %600, align 4
  %602 = icmp eq i32 %601, 5
  br i1 %602, label %603, label %606

603:                                              ; preds = %596
  %604 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %605 = call i32 @status_report(%struct.tty_struct* %604)
  br label %618

606:                                              ; preds = %596
  %607 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %608 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %607, i32 0, i32 7
  %609 = load i32*, i32** %608, align 8
  %610 = getelementptr inbounds i32, i32* %609, i64 0
  %611 = load i32, i32* %610, align 4
  %612 = icmp eq i32 %611, 6
  br i1 %612, label %613, label %617

613:                                              ; preds = %606
  %614 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %615 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %616 = call i32 @cursor_report(%struct.vc_data* %614, %struct.tty_struct* %615)
  br label %617

617:                                              ; preds = %613, %606
  br label %618

618:                                              ; preds = %617, %603
  br label %619

619:                                              ; preds = %618, %591
  br label %1291

620:                                              ; preds = %503, %590, %554
  %621 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %622 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %621, i32 0, i32 9
  %623 = load i32, i32* %622, align 8
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %628

625:                                              ; preds = %620
  %626 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %627 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %626, i32 0, i32 9
  store i32 0, i32* %627, align 8
  br label %1291

628:                                              ; preds = %620
  %629 = load i32, i32* %6, align 4
  switch i32 %629, label %1135 [
    i32 71, label %630
    i32 96, label %630
    i32 65, label %655
    i32 66, label %684
    i32 101, label %684
    i32 67, label %713
    i32 97, label %713
    i32 68, label %742
    i32 69, label %771
    i32 70, label %797
    i32 100, label %823
    i32 72, label %848
    i32 102, label %848
    i32 74, label %889
    i32 75, label %897
    i32 76, label %905
    i32 77, label %913
    i32 80, label %921
    i32 99, label %929
    i32 103, label %940
    i32 109, label %1007
    i32 113, label %1010
    i32 114, label %1040
    i32 115, label %1110
    i32 117, label %1113
    i32 88, label %1116
    i32 64, label %1124
    i32 93, label %1132
  ]

630:                                              ; preds = %628, %628
  %631 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %632 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %631, i32 0, i32 7
  %633 = load i32*, i32** %632, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 0
  %635 = load i32, i32* %634, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %644

637:                                              ; preds = %630
  %638 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %639 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %638, i32 0, i32 7
  %640 = load i32*, i32** %639, align 8
  %641 = getelementptr inbounds i32, i32* %640, i64 0
  %642 = load i32, i32* %641, align 4
  %643 = add nsw i32 %642, -1
  store i32 %643, i32* %641, align 4
  br label %644

644:                                              ; preds = %637, %630
  %645 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %646 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %647 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %646, i32 0, i32 7
  %648 = load i32*, i32** %647, align 8
  %649 = getelementptr inbounds i32, i32* %648, i64 0
  %650 = load i32, i32* %649, align 4
  %651 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %652 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %651, i32 0, i32 13
  %653 = load i32, i32* %652, align 8
  %654 = call i32 @gotoxy(%struct.vc_data* %645, i32 %650, i32 %653)
  br label %1291

655:                                              ; preds = %628
  %656 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %657 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %656, i32 0, i32 7
  %658 = load i32*, i32** %657, align 8
  %659 = getelementptr inbounds i32, i32* %658, i64 0
  %660 = load i32, i32* %659, align 4
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %669, label %662

662:                                              ; preds = %655
  %663 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %664 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %663, i32 0, i32 7
  %665 = load i32*, i32** %664, align 8
  %666 = getelementptr inbounds i32, i32* %665, i64 0
  %667 = load i32, i32* %666, align 4
  %668 = add nsw i32 %667, 1
  store i32 %668, i32* %666, align 4
  br label %669

669:                                              ; preds = %662, %655
  %670 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %671 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %672 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %671, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %675 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %674, i32 0, i32 13
  %676 = load i32, i32* %675, align 8
  %677 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %678 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %677, i32 0, i32 7
  %679 = load i32*, i32** %678, align 8
  %680 = getelementptr inbounds i32, i32* %679, i64 0
  %681 = load i32, i32* %680, align 4
  %682 = sub nsw i32 %676, %681
  %683 = call i32 @gotoxy(%struct.vc_data* %670, i32 %673, i32 %682)
  br label %1291

684:                                              ; preds = %628, %628
  %685 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %686 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %685, i32 0, i32 7
  %687 = load i32*, i32** %686, align 8
  %688 = getelementptr inbounds i32, i32* %687, i64 0
  %689 = load i32, i32* %688, align 4
  %690 = icmp ne i32 %689, 0
  br i1 %690, label %698, label %691

691:                                              ; preds = %684
  %692 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %693 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %692, i32 0, i32 7
  %694 = load i32*, i32** %693, align 8
  %695 = getelementptr inbounds i32, i32* %694, i64 0
  %696 = load i32, i32* %695, align 4
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %695, align 4
  br label %698

698:                                              ; preds = %691, %684
  %699 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %700 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %701 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %700, i32 0, i32 1
  %702 = load i32, i32* %701, align 4
  %703 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %704 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %703, i32 0, i32 13
  %705 = load i32, i32* %704, align 8
  %706 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %707 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %706, i32 0, i32 7
  %708 = load i32*, i32** %707, align 8
  %709 = getelementptr inbounds i32, i32* %708, i64 0
  %710 = load i32, i32* %709, align 4
  %711 = add nsw i32 %705, %710
  %712 = call i32 @gotoxy(%struct.vc_data* %699, i32 %702, i32 %711)
  br label %1291

713:                                              ; preds = %628, %628
  %714 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %715 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %714, i32 0, i32 7
  %716 = load i32*, i32** %715, align 8
  %717 = getelementptr inbounds i32, i32* %716, i64 0
  %718 = load i32, i32* %717, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %727, label %720

720:                                              ; preds = %713
  %721 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %722 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %721, i32 0, i32 7
  %723 = load i32*, i32** %722, align 8
  %724 = getelementptr inbounds i32, i32* %723, i64 0
  %725 = load i32, i32* %724, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %724, align 4
  br label %727

727:                                              ; preds = %720, %713
  %728 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %729 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %730 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %729, i32 0, i32 1
  %731 = load i32, i32* %730, align 4
  %732 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %733 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %732, i32 0, i32 7
  %734 = load i32*, i32** %733, align 8
  %735 = getelementptr inbounds i32, i32* %734, i64 0
  %736 = load i32, i32* %735, align 4
  %737 = add nsw i32 %731, %736
  %738 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %739 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %738, i32 0, i32 13
  %740 = load i32, i32* %739, align 8
  %741 = call i32 @gotoxy(%struct.vc_data* %728, i32 %737, i32 %740)
  br label %1291

742:                                              ; preds = %628
  %743 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %744 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %743, i32 0, i32 7
  %745 = load i32*, i32** %744, align 8
  %746 = getelementptr inbounds i32, i32* %745, i64 0
  %747 = load i32, i32* %746, align 4
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %756, label %749

749:                                              ; preds = %742
  %750 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %751 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %750, i32 0, i32 7
  %752 = load i32*, i32** %751, align 8
  %753 = getelementptr inbounds i32, i32* %752, i64 0
  %754 = load i32, i32* %753, align 4
  %755 = add nsw i32 %754, 1
  store i32 %755, i32* %753, align 4
  br label %756

756:                                              ; preds = %749, %742
  %757 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %758 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %759 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %758, i32 0, i32 1
  %760 = load i32, i32* %759, align 4
  %761 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %762 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %761, i32 0, i32 7
  %763 = load i32*, i32** %762, align 8
  %764 = getelementptr inbounds i32, i32* %763, i64 0
  %765 = load i32, i32* %764, align 4
  %766 = sub nsw i32 %760, %765
  %767 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %768 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %767, i32 0, i32 13
  %769 = load i32, i32* %768, align 8
  %770 = call i32 @gotoxy(%struct.vc_data* %757, i32 %766, i32 %769)
  br label %1291

771:                                              ; preds = %628
  %772 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %773 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %772, i32 0, i32 7
  %774 = load i32*, i32** %773, align 8
  %775 = getelementptr inbounds i32, i32* %774, i64 0
  %776 = load i32, i32* %775, align 4
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %785, label %778

778:                                              ; preds = %771
  %779 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %780 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %779, i32 0, i32 7
  %781 = load i32*, i32** %780, align 8
  %782 = getelementptr inbounds i32, i32* %781, i64 0
  %783 = load i32, i32* %782, align 4
  %784 = add nsw i32 %783, 1
  store i32 %784, i32* %782, align 4
  br label %785

785:                                              ; preds = %778, %771
  %786 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %787 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %788 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %787, i32 0, i32 13
  %789 = load i32, i32* %788, align 8
  %790 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %791 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %790, i32 0, i32 7
  %792 = load i32*, i32** %791, align 8
  %793 = getelementptr inbounds i32, i32* %792, i64 0
  %794 = load i32, i32* %793, align 4
  %795 = add nsw i32 %789, %794
  %796 = call i32 @gotoxy(%struct.vc_data* %786, i32 0, i32 %795)
  br label %1291

797:                                              ; preds = %628
  %798 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %799 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %798, i32 0, i32 7
  %800 = load i32*, i32** %799, align 8
  %801 = getelementptr inbounds i32, i32* %800, i64 0
  %802 = load i32, i32* %801, align 4
  %803 = icmp ne i32 %802, 0
  br i1 %803, label %811, label %804

804:                                              ; preds = %797
  %805 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %806 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %805, i32 0, i32 7
  %807 = load i32*, i32** %806, align 8
  %808 = getelementptr inbounds i32, i32* %807, i64 0
  %809 = load i32, i32* %808, align 4
  %810 = add nsw i32 %809, 1
  store i32 %810, i32* %808, align 4
  br label %811

811:                                              ; preds = %804, %797
  %812 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %813 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %814 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %813, i32 0, i32 13
  %815 = load i32, i32* %814, align 8
  %816 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %817 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %816, i32 0, i32 7
  %818 = load i32*, i32** %817, align 8
  %819 = getelementptr inbounds i32, i32* %818, i64 0
  %820 = load i32, i32* %819, align 4
  %821 = sub nsw i32 %815, %820
  %822 = call i32 @gotoxy(%struct.vc_data* %812, i32 0, i32 %821)
  br label %1291

823:                                              ; preds = %628
  %824 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %825 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %824, i32 0, i32 7
  %826 = load i32*, i32** %825, align 8
  %827 = getelementptr inbounds i32, i32* %826, i64 0
  %828 = load i32, i32* %827, align 4
  %829 = icmp ne i32 %828, 0
  br i1 %829, label %830, label %837

830:                                              ; preds = %823
  %831 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %832 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %831, i32 0, i32 7
  %833 = load i32*, i32** %832, align 8
  %834 = getelementptr inbounds i32, i32* %833, i64 0
  %835 = load i32, i32* %834, align 4
  %836 = add nsw i32 %835, -1
  store i32 %836, i32* %834, align 4
  br label %837

837:                                              ; preds = %830, %823
  %838 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %839 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %840 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %839, i32 0, i32 1
  %841 = load i32, i32* %840, align 4
  %842 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %843 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %842, i32 0, i32 7
  %844 = load i32*, i32** %843, align 8
  %845 = getelementptr inbounds i32, i32* %844, i64 0
  %846 = load i32, i32* %845, align 4
  %847 = call i32 @gotoxay(%struct.vc_data* %838, i32 %841, i32 %846)
  br label %1291

848:                                              ; preds = %628, %628
  %849 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %850 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %849, i32 0, i32 7
  %851 = load i32*, i32** %850, align 8
  %852 = getelementptr inbounds i32, i32* %851, i64 0
  %853 = load i32, i32* %852, align 4
  %854 = icmp ne i32 %853, 0
  br i1 %854, label %855, label %862

855:                                              ; preds = %848
  %856 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %857 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %856, i32 0, i32 7
  %858 = load i32*, i32** %857, align 8
  %859 = getelementptr inbounds i32, i32* %858, i64 0
  %860 = load i32, i32* %859, align 4
  %861 = add nsw i32 %860, -1
  store i32 %861, i32* %859, align 4
  br label %862

862:                                              ; preds = %855, %848
  %863 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %864 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %863, i32 0, i32 7
  %865 = load i32*, i32** %864, align 8
  %866 = getelementptr inbounds i32, i32* %865, i64 1
  %867 = load i32, i32* %866, align 4
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %869, label %876

869:                                              ; preds = %862
  %870 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %871 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %870, i32 0, i32 7
  %872 = load i32*, i32** %871, align 8
  %873 = getelementptr inbounds i32, i32* %872, i64 1
  %874 = load i32, i32* %873, align 4
  %875 = add nsw i32 %874, -1
  store i32 %875, i32* %873, align 4
  br label %876

876:                                              ; preds = %869, %862
  %877 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %878 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %879 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %878, i32 0, i32 7
  %880 = load i32*, i32** %879, align 8
  %881 = getelementptr inbounds i32, i32* %880, i64 1
  %882 = load i32, i32* %881, align 4
  %883 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %884 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %883, i32 0, i32 7
  %885 = load i32*, i32** %884, align 8
  %886 = getelementptr inbounds i32, i32* %885, i64 0
  %887 = load i32, i32* %886, align 4
  %888 = call i32 @gotoxay(%struct.vc_data* %877, i32 %882, i32 %887)
  br label %1291

889:                                              ; preds = %628
  %890 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %891 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %892 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %891, i32 0, i32 7
  %893 = load i32*, i32** %892, align 8
  %894 = getelementptr inbounds i32, i32* %893, i64 0
  %895 = load i32, i32* %894, align 4
  %896 = call i32 @csi_J(%struct.vc_data* %890, i32 %895)
  br label %1291

897:                                              ; preds = %628
  %898 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %899 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %900 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %899, i32 0, i32 7
  %901 = load i32*, i32** %900, align 8
  %902 = getelementptr inbounds i32, i32* %901, i64 0
  %903 = load i32, i32* %902, align 4
  %904 = call i32 @csi_K(%struct.vc_data* %898, i32 %903)
  br label %1291

905:                                              ; preds = %628
  %906 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %907 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %908 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %907, i32 0, i32 7
  %909 = load i32*, i32** %908, align 8
  %910 = getelementptr inbounds i32, i32* %909, i64 0
  %911 = load i32, i32* %910, align 4
  %912 = call i32 @csi_L(%struct.vc_data* %906, i32 %911)
  br label %1291

913:                                              ; preds = %628
  %914 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %915 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %916 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %915, i32 0, i32 7
  %917 = load i32*, i32** %916, align 8
  %918 = getelementptr inbounds i32, i32* %917, i64 0
  %919 = load i32, i32* %918, align 4
  %920 = call i32 @csi_M(%struct.vc_data* %914, i32 %919)
  br label %1291

921:                                              ; preds = %628
  %922 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %923 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %924 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %923, i32 0, i32 7
  %925 = load i32*, i32** %924, align 8
  %926 = getelementptr inbounds i32, i32* %925, i64 0
  %927 = load i32, i32* %926, align 4
  %928 = call i32 @csi_P(%struct.vc_data* %922, i32 %927)
  br label %1291

929:                                              ; preds = %628
  %930 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %931 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %930, i32 0, i32 7
  %932 = load i32*, i32** %931, align 8
  %933 = getelementptr inbounds i32, i32* %932, i64 0
  %934 = load i32, i32* %933, align 4
  %935 = icmp ne i32 %934, 0
  br i1 %935, label %939, label %936

936:                                              ; preds = %929
  %937 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %938 = call i32 @respond_ID(%struct.tty_struct* %937)
  br label %939

939:                                              ; preds = %936, %929
  br label %1291

940:                                              ; preds = %628
  %941 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %942 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %941, i32 0, i32 7
  %943 = load i32*, i32** %942, align 8
  %944 = getelementptr inbounds i32, i32* %943, i64 0
  %945 = load i32, i32* %944, align 4
  %946 = icmp ne i32 %945, 0
  br i1 %946, label %965, label %947

947:                                              ; preds = %940
  %948 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %949 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %948, i32 0, i32 1
  %950 = load i32, i32* %949, align 4
  %951 = and i32 %950, 31
  %952 = shl i32 1, %951
  %953 = xor i32 %952, -1
  %954 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %955 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %954, i32 0, i32 2
  %956 = load i32*, i32** %955, align 8
  %957 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %958 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %957, i32 0, i32 1
  %959 = load i32, i32* %958, align 4
  %960 = ashr i32 %959, 5
  %961 = sext i32 %960 to i64
  %962 = getelementptr inbounds i32, i32* %956, i64 %961
  %963 = load i32, i32* %962, align 4
  %964 = and i32 %963, %953
  store i32 %964, i32* %962, align 4
  br label %1006

965:                                              ; preds = %940
  %966 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %967 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %966, i32 0, i32 7
  %968 = load i32*, i32** %967, align 8
  %969 = getelementptr inbounds i32, i32* %968, i64 0
  %970 = load i32, i32* %969, align 4
  %971 = icmp eq i32 %970, 3
  br i1 %971, label %972, label %1005

972:                                              ; preds = %965
  %973 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %974 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %973, i32 0, i32 2
  %975 = load i32*, i32** %974, align 8
  %976 = getelementptr inbounds i32, i32* %975, i64 7
  store i32 0, i32* %976, align 4
  %977 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %978 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %977, i32 0, i32 2
  %979 = load i32*, i32** %978, align 8
  %980 = getelementptr inbounds i32, i32* %979, i64 6
  store i32 0, i32* %980, align 4
  %981 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %982 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %981, i32 0, i32 2
  %983 = load i32*, i32** %982, align 8
  %984 = getelementptr inbounds i32, i32* %983, i64 5
  store i32 0, i32* %984, align 4
  %985 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %986 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %985, i32 0, i32 2
  %987 = load i32*, i32** %986, align 8
  %988 = getelementptr inbounds i32, i32* %987, i64 4
  store i32 0, i32* %988, align 4
  %989 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %990 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %989, i32 0, i32 2
  %991 = load i32*, i32** %990, align 8
  %992 = getelementptr inbounds i32, i32* %991, i64 3
  store i32 0, i32* %992, align 4
  %993 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %994 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %993, i32 0, i32 2
  %995 = load i32*, i32** %994, align 8
  %996 = getelementptr inbounds i32, i32* %995, i64 2
  store i32 0, i32* %996, align 4
  %997 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %998 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %997, i32 0, i32 2
  %999 = load i32*, i32** %998, align 8
  %1000 = getelementptr inbounds i32, i32* %999, i64 1
  store i32 0, i32* %1000, align 4
  %1001 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1002 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1001, i32 0, i32 2
  %1003 = load i32*, i32** %1002, align 8
  %1004 = getelementptr inbounds i32, i32* %1003, i64 0
  store i32 0, i32* %1004, align 4
  br label %1005

1005:                                             ; preds = %972, %965
  br label %1006

1006:                                             ; preds = %1005, %947
  br label %1291

1007:                                             ; preds = %628
  %1008 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1009 = call i32 @csi_m(%struct.vc_data* %1008)
  br label %1291

1010:                                             ; preds = %628
  %1011 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1012 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1011, i32 0, i32 7
  %1013 = load i32*, i32** %1012, align 8
  %1014 = getelementptr inbounds i32, i32* %1013, i64 0
  %1015 = load i32, i32* %1014, align 4
  %1016 = icmp slt i32 %1015, 4
  br i1 %1016, label %1017, label %1039

1017:                                             ; preds = %1010
  %1018 = load i64, i64* @kbd_table, align 8
  %1019 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1020 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1019, i32 0, i32 24
  %1021 = load i64, i64* %1020, align 8
  %1022 = add nsw i64 %1018, %1021
  %1023 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1024 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1023, i32 0, i32 7
  %1025 = load i32*, i32** %1024, align 8
  %1026 = getelementptr inbounds i32, i32* %1025, i64 0
  %1027 = load i32, i32* %1026, align 4
  %1028 = icmp slt i32 %1027, 3
  br i1 %1028, label %1029, label %1035

1029:                                             ; preds = %1017
  %1030 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1031 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1030, i32 0, i32 7
  %1032 = load i32*, i32** %1031, align 8
  %1033 = getelementptr inbounds i32, i32* %1032, i64 0
  %1034 = load i32, i32* %1033, align 4
  br label %1036

1035:                                             ; preds = %1017
  br label %1036

1036:                                             ; preds = %1035, %1029
  %1037 = phi i32 [ %1034, %1029 ], [ 4, %1035 ]
  %1038 = call i32 @setledstate(i64 %1022, i32 %1037)
  br label %1039

1039:                                             ; preds = %1036, %1010
  br label %1291

1040:                                             ; preds = %628
  %1041 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1042 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1041, i32 0, i32 7
  %1043 = load i32*, i32** %1042, align 8
  %1044 = getelementptr inbounds i32, i32* %1043, i64 0
  %1045 = load i32, i32* %1044, align 4
  %1046 = icmp ne i32 %1045, 0
  br i1 %1046, label %1054, label %1047

1047:                                             ; preds = %1040
  %1048 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1049 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1048, i32 0, i32 7
  %1050 = load i32*, i32** %1049, align 8
  %1051 = getelementptr inbounds i32, i32* %1050, i64 0
  %1052 = load i32, i32* %1051, align 4
  %1053 = add nsw i32 %1052, 1
  store i32 %1053, i32* %1051, align 4
  br label %1054

1054:                                             ; preds = %1047, %1040
  %1055 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1056 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1055, i32 0, i32 7
  %1057 = load i32*, i32** %1056, align 8
  %1058 = getelementptr inbounds i32, i32* %1057, i64 1
  %1059 = load i32, i32* %1058, align 4
  %1060 = icmp ne i32 %1059, 0
  br i1 %1060, label %1069, label %1061

1061:                                             ; preds = %1054
  %1062 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1063 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1062, i32 0, i32 14
  %1064 = load i32, i32* %1063, align 4
  %1065 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1066 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1065, i32 0, i32 7
  %1067 = load i32*, i32** %1066, align 8
  %1068 = getelementptr inbounds i32, i32* %1067, i64 1
  store i32 %1064, i32* %1068, align 4
  br label %1069

1069:                                             ; preds = %1061, %1054
  %1070 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1071 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1070, i32 0, i32 7
  %1072 = load i32*, i32** %1071, align 8
  %1073 = getelementptr inbounds i32, i32* %1072, i64 0
  %1074 = load i32, i32* %1073, align 4
  %1075 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1076 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1075, i32 0, i32 7
  %1077 = load i32*, i32** %1076, align 8
  %1078 = getelementptr inbounds i32, i32* %1077, i64 1
  %1079 = load i32, i32* %1078, align 4
  %1080 = icmp slt i32 %1074, %1079
  br i1 %1080, label %1081, label %1109

1081:                                             ; preds = %1069
  %1082 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1083 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1082, i32 0, i32 7
  %1084 = load i32*, i32** %1083, align 8
  %1085 = getelementptr inbounds i32, i32* %1084, i64 1
  %1086 = load i32, i32* %1085, align 4
  %1087 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1088 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1087, i32 0, i32 14
  %1089 = load i32, i32* %1088, align 4
  %1090 = icmp sle i32 %1086, %1089
  br i1 %1090, label %1091, label %1109

1091:                                             ; preds = %1081
  %1092 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1093 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1092, i32 0, i32 7
  %1094 = load i32*, i32** %1093, align 8
  %1095 = getelementptr inbounds i32, i32* %1094, i64 0
  %1096 = load i32, i32* %1095, align 4
  %1097 = sub nsw i32 %1096, 1
  %1098 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1099 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1098, i32 0, i32 23
  store i32 %1097, i32* %1099, align 4
  %1100 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1101 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1100, i32 0, i32 7
  %1102 = load i32*, i32** %1101, align 8
  %1103 = getelementptr inbounds i32, i32* %1102, i64 1
  %1104 = load i32, i32* %1103, align 4
  %1105 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1106 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1105, i32 0, i32 15
  store i32 %1104, i32* %1106, align 8
  %1107 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1108 = call i32 @gotoxay(%struct.vc_data* %1107, i32 0, i32 0)
  br label %1109

1109:                                             ; preds = %1091, %1081, %1069
  br label %1291

1110:                                             ; preds = %628
  %1111 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1112 = call i32 @save_cur(%struct.vc_data* %1111)
  br label %1291

1113:                                             ; preds = %628
  %1114 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1115 = call i32 @restore_cur(%struct.vc_data* %1114)
  br label %1291

1116:                                             ; preds = %628
  %1117 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1118 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1119 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1118, i32 0, i32 7
  %1120 = load i32*, i32** %1119, align 8
  %1121 = getelementptr inbounds i32, i32* %1120, i64 0
  %1122 = load i32, i32* %1121, align 4
  %1123 = call i32 @csi_X(%struct.vc_data* %1117, i32 %1122)
  br label %1291

1124:                                             ; preds = %628
  %1125 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1126 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1127 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1126, i32 0, i32 7
  %1128 = load i32*, i32** %1127, align 8
  %1129 = getelementptr inbounds i32, i32* %1128, i64 0
  %1130 = load i32, i32* %1129, align 4
  %1131 = call i32 @csi_at(%struct.vc_data* %1125, i32 %1130)
  br label %1291

1132:                                             ; preds = %628
  %1133 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1134 = call i32 @setterm_command(%struct.vc_data* %1133)
  br label %1291

1135:                                             ; preds = %628
  br label %1291

1136:                                             ; preds = %131
  %1137 = load i8*, i8** @ESnormal, align 8
  %1138 = ptrtoint i8* %1137 to i32
  %1139 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1140 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1139, i32 0, i32 5
  store i32 %1138, i32* %1140, align 8
  %1141 = load i32, i32* %6, align 4
  switch i32 %1141, label %1148 [
    i32 64, label %1142
    i32 71, label %1145
    i32 56, label %1145
  ]

1142:                                             ; preds = %1136
  %1143 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1144 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1143, i32 0, i32 16
  store i32 0, i32* %1144, align 4
  br label %1291

1145:                                             ; preds = %1136, %1136
  %1146 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1147 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1146, i32 0, i32 16
  store i32 1, i32* %1147, align 4
  br label %1291

1148:                                             ; preds = %1136
  br label %1291

1149:                                             ; preds = %131
  %1150 = load i8*, i8** @ESnormal, align 8
  %1151 = ptrtoint i8* %1150 to i32
  %1152 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1153 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1152, i32 0, i32 5
  store i32 %1151, i32* %1153, align 8
  br label %1291

1154:                                             ; preds = %131
  %1155 = load i8*, i8** @ESnormal, align 8
  %1156 = ptrtoint i8* %1155 to i32
  %1157 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1158 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1157, i32 0, i32 5
  store i32 %1156, i32* %1158, align 8
  %1159 = load i32, i32* %6, align 4
  %1160 = icmp eq i32 %1159, 56
  br i1 %1160, label %1161, label %1187

1161:                                             ; preds = %1154
  %1162 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1163 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1162, i32 0, i32 17
  %1164 = load i32, i32* %1163, align 8
  %1165 = and i32 %1164, 65280
  %1166 = or i32 %1165, 69
  %1167 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1168 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1167, i32 0, i32 17
  store i32 %1166, i32* %1168, align 8
  %1169 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1170 = call i32 @csi_J(%struct.vc_data* %1169, i32 2)
  %1171 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1172 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1171, i32 0, i32 17
  %1173 = load i32, i32* %1172, align 8
  %1174 = and i32 %1173, 65280
  %1175 = or i32 %1174, 32
  %1176 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1177 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1176, i32 0, i32 17
  store i32 %1175, i32* %1177, align 8
  %1178 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1179 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1180 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1179, i32 0, i32 22
  %1181 = load i32, i32* %1180, align 8
  %1182 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1183 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1182, i32 0, i32 18
  %1184 = load i32, i32* %1183, align 4
  %1185 = sdiv i32 %1184, 2
  %1186 = call i32 @do_update_region(%struct.vc_data* %1178, i32 %1181, i32 %1185)
  br label %1187

1187:                                             ; preds = %1161, %1154
  br label %1291

1188:                                             ; preds = %131
  %1189 = load i32, i32* %6, align 4
  %1190 = icmp eq i32 %1189, 48
  br i1 %1190, label %1191, label %1195

1191:                                             ; preds = %1188
  %1192 = load i8*, i8** @GRAF_MAP, align 8
  %1193 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1194 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1193, i32 0, i32 21
  store i8* %1192, i8** %1194, align 8
  br label %1219

1195:                                             ; preds = %1188
  %1196 = load i32, i32* %6, align 4
  %1197 = icmp eq i32 %1196, 66
  br i1 %1197, label %1198, label %1202

1198:                                             ; preds = %1195
  %1199 = load i8*, i8** @LAT1_MAP, align 8
  %1200 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1201 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1200, i32 0, i32 21
  store i8* %1199, i8** %1201, align 8
  br label %1218

1202:                                             ; preds = %1195
  %1203 = load i32, i32* %6, align 4
  %1204 = icmp eq i32 %1203, 85
  br i1 %1204, label %1205, label %1209

1205:                                             ; preds = %1202
  %1206 = load i8*, i8** @IBMPC_MAP, align 8
  %1207 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1208 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1207, i32 0, i32 21
  store i8* %1206, i8** %1208, align 8
  br label %1217

1209:                                             ; preds = %1202
  %1210 = load i32, i32* %6, align 4
  %1211 = icmp eq i32 %1210, 75
  br i1 %1211, label %1212, label %1216

1212:                                             ; preds = %1209
  %1213 = load i8*, i8** @USER_MAP, align 8
  %1214 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1215 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1214, i32 0, i32 21
  store i8* %1213, i8** %1215, align 8
  br label %1216

1216:                                             ; preds = %1212, %1209
  br label %1217

1217:                                             ; preds = %1216, %1205
  br label %1218

1218:                                             ; preds = %1217, %1198
  br label %1219

1219:                                             ; preds = %1218, %1191
  %1220 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1221 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1220, i32 0, i32 3
  %1222 = load i32, i32* %1221, align 8
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1224, label %1232

1224:                                             ; preds = %1219
  %1225 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1226 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1225, i32 0, i32 21
  %1227 = load i8*, i8** %1226, align 8
  %1228 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1229 = call i8* @set_translate(i8* %1227, %struct.vc_data* %1228)
  %1230 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1231 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1230, i32 0, i32 20
  store i8* %1229, i8** %1231, align 8
  br label %1232

1232:                                             ; preds = %1224, %1219
  %1233 = load i8*, i8** @ESnormal, align 8
  %1234 = ptrtoint i8* %1233 to i32
  %1235 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1236 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1235, i32 0, i32 5
  store i32 %1234, i32* %1236, align 8
  br label %1291

1237:                                             ; preds = %131
  %1238 = load i32, i32* %6, align 4
  %1239 = icmp eq i32 %1238, 48
  br i1 %1239, label %1240, label %1244

1240:                                             ; preds = %1237
  %1241 = load i8*, i8** @GRAF_MAP, align 8
  %1242 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1243 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1242, i32 0, i32 19
  store i8* %1241, i8** %1243, align 8
  br label %1268

1244:                                             ; preds = %1237
  %1245 = load i32, i32* %6, align 4
  %1246 = icmp eq i32 %1245, 66
  br i1 %1246, label %1247, label %1251

1247:                                             ; preds = %1244
  %1248 = load i8*, i8** @LAT1_MAP, align 8
  %1249 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1250 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1249, i32 0, i32 19
  store i8* %1248, i8** %1250, align 8
  br label %1267

1251:                                             ; preds = %1244
  %1252 = load i32, i32* %6, align 4
  %1253 = icmp eq i32 %1252, 85
  br i1 %1253, label %1254, label %1258

1254:                                             ; preds = %1251
  %1255 = load i8*, i8** @IBMPC_MAP, align 8
  %1256 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1257 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1256, i32 0, i32 19
  store i8* %1255, i8** %1257, align 8
  br label %1266

1258:                                             ; preds = %1251
  %1259 = load i32, i32* %6, align 4
  %1260 = icmp eq i32 %1259, 75
  br i1 %1260, label %1261, label %1265

1261:                                             ; preds = %1258
  %1262 = load i8*, i8** @USER_MAP, align 8
  %1263 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1264 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1263, i32 0, i32 19
  store i8* %1262, i8** %1264, align 8
  br label %1265

1265:                                             ; preds = %1261, %1258
  br label %1266

1266:                                             ; preds = %1265, %1254
  br label %1267

1267:                                             ; preds = %1266, %1247
  br label %1268

1268:                                             ; preds = %1267, %1240
  %1269 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1270 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1269, i32 0, i32 3
  %1271 = load i32, i32* %1270, align 8
  %1272 = icmp eq i32 %1271, 1
  br i1 %1272, label %1273, label %1281

1273:                                             ; preds = %1268
  %1274 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1275 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1274, i32 0, i32 19
  %1276 = load i8*, i8** %1275, align 8
  %1277 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1278 = call i8* @set_translate(i8* %1276, %struct.vc_data* %1277)
  %1279 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1280 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1279, i32 0, i32 20
  store i8* %1278, i8** %1280, align 8
  br label %1281

1281:                                             ; preds = %1273, %1268
  %1282 = load i8*, i8** @ESnormal, align 8
  %1283 = ptrtoint i8* %1282 to i32
  %1284 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1285 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1284, i32 0, i32 5
  store i32 %1283, i32* %1285, align 8
  br label %1291

1286:                                             ; preds = %131
  %1287 = load i8*, i8** @ESnormal, align 8
  %1288 = ptrtoint i8* %1287 to i32
  %1289 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %1290 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %1289, i32 0, i32 5
  store i32 %1288, i32* %1290, align 8
  br label %1291

1291:                                             ; preds = %10, %24, %25, %70, %88, %90, %93, %105, %117, %122, %125, %128, %141, %144, %147, %150, %155, %158, %161, %178, %181, %184, %187, %190, %193, %196, %199, %203, %207, %233, %254, %411, %441, %454, %466, %477, %509, %512, %553, %589, %619, %625, %644, %669, %698, %727, %756, %785, %811, %837, %876, %889, %897, %905, %913, %921, %939, %1006, %1007, %1039, %1109, %1110, %1113, %1116, %1124, %1132, %1135, %1142, %1145, %1148, %1149, %1187, %1232, %1281, %1286
  ret void
}

declare dso_local i32 @kd_mksound(i32, i32) #1

declare dso_local i32 @bs(%struct.vc_data*) #1

declare dso_local i32 @notify_write(%struct.vc_data*, i8 signext) #1

declare dso_local i32 @lf(%struct.vc_data*) #1

declare dso_local i32 @is_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @cr(%struct.vc_data*) #1

declare dso_local i8* @set_translate(i8*, %struct.vc_data*) #1

declare dso_local i32 @del(%struct.vc_data*) #1

declare dso_local i32 @ri(%struct.vc_data*) #1

declare dso_local i32 @respond_ID(%struct.tty_struct*) #1

declare dso_local i32 @save_cur(%struct.vc_data*) #1

declare dso_local i32 @restore_cur(%struct.vc_data*) #1

declare dso_local i32 @reset_terminal(%struct.vc_data*, i32) #1

declare dso_local i32 @clr_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @set_kbd(%struct.vc_data*, i32) #1

declare dso_local i32 @reset_palette(%struct.vc_data*) #1

declare dso_local i32 @set_palette(%struct.vc_data*) #1

declare dso_local i32 @set_mode(%struct.vc_data*, i32) #1

declare dso_local i32 @clear_selection(...) #1

declare dso_local i32 @status_report(%struct.tty_struct*) #1

declare dso_local i32 @cursor_report(%struct.vc_data*, %struct.tty_struct*) #1

declare dso_local i32 @gotoxy(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @gotoxay(%struct.vc_data*, i32, i32) #1

declare dso_local i32 @csi_J(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_K(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_L(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_M(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_P(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_m(%struct.vc_data*) #1

declare dso_local i32 @setledstate(i64, i32) #1

declare dso_local i32 @csi_X(%struct.vc_data*, i32) #1

declare dso_local i32 @csi_at(%struct.vc_data*, i32) #1

declare dso_local i32 @setterm_command(%struct.vc_data*) #1

declare dso_local i32 @do_update_region(%struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
