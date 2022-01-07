; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_configure_r_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_rocket.c_configure_r_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ktermios* }
%struct.r_port = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_27__, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64 }
%struct.ktermios = type { i32 }

@CSIZE = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@rp_baud_base = common dso_local global i32* null, align 8
@CRTSCTS = common dso_local global i32 0, align 4
@DELTA_CTS = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@DELTA_CD = common dso_local global i32 0, align 4
@CD_ACT = common dso_local global i32 0, align 4
@STMRCVROVRH = common dso_local global i32 0, align 4
@STMFRAMEH = common dso_local global i32 0, align 4
@STMPARITYH = common dso_local global i32 0, align 4
@STMBREAKH = common dso_local global i32 0, align 4
@ROCKET_MODE_MASK = common dso_local global i32 0, align 4
@ROCKET_RTS_TOGGLE = common dso_local global i32 0, align 4
@ROCKET_TYPE_PC104 = common dso_local global i64 0, align 8
@InterfaceModeRS485 = common dso_local global i32 0, align 4
@InterfaceModeRS422 = common dso_local global i32 0, align 4
@InterfaceModeRS232T = common dso_local global i32 0, align 4
@InterfaceModeRS232 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.r_port*, %struct.ktermios*)* @configure_r_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_r_port(%struct.tty_struct* %0, %struct.r_port* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.r_port*, align 8
  %6 = alloca %struct.ktermios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.ktermios*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.r_port* %1, %struct.r_port** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 0
  %17 = load %struct.ktermios*, %struct.ktermios** %16, align 8
  store %struct.ktermios* %17, %struct.ktermios** %14, align 8
  %18 = load %struct.r_port*, %struct.r_port** %5, align 8
  %19 = getelementptr inbounds %struct.r_port, %struct.r_port* %18, i32 0, i32 6
  store %struct.TYPE_27__* %19, %struct.TYPE_27__** %13, align 8
  %20 = load %struct.ktermios*, %struct.ktermios** %14, align 8
  %21 = getelementptr inbounds %struct.ktermios, %struct.ktermios* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CSIZE, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CS8, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %30 = call i32 @sSetData8(%struct.TYPE_27__* %29)
  store i32 10, i32* %10, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %33 = call i32 @sSetData7(%struct.TYPE_27__* %32)
  store i32 9, i32* %10, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @CSTOPB, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %41 = call i32 @sSetStop2(%struct.TYPE_27__* %40)
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %47

44:                                               ; preds = %34
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %46 = call i32 @sSetStop1(%struct.TYPE_27__* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @PARENB, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %54 = call i32 @sEnParity(%struct.TYPE_27__* %53)
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PARODD, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %63 = call i32 @sSetOddParity(%struct.TYPE_27__* %62)
  br label %67

64:                                               ; preds = %52
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %66 = call i32 @sSetEvenParity(%struct.TYPE_27__* %65)
  br label %67

67:                                               ; preds = %64, %61
  br label %71

68:                                               ; preds = %47
  %69 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %70 = call i32 @sDisParity(%struct.TYPE_27__* %69)
  br label %71

71:                                               ; preds = %68, %67
  %72 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %73 = call i32 @tty_get_baud_rate(%struct.tty_struct* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  store i32 9600, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i32*, i32** @rp_baud_base, align 8
  %79 = load %struct.r_port*, %struct.r_port** %5, align 8
  %80 = getelementptr inbounds %struct.r_port, %struct.r_port* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %11, align 4
  %85 = ashr i32 %84, 1
  %86 = add nsw i32 %83, %85
  %87 = load i32, i32* %11, align 4
  %88 = sdiv i32 %86, %87
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp sge i32 %90, 8192
  br i1 %91, label %95, label %92

92:                                               ; preds = %77
  %93 = load i32, i32* %12, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %92, %77
  %96 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %97 = icmp ne %struct.ktermios* %96, null
  br i1 %97, label %98, label %114

98:                                               ; preds = %95
  %99 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %100 = call i32 @tty_termios_baud_rate(%struct.ktermios* %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 9600, i32* %11, align 4
  br label %104

104:                                              ; preds = %103, %98
  %105 = load i32*, i32** @rp_baud_base, align 8
  %106 = load %struct.r_port*, %struct.r_port** %5, align 8
  %107 = getelementptr inbounds %struct.r_port, %struct.r_port* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %11, align 4
  %112 = sdiv i32 %110, %111
  %113 = sub nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %104, %95, %92
  %115 = load i32, i32* %12, align 4
  %116 = icmp sge i32 %115, 8192
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117, %114
  store i32 9600, i32* %11, align 4
  %121 = load i32*, i32** @rp_baud_base, align 8
  %122 = load %struct.r_port*, %struct.r_port** %5, align 8
  %123 = getelementptr inbounds %struct.r_port, %struct.r_port* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = sdiv i32 %126, %127
  %129 = sub nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %120, %117
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %10, align 4
  %133 = sdiv i32 %131, %132
  %134 = load %struct.r_port*, %struct.r_port** %5, align 8
  %135 = getelementptr inbounds %struct.r_port, %struct.r_port* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @sSetBaud(%struct.TYPE_27__* %136, i32 %137)
  %139 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @tty_encode_baud_rate(%struct.tty_struct* %139, i32 %140, i32 %141)
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @CRTSCTS, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %130
  %148 = load i32, i32* @DELTA_CTS, align 4
  %149 = load %struct.r_port*, %struct.r_port** %5, align 8
  %150 = getelementptr inbounds %struct.r_port, %struct.r_port* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %154 = call i32 @sEnCTSFlowCtl(%struct.TYPE_27__* %153)
  br label %164

155:                                              ; preds = %130
  %156 = load i32, i32* @DELTA_CTS, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.r_port*, %struct.r_port** %5, align 8
  %159 = getelementptr inbounds %struct.r_port, %struct.r_port* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 4
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %163 = call i32 @sDisCTSFlowCtl(%struct.TYPE_27__* %162)
  br label %164

164:                                              ; preds = %155, %147
  %165 = load i32, i32* %7, align 4
  %166 = load i32, i32* @CLOCAL, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load i32, i32* @DELTA_CD, align 4
  %171 = xor i32 %170, -1
  %172 = load %struct.r_port*, %struct.r_port** %5, align 8
  %173 = getelementptr inbounds %struct.r_port, %struct.r_port* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, %171
  store i32 %175, i32* %173, align 4
  br label %202

176:                                              ; preds = %164
  %177 = load %struct.r_port*, %struct.r_port** %5, align 8
  %178 = getelementptr inbounds %struct.r_port, %struct.r_port* %177, i32 0, i32 7
  %179 = load i64, i64* %8, align 8
  %180 = call i32 @spin_lock_irqsave(i32* %178, i64 %179)
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %182 = call i32 @sGetChanStatus(%struct.TYPE_27__* %181)
  %183 = load i32, i32* @CD_ACT, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %176
  %187 = load %struct.r_port*, %struct.r_port** %5, align 8
  %188 = getelementptr inbounds %struct.r_port, %struct.r_port* %187, i32 0, i32 2
  store i32 1, i32* %188, align 4
  br label %192

189:                                              ; preds = %176
  %190 = load %struct.r_port*, %struct.r_port** %5, align 8
  %191 = getelementptr inbounds %struct.r_port, %struct.r_port* %190, i32 0, i32 2
  store i32 0, i32* %191, align 4
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32, i32* @DELTA_CD, align 4
  %194 = load %struct.r_port*, %struct.r_port** %5, align 8
  %195 = getelementptr inbounds %struct.r_port, %struct.r_port* %194, i32 0, i32 8
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.r_port*, %struct.r_port** %5, align 8
  %199 = getelementptr inbounds %struct.r_port, %struct.r_port* %198, i32 0, i32 7
  %200 = load i64, i64* %8, align 8
  %201 = call i32 @spin_unlock_irqrestore(i32* %199, i64 %200)
  br label %202

202:                                              ; preds = %192, %169
  %203 = load i32, i32* @STMRCVROVRH, align 4
  %204 = or i32 %203, 255
  %205 = load %struct.r_port*, %struct.r_port** %5, align 8
  %206 = getelementptr inbounds %struct.r_port, %struct.r_port* %205, i32 0, i32 3
  store i32 %204, i32* %206, align 8
  %207 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %208 = call i64 @I_INPCK(%struct.tty_struct* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %218

210:                                              ; preds = %202
  %211 = load i32, i32* @STMFRAMEH, align 4
  %212 = load i32, i32* @STMPARITYH, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.r_port*, %struct.r_port** %5, align 8
  %215 = getelementptr inbounds %struct.r_port, %struct.r_port* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  br label %218

218:                                              ; preds = %210, %202
  %219 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %220 = call i64 @I_BRKINT(%struct.tty_struct* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %224 = call i64 @I_PARMRK(%struct.tty_struct* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %222, %218
  %227 = load i32, i32* @STMBREAKH, align 4
  %228 = load %struct.r_port*, %struct.r_port** %5, align 8
  %229 = getelementptr inbounds %struct.r_port, %struct.r_port* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %227
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %226, %222
  %233 = load %struct.r_port*, %struct.r_port** %5, align 8
  %234 = getelementptr inbounds %struct.r_port, %struct.r_port* %233, i32 0, i32 4
  store i32 0, i32* %234, align 4
  %235 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %236 = call i64 @I_IGNPAR(%struct.tty_struct* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %246

238:                                              ; preds = %232
  %239 = load i32, i32* @STMFRAMEH, align 4
  %240 = load i32, i32* @STMPARITYH, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.r_port*, %struct.r_port** %5, align 8
  %243 = getelementptr inbounds %struct.r_port, %struct.r_port* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %238, %232
  %247 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %248 = call i64 @I_IGNBRK(%struct.tty_struct* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %266

250:                                              ; preds = %246
  %251 = load i32, i32* @STMBREAKH, align 4
  %252 = load %struct.r_port*, %struct.r_port** %5, align 8
  %253 = getelementptr inbounds %struct.r_port, %struct.r_port* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = or i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %257 = call i64 @I_IGNPAR(%struct.tty_struct* %256)
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %265

259:                                              ; preds = %250
  %260 = load i32, i32* @STMRCVROVRH, align 4
  %261 = load %struct.r_port*, %struct.r_port** %5, align 8
  %262 = getelementptr inbounds %struct.r_port, %struct.r_port* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = or i32 %263, %260
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %259, %250
  br label %266

266:                                              ; preds = %265, %246
  %267 = load %struct.r_port*, %struct.r_port** %5, align 8
  %268 = getelementptr inbounds %struct.r_port, %struct.r_port* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @ROCKET_MODE_MASK, align 4
  %271 = and i32 %269, %270
  store i32 %271, i32* %9, align 4
  %272 = load %struct.r_port*, %struct.r_port** %5, align 8
  %273 = getelementptr inbounds %struct.r_port, %struct.r_port* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @ROCKET_RTS_TOGGLE, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %266
  %279 = load i32, i32* %9, align 4
  %280 = icmp eq i32 %279, 128
  br i1 %280, label %281, label %284

281:                                              ; preds = %278, %266
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %283 = call i32 @sEnRTSToggle(%struct.TYPE_27__* %282)
  br label %287

284:                                              ; preds = %278
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %286 = call i32 @sDisRTSToggle(%struct.TYPE_27__* %285)
  br label %287

287:                                              ; preds = %284, %281
  %288 = load %struct.r_port*, %struct.r_port** %5, align 8
  %289 = getelementptr inbounds %struct.r_port, %struct.r_port* %288, i32 0, i32 6
  %290 = call i32 @sSetRTS(%struct.TYPE_27__* %289)
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_26__*, %struct.TYPE_26__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @ROCKET_TYPE_PC104, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %326

298:                                              ; preds = %287
  %299 = load i32, i32* %9, align 4
  switch i32 %299, label %309 [
    i32 128, label %300
    i32 129, label %304
    i32 130, label %308
  ]

300:                                              ; preds = %298
  %301 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %302 = load i32, i32* @InterfaceModeRS485, align 4
  %303 = call i32 @sSetInterfaceMode(%struct.TYPE_27__* %301, i32 %302)
  br label %325

304:                                              ; preds = %298
  %305 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %306 = load i32, i32* @InterfaceModeRS422, align 4
  %307 = call i32 @sSetInterfaceMode(%struct.TYPE_27__* %305, i32 %306)
  br label %325

308:                                              ; preds = %298
  br label %309

309:                                              ; preds = %298, %308
  %310 = load %struct.r_port*, %struct.r_port** %5, align 8
  %311 = getelementptr inbounds %struct.r_port, %struct.r_port* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @ROCKET_RTS_TOGGLE, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %309
  %317 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %318 = load i32, i32* @InterfaceModeRS232T, align 4
  %319 = call i32 @sSetInterfaceMode(%struct.TYPE_27__* %317, i32 %318)
  br label %324

320:                                              ; preds = %309
  %321 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %322 = load i32, i32* @InterfaceModeRS232, align 4
  %323 = call i32 @sSetInterfaceMode(%struct.TYPE_27__* %321, i32 %322)
  br label %324

324:                                              ; preds = %320, %316
  br label %325

325:                                              ; preds = %324, %304, %300
  br label %326

326:                                              ; preds = %325, %287
  ret void
}

declare dso_local i32 @sSetData8(%struct.TYPE_27__*) #1

declare dso_local i32 @sSetData7(%struct.TYPE_27__*) #1

declare dso_local i32 @sSetStop2(%struct.TYPE_27__*) #1

declare dso_local i32 @sSetStop1(%struct.TYPE_27__*) #1

declare dso_local i32 @sEnParity(%struct.TYPE_27__*) #1

declare dso_local i32 @sSetOddParity(%struct.TYPE_27__*) #1

declare dso_local i32 @sSetEvenParity(%struct.TYPE_27__*) #1

declare dso_local i32 @sDisParity(%struct.TYPE_27__*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @tty_termios_baud_rate(%struct.ktermios*) #1

declare dso_local i32 @sSetBaud(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @tty_encode_baud_rate(%struct.tty_struct*, i32, i32) #1

declare dso_local i32 @sEnCTSFlowCtl(%struct.TYPE_27__*) #1

declare dso_local i32 @sDisCTSFlowCtl(%struct.TYPE_27__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sGetChanStatus(%struct.TYPE_27__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @I_INPCK(%struct.tty_struct*) #1

declare dso_local i64 @I_BRKINT(%struct.tty_struct*) #1

declare dso_local i64 @I_PARMRK(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNPAR(%struct.tty_struct*) #1

declare dso_local i64 @I_IGNBRK(%struct.tty_struct*) #1

declare dso_local i32 @sEnRTSToggle(%struct.TYPE_27__*) #1

declare dso_local i32 @sDisRTSToggle(%struct.TYPE_27__*) #1

declare dso_local i32 @sSetRTS(%struct.TYPE_27__*) #1

declare dso_local i32 @sSetInterfaceMode(%struct.TYPE_27__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
