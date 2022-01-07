; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adbhid.c_adbhid_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/macintosh/extr_adbhid.c_adbhid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32* }
%struct.adb_request = type { i32, i32* }

@ADB_MOUSE = common dso_local global i32 0, align 4
@mouse_ids = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@adbhid_mouse_input = common dso_local global i32 0, align 4
@ADB_KEYBOARD = common dso_local global i32 0, align 4
@keyboard_ids = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@adbhid_keyboard_input = common dso_local global i32 0, align 4
@ADB_MISC = common dso_local global i32 0, align 4
@buttons_ids = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@adbhid_buttons_input = common dso_local global i32 0, align 4
@ADBREQ_SYNC = common dso_local global i32 0, align 4
@KEYB_LEDREG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"ADB keyboard at %d, handler set to 3\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ADB keyboard at %d, handler 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ADB mouse at %d, handler set to 4\00", align 1
@ADBMOUSE_EXTENDED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"ADB mouse at %d, handler set to 0x2F\00", align 1
@ADBMOUSE_MICROSPEED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"ADB mouse at %d, handler set to 0x42\00", align 1
@ADBMOUSE_TRACKBALLPRO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"ADB mouse at %d, handler set to 0x66\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"ADB mouse at %d, handler set to 0x5F\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"ADB mouse at %d, handler set to 3\00", align 1
@ADBMOUSE_MS_A3 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"ADB mouse at %d, handler set to 2\00", align 1
@ADBMOUSE_STANDARD_200 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"ADB mouse at %d, handler 1\00", align 1
@ADBMOUSE_STANDARD_100 = common dso_local global i32 0, align 4
@ADBREQ_REPLY = common dso_local global i32 0, align 4
@ADBMOUSE_TRACKBALL = common dso_local global i32 0, align 4
@ADBMOUSE_TRACKPAD = common dso_local global i32 0, align 4
@ADBMOUSE_TURBOMOUSE5 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [55 x i8] c"\0AADB MacAlly 2-button mouse at %d, handler set to 0x42\00", align 1
@ADBMOUSE_MACALLY2 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @adbhid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adbhid_probe() #0 {
  %1 = alloca %struct.adb_request, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @ADB_MOUSE, align 4
  %12 = load i32, i32* @adbhid_mouse_input, align 4
  %13 = call i32 @adb_register(i32 %11, i32 0, %struct.TYPE_5__* @mouse_ids, i32 %12)
  %14 = load i32, i32* @ADB_KEYBOARD, align 4
  %15 = load i32, i32* @adbhid_keyboard_input, align 4
  %16 = call i32 @adb_register(i32 %14, i32 0, %struct.TYPE_5__* @keyboard_ids, i32 %15)
  %17 = load i32, i32* @ADB_MISC, align 4
  %18 = load i32, i32* @adbhid_buttons_input, align 4
  %19 = call i32 @adb_register(i32 %17, i32 0, %struct.TYPE_5__* @buttons_ids, i32 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %56, %0
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @keyboard_ids, i32 0, i32 0), align 8
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @keyboard_ids, i32 0, i32 1), align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @adb_get_infos(i32 %30, i32* %3, i32* %4)
  %32 = load i32, i32* @ADBREQ_SYNC, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @KEYB_LEDREG, align 4
  %35 = call i32 @ADB_WRITEREG(i32 %33, i32 %34)
  %36 = call i32 (%struct.adb_request*, i32*, i32, i32, i32, ...) @adb_request(%struct.adb_request* %1, i32* null, i32 %32, i32 3, i32 %35, i32 255, i32 255)
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @adb_try_handler_change(i32 %37, i32 3)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %24
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %46

43:                                               ; preds = %24
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @adb_get_infos(i32 %47, i32* %3, i32* %5)
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @adbhid_input_reregister(i32 %49, i32 %50, i32 %51, i32 %52, i32 0)
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %2, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %2, align 4
  br label %20

59:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %79, %59
  %61 = load i32, i32* %2, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buttons_ids, i32 0, i32 0), align 8
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @buttons_ids, i32 0, i32 1), align 8
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @adb_get_infos(i32 %70, i32* %3, i32* %4)
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @adbhid_input_reregister(i32 %72, i32 %73, i32 %74, i32 %75, i32 0)
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %64
  %80 = load i32, i32* %2, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %2, align 4
  br label %60

82:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %333, %82
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mouse_ids, i32 0, i32 0), align 8
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %336

87:                                               ; preds = %83
  %88 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @mouse_ids, i32 0, i32 1), align 8
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @adb_get_infos(i32 %93, i32* %3, i32* %4)
  %95 = load i32, i32* %9, align 4
  %96 = call i64 @adb_try_handler_change(i32 %95, i32 4)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load i32, i32* %9, align 4
  %100 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ADBMOUSE_EXTENDED, align 4
  store i32 %101, i32* %10, align 4
  br label %160

102:                                              ; preds = %87
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @adb_try_handler_change(i32 %103, i32 47)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* @ADBMOUSE_MICROSPEED, align 4
  store i32 %109, i32* %10, align 4
  br label %159

110:                                              ; preds = %102
  %111 = load i32, i32* %9, align 4
  %112 = call i64 @adb_try_handler_change(i32 %111, i32 66)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @ADBMOUSE_TRACKBALLPRO, align 4
  store i32 %117, i32* %10, align 4
  br label %158

118:                                              ; preds = %110
  %119 = load i32, i32* %9, align 4
  %120 = call i64 @adb_try_handler_change(i32 %119, i32 102)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @ADBMOUSE_MICROSPEED, align 4
  store i32 %125, i32* %10, align 4
  br label %157

126:                                              ; preds = %118
  %127 = load i32, i32* %9, align 4
  %128 = call i64 @adb_try_handler_change(i32 %127, i32 95)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* @ADBMOUSE_MICROSPEED, align 4
  store i32 %133, i32* %10, align 4
  br label %156

134:                                              ; preds = %126
  %135 = load i32, i32* %9, align 4
  %136 = call i64 @adb_try_handler_change(i32 %135, i32 3)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @ADBMOUSE_MS_A3, align 4
  store i32 %141, i32* %10, align 4
  br label %155

142:                                              ; preds = %134
  %143 = load i32, i32* %9, align 4
  %144 = call i64 @adb_try_handler_change(i32 %143, i32 2)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, i32* %9, align 4
  %148 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %147)
  %149 = load i32, i32* @ADBMOUSE_STANDARD_200, align 4
  store i32 %149, i32* %10, align 4
  br label %154

150:                                              ; preds = %142
  %151 = load i32, i32* %9, align 4
  %152 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %151)
  %153 = load i32, i32* @ADBMOUSE_STANDARD_100, align 4
  store i32 %153, i32* %10, align 4
  br label %154

154:                                              ; preds = %150, %146
  br label %155

155:                                              ; preds = %154, %138
  br label %156

156:                                              ; preds = %155, %130
  br label %157

157:                                              ; preds = %156, %122
  br label %158

158:                                              ; preds = %157, %114
  br label %159

159:                                              ; preds = %158, %106
  br label %160

160:                                              ; preds = %159, %98
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* @ADBMOUSE_TRACKBALLPRO, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* @ADBMOUSE_MICROSPEED, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %164, %160
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @init_microspeed(i32 %169)
  br label %321

171:                                              ; preds = %164
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* @ADBMOUSE_MS_A3, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* %9, align 4
  %177 = call i32 @init_ms_a3(i32 %176)
  br label %320

178:                                              ; preds = %171
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @ADBMOUSE_EXTENDED, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %319

182:                                              ; preds = %178
  %183 = load i32, i32* @ADBREQ_SYNC, align 4
  %184 = load i32, i32* @ADBREQ_REPLY, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @ADB_READREG(i32 %186, i32 1)
  %188 = call i32 (%struct.adb_request*, i32*, i32, i32, i32, ...) @adb_request(%struct.adb_request* %1, i32* null, i32 %185, i32 1, i32 %187)
  %189 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %182
  %193 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 154
  br i1 %197, label %198, label %214

198:                                              ; preds = %192
  %199 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 33
  br i1 %203, label %210, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 2
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 32
  br i1 %209, label %210, label %214

210:                                              ; preds = %204, %198
  %211 = load i32, i32* @ADBMOUSE_TRACKBALL, align 4
  store i32 %211, i32* %10, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @init_trackball(i32 %212)
  br label %318

214:                                              ; preds = %204, %192, %182
  %215 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp sge i32 %216, 4
  br i1 %217, label %218, label %246

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 116
  br i1 %223, label %224, label %246

224:                                              ; preds = %218
  %225 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 112
  br i1 %229, label %230, label %246

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 3
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 97
  br i1 %235, label %236, label %246

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 4
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 100
  br i1 %241, label %242, label %246

242:                                              ; preds = %236
  %243 = load i32, i32* @ADBMOUSE_TRACKPAD, align 4
  store i32 %243, i32* %10, align 4
  %244 = load i32, i32* %9, align 4
  %245 = call i32 @init_trackpad(i32 %244)
  br label %317

246:                                              ; preds = %236, %230, %224, %218, %214
  %247 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = icmp sge i32 %248, 4
  br i1 %249, label %250, label %278

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 75
  br i1 %255, label %256, label %278

256:                                              ; preds = %250
  %257 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 2
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %260, 77
  br i1 %261, label %262, label %278

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 76
  br i1 %267, label %268, label %278

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 4
  %272 = load i32, i32* %271, align 4
  %273 = icmp eq i32 %272, 49
  br i1 %273, label %274, label %278

274:                                              ; preds = %268
  %275 = load i32, i32* @ADBMOUSE_TURBOMOUSE5, align 4
  store i32 %275, i32* %10, align 4
  %276 = load i32, i32* %9, align 4
  %277 = call i32 @init_turbomouse(i32 %276)
  br label %316

278:                                              ; preds = %268, %262, %256, %250, %246
  %279 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = icmp eq i32 %280, 9
  br i1 %281, label %282, label %315

282:                                              ; preds = %278
  %283 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp eq i32 %286, 75
  br i1 %287, label %288, label %315

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %290 = load i32*, i32** %289, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 2
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, 79
  br i1 %293, label %294, label %315

294:                                              ; preds = %288
  %295 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 3
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 73
  br i1 %299, label %300, label %315

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.adb_request, %struct.adb_request* %1, i32 0, i32 1
  %302 = load i32*, i32** %301, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 4
  %304 = load i32, i32* %303, align 4
  %305 = icmp eq i32 %304, 84
  br i1 %305, label %306, label %315

306:                                              ; preds = %300
  %307 = load i32, i32* %9, align 4
  %308 = call i64 @adb_try_handler_change(i32 %307, i32 66)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load i32, i32* %9, align 4
  %312 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %311)
  %313 = load i32, i32* @ADBMOUSE_MACALLY2, align 4
  store i32 %313, i32* %10, align 4
  br label %314

314:                                              ; preds = %310, %306
  br label %315

315:                                              ; preds = %314, %300, %294, %288, %282, %278
  br label %316

316:                                              ; preds = %315, %274
  br label %317

317:                                              ; preds = %316, %242
  br label %318

318:                                              ; preds = %317, %210
  br label %319

319:                                              ; preds = %318, %178
  br label %320

320:                                              ; preds = %319, %175
  br label %321

321:                                              ; preds = %320, %168
  %322 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  %323 = load i32, i32* %9, align 4
  %324 = call i32 @adb_get_infos(i32 %323, i32* %3, i32* %5)
  %325 = load i32, i32* %9, align 4
  %326 = load i32, i32* %3, align 4
  %327 = load i32, i32* %4, align 4
  %328 = load i32, i32* %5, align 4
  %329 = load i32, i32* %10, align 4
  %330 = call i32 @adbhid_input_reregister(i32 %325, i32 %326, i32 %327, i32 %328, i32 %329)
  %331 = load i32, i32* %6, align 4
  %332 = or i32 %331, %330
  store i32 %332, i32* %6, align 4
  br label %333

333:                                              ; preds = %321
  %334 = load i32, i32* %2, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %2, align 4
  br label %83

336:                                              ; preds = %83
  %337 = load i32, i32* %6, align 4
  %338 = call i32 @adbhid_input_devcleanup(i32 %337)
  ret void
}

declare dso_local i32 @adb_register(i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @adb_get_infos(i32, i32*, i32*) #1

declare dso_local i32 @adb_request(%struct.adb_request*, i32*, i32, i32, i32, ...) #1

declare dso_local i32 @ADB_WRITEREG(i32, i32) #1

declare dso_local i64 @adb_try_handler_change(i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @adbhid_input_reregister(i32, i32, i32, i32, i32) #1

declare dso_local i32 @init_microspeed(i32) #1

declare dso_local i32 @init_ms_a3(i32) #1

declare dso_local i32 @ADB_READREG(i32, i32) #1

declare dso_local i32 @init_trackball(i32) #1

declare dso_local i32 @init_trackpad(i32) #1

declare dso_local i32 @init_turbomouse(i32) #1

declare dso_local i32 @adbhid_input_devcleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
