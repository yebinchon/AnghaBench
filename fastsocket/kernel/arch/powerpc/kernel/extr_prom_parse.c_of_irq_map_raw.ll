; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_irq_map_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_prom_parse.c_of_irq_map_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i8* }
%struct.of_irq = type { i32, %struct.device_node*, i32 }

@.str = private unnamed_addr constant [63 x i8] c"of_irq_map_raw: par=%s,intspec=[0x%08x 0x%08x...],ointsize=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c" -> no parent found !\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"of_irq_map_raw: ipar=%s, size=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c" -> addrsize=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"interrupt-controller\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" -> got it !\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"interrupt-map\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c" -> no map, getting parent\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"interrupt-map-mask\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c" -> no reg passed in when needed !\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c" -> match=%d (imaplen=%d)\0A\00", align 1
@of_irq_workarounds = common dso_local global i32 0, align 4
@OF_IMAP_NO_PHANDLE = common dso_local global i32 0, align 4
@of_irq_dflt_pic = common dso_local global %struct.device_node* null, align 8
@.str.13 = private unnamed_addr constant [29 x i8] c" -> imap parent not found !\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c" -> parent lacks #interrupt-cells !\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c" -> newintsize=%d, newaddrsize=%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c" -> imaplen=%d\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c" -> new parent: %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"<>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_irq_map_raw(%struct.device_node* %0, i32* %1, i32 %2, i32* %3, %struct.of_irq* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.of_irq*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca %struct.device_node*, align 8
  %14 = alloca %struct.device_node*, align 8
  %15 = alloca %struct.device_node*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.of_irq* %4, %struct.of_irq** %11, align 8
  store %struct.device_node* null, %struct.device_node** %14, align 8
  store %struct.device_node* null, %struct.device_node** %15, align 8
  store i32 1, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %28 = load %struct.device_node*, %struct.device_node** %7, align 8
  %29 = getelementptr inbounds %struct.device_node, %struct.device_node* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %33, i32 %36, i32 %37)
  %39 = load %struct.device_node*, %struct.device_node** %7, align 8
  %40 = call %struct.device_node* @of_node_get(%struct.device_node* %39)
  store %struct.device_node* %40, %struct.device_node** %12, align 8
  br label %41

41:                                               ; preds = %55, %5
  %42 = load %struct.device_node*, %struct.device_node** %12, align 8
  %43 = call i32* @of_get_property(%struct.device_node* %42, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %43, i32** %16, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %19, align 4
  br label %58

49:                                               ; preds = %41
  %50 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %50, %struct.device_node** %13, align 8
  %51 = load %struct.device_node*, %struct.device_node** %12, align 8
  %52 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %51)
  store %struct.device_node* %52, %struct.device_node** %12, align 8
  %53 = load %struct.device_node*, %struct.device_node** %13, align 8
  %54 = call i32 @of_node_put(%struct.device_node* %53)
  br label %55

55:                                               ; preds = %49
  %56 = load %struct.device_node*, %struct.device_node** %12, align 8
  %57 = icmp ne %struct.device_node* %56, null
  br i1 %57, label %41, label %58

58:                                               ; preds = %55, %46
  %59 = load %struct.device_node*, %struct.device_node** %12, align 8
  %60 = icmp eq %struct.device_node* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %368

63:                                               ; preds = %58
  %64 = load %struct.device_node*, %struct.device_node** %12, align 8
  %65 = getelementptr inbounds %struct.device_node, %struct.device_node* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* %19, align 4
  %68 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %19, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %377

75:                                               ; preds = %63
  %76 = load %struct.device_node*, %struct.device_node** %12, align 8
  %77 = call %struct.device_node* @of_node_get(%struct.device_node* %76)
  store %struct.device_node* %77, %struct.device_node** %14, align 8
  br label %78

78:                                               ; preds = %92, %75
  %79 = load %struct.device_node*, %struct.device_node** %14, align 8
  %80 = call i32* @of_get_property(%struct.device_node* %79, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %80, i32** %16, align 8
  %81 = load %struct.device_node*, %struct.device_node** %14, align 8
  %82 = call %struct.device_node* @of_get_parent(%struct.device_node* %81)
  store %struct.device_node* %82, %struct.device_node** %13, align 8
  %83 = load %struct.device_node*, %struct.device_node** %14, align 8
  %84 = call i32 @of_node_put(%struct.device_node* %83)
  %85 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %85, %struct.device_node** %14, align 8
  br label %86

86:                                               ; preds = %78
  %87 = load %struct.device_node*, %struct.device_node** %14, align 8
  %88 = icmp ne %struct.device_node* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %16, align 8
  %91 = icmp eq i32* %90, null
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i1 [ false, %86 ], [ %91, %89 ]
  br i1 %93, label %78, label %94

94:                                               ; preds = %92
  %95 = load %struct.device_node*, %struct.device_node** %14, align 8
  %96 = call i32 @of_node_put(%struct.device_node* %95)
  store %struct.device_node* null, %struct.device_node** %14, align 8
  %97 = load i32*, i32** %16, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %103

100:                                              ; preds = %94
  %101 = load i32*, i32** %16, align 8
  %102 = load i32, i32* %101, align 4
  br label %103

103:                                              ; preds = %100, %99
  %104 = phi i32 [ 2, %99 ], [ %102, %100 ]
  store i32 %104, i32* %20, align 4
  %105 = load i32, i32* %20, align 4
  %106 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %361, %103
  %108 = load %struct.device_node*, %struct.device_node** %12, align 8
  %109 = icmp ne %struct.device_node* %108, null
  br i1 %109, label %110, label %367

110:                                              ; preds = %107
  %111 = load %struct.device_node*, %struct.device_node** %12, align 8
  %112 = call i32* @of_get_property(%struct.device_node* %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32* null)
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %116 = load %struct.of_irq*, %struct.of_irq** %11, align 8
  %117 = getelementptr inbounds %struct.of_irq, %struct.of_irq* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %19, align 4
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @memcpy(i32 %118, i32* %119, i32 %123)
  %125 = load i32, i32* %19, align 4
  %126 = load %struct.of_irq*, %struct.of_irq** %11, align 8
  %127 = getelementptr inbounds %struct.of_irq, %struct.of_irq* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.device_node*, %struct.device_node** %12, align 8
  %129 = load %struct.of_irq*, %struct.of_irq** %11, align 8
  %130 = getelementptr inbounds %struct.of_irq, %struct.of_irq* %129, i32 0, i32 1
  store %struct.device_node* %128, %struct.device_node** %130, align 8
  %131 = load %struct.device_node*, %struct.device_node** %14, align 8
  %132 = call i32 @of_node_put(%struct.device_node* %131)
  store i32 0, i32* %6, align 4
  br label %377

133:                                              ; preds = %110
  %134 = load %struct.device_node*, %struct.device_node** %12, align 8
  %135 = call i32* @of_get_property(%struct.device_node* %134, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32* %23)
  store i32* %135, i32** %17, align 8
  %136 = load i32*, i32** %17, align 8
  %137 = icmp eq i32* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %140 = load %struct.device_node*, %struct.device_node** %12, align 8
  %141 = call %struct.device_node* @of_irq_find_parent(%struct.device_node* %140)
  store %struct.device_node* %141, %struct.device_node** %15, align 8
  br label %353

142:                                              ; preds = %133
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = udiv i64 %144, 4
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %23, align 4
  %147 = load %struct.device_node*, %struct.device_node** %12, align 8
  %148 = call i32* @of_get_property(%struct.device_node* %147, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32* null)
  store i32* %148, i32** %18, align 8
  %149 = load i32*, i32** %10, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %142
  %152 = load i32, i32* %20, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  br label %368

156:                                              ; preds = %151, %142
  store i32 0, i32* %24, align 4
  br label %157

157:                                              ; preds = %318, %156
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %19, align 4
  %161 = add nsw i32 %159, %160
  %162 = add nsw i32 %161, 1
  %163 = icmp sgt i32 %158, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load i32, i32* %24, align 4
  %166 = icmp ne i32 %165, 0
  %167 = xor i1 %166, true
  br label %168

168:                                              ; preds = %164, %157
  %169 = phi i1 [ false, %157 ], [ %167, %164 ]
  br i1 %169, label %170, label %332

170:                                              ; preds = %168
  store i32 1, i32* %24, align 4
  store i32 0, i32* %25, align 4
  br label %171

171:                                              ; preds = %207, %170
  %172 = load i32, i32* %25, align 4
  %173 = load i32, i32* %20, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i32, i32* %24, align 4
  %177 = icmp ne i32 %176, 0
  br label %178

178:                                              ; preds = %175, %171
  %179 = phi i1 [ false, %171 ], [ %177, %175 ]
  br i1 %179, label %180, label %210

180:                                              ; preds = %178
  %181 = load i32*, i32** %18, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i32*, i32** %18, align 8
  %185 = load i32, i32* %25, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  br label %190

189:                                              ; preds = %180
  br label %190

190:                                              ; preds = %189, %183
  %191 = phi i32 [ %188, %183 ], [ -1, %189 ]
  store i32 %191, i32* %26, align 4
  %192 = load i32*, i32** %10, align 8
  %193 = load i32, i32* %25, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %17, align 8
  %198 = load i32, i32* %25, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = xor i32 %196, %201
  %203 = load i32, i32* %26, align 4
  %204 = and i32 %202, %203
  %205 = icmp eq i32 %204, 0
  %206 = zext i1 %205 to i32
  store i32 %206, i32* %24, align 4
  br label %207

207:                                              ; preds = %190
  %208 = load i32, i32* %25, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %25, align 4
  br label %171

210:                                              ; preds = %178
  br label %211

211:                                              ; preds = %251, %210
  %212 = load i32, i32* %25, align 4
  %213 = load i32, i32* %20, align 4
  %214 = load i32, i32* %19, align 4
  %215 = add nsw i32 %213, %214
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i32, i32* %24, align 4
  %219 = icmp ne i32 %218, 0
  br label %220

220:                                              ; preds = %217, %211
  %221 = phi i1 [ false, %211 ], [ %219, %217 ]
  br i1 %221, label %222, label %254

222:                                              ; preds = %220
  %223 = load i32*, i32** %18, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i32*, i32** %18, align 8
  %227 = load i32, i32* %25, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  br label %232

231:                                              ; preds = %222
  br label %232

232:                                              ; preds = %231, %225
  %233 = phi i32 [ %230, %225 ], [ -1, %231 ]
  store i32 %233, i32* %27, align 4
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* %25, align 4
  %236 = load i32, i32* %20, align 4
  %237 = sub nsw i32 %235, %236
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %234, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = load i32*, i32** %17, align 8
  %242 = load i32, i32* %25, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = xor i32 %240, %245
  %247 = load i32, i32* %27, align 4
  %248 = and i32 %246, %247
  %249 = icmp eq i32 %248, 0
  %250 = zext i1 %249 to i32
  store i32 %250, i32* %24, align 4
  br label %251

251:                                              ; preds = %232
  %252 = load i32, i32* %25, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %25, align 4
  br label %211

254:                                              ; preds = %220
  %255 = load i32, i32* %20, align 4
  %256 = load i32, i32* %19, align 4
  %257 = add nsw i32 %255, %256
  %258 = load i32*, i32** %17, align 8
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32* %260, i32** %17, align 8
  %261 = load i32, i32* %20, align 4
  %262 = load i32, i32* %19, align 4
  %263 = add nsw i32 %261, %262
  %264 = load i32, i32* %23, align 4
  %265 = sub nsw i32 %264, %263
  store i32 %265, i32* %23, align 4
  %266 = load i32, i32* %24, align 4
  %267 = load i32, i32* %23, align 4
  %268 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i32 %266, i32 %267)
  %269 = load i32, i32* @of_irq_workarounds, align 4
  %270 = load i32, i32* @OF_IMAP_NO_PHANDLE, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %254
  %274 = load %struct.device_node*, %struct.device_node** @of_irq_dflt_pic, align 8
  %275 = call %struct.device_node* @of_node_get(%struct.device_node* %274)
  store %struct.device_node* %275, %struct.device_node** %15, align 8
  br label %280

276:                                              ; preds = %254
  %277 = load i32*, i32** %17, align 8
  %278 = load i32, i32* %277, align 4
  %279 = call %struct.device_node* @of_find_node_by_phandle(i32 %278)
  store %struct.device_node* %279, %struct.device_node** %15, align 8
  br label %280

280:                                              ; preds = %276, %273
  %281 = load i32*, i32** %17, align 8
  %282 = getelementptr inbounds i32, i32* %281, i32 1
  store i32* %282, i32** %17, align 8
  %283 = load i32, i32* %23, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %23, align 4
  %285 = load %struct.device_node*, %struct.device_node** %15, align 8
  %286 = icmp eq %struct.device_node* %285, null
  br i1 %286, label %287, label %289

287:                                              ; preds = %280
  %288 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %368

289:                                              ; preds = %280
  %290 = load %struct.device_node*, %struct.device_node** %15, align 8
  %291 = call i32* @of_get_property(%struct.device_node* %290, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i32* %291, i32** %16, align 8
  %292 = load i32*, i32** %16, align 8
  %293 = icmp eq i32* %292, null
  br i1 %293, label %294, label %296

294:                                              ; preds = %289
  %295 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %368

296:                                              ; preds = %289
  %297 = load i32*, i32** %16, align 8
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %21, align 4
  %299 = load %struct.device_node*, %struct.device_node** %15, align 8
  %300 = call i32* @of_get_property(%struct.device_node* %299, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32* null)
  store i32* %300, i32** %16, align 8
  %301 = load i32*, i32** %16, align 8
  %302 = icmp eq i32* %301, null
  br i1 %302, label %303, label %304

303:                                              ; preds = %296
  br label %307

304:                                              ; preds = %296
  %305 = load i32*, i32** %16, align 8
  %306 = load i32, i32* %305, align 4
  br label %307

307:                                              ; preds = %304, %303
  %308 = phi i32 [ 0, %303 ], [ %306, %304 ]
  store i32 %308, i32* %22, align 4
  %309 = load i32, i32* %21, align 4
  %310 = load i32, i32* %22, align 4
  %311 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %309, i32 %310)
  %312 = load i32, i32* %23, align 4
  %313 = load i32, i32* %22, align 4
  %314 = load i32, i32* %21, align 4
  %315 = add nsw i32 %313, %314
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %307
  br label %368

318:                                              ; preds = %307
  %319 = load i32, i32* %22, align 4
  %320 = load i32, i32* %21, align 4
  %321 = add nsw i32 %319, %320
  %322 = load i32*, i32** %17, align 8
  %323 = sext i32 %321 to i64
  %324 = getelementptr inbounds i32, i32* %322, i64 %323
  store i32* %324, i32** %17, align 8
  %325 = load i32, i32* %22, align 4
  %326 = load i32, i32* %21, align 4
  %327 = add nsw i32 %325, %326
  %328 = load i32, i32* %23, align 4
  %329 = sub nsw i32 %328, %327
  store i32 %329, i32* %23, align 4
  %330 = load i32, i32* %23, align 4
  %331 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i32 %330)
  br label %157

332:                                              ; preds = %168
  %333 = load i32, i32* %24, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %332
  br label %368

336:                                              ; preds = %332
  %337 = load %struct.device_node*, %struct.device_node** %14, align 8
  %338 = call i32 @of_node_put(%struct.device_node* %337)
  %339 = load %struct.device_node*, %struct.device_node** %15, align 8
  %340 = call %struct.device_node* @of_node_get(%struct.device_node* %339)
  store %struct.device_node* %340, %struct.device_node** %14, align 8
  %341 = load i32, i32* %22, align 4
  store i32 %341, i32* %20, align 4
  %342 = load i32, i32* %21, align 4
  store i32 %342, i32* %19, align 4
  %343 = load i32*, i32** %17, align 8
  %344 = load i32, i32* %19, align 4
  %345 = sext i32 %344 to i64
  %346 = sub i64 0, %345
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  store i32* %347, i32** %8, align 8
  %348 = load i32*, i32** %8, align 8
  %349 = load i32, i32* %20, align 4
  %350 = sext i32 %349 to i64
  %351 = sub i64 0, %350
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  store i32* %352, i32** %10, align 8
  br label %353

353:                                              ; preds = %336, %138
  %354 = load %struct.device_node*, %struct.device_node** %15, align 8
  %355 = icmp ne %struct.device_node* %354, null
  br i1 %355, label %356, label %360

356:                                              ; preds = %353
  %357 = load %struct.device_node*, %struct.device_node** %15, align 8
  %358 = getelementptr inbounds %struct.device_node, %struct.device_node* %357, i32 0, i32 0
  %359 = load i8*, i8** %358, align 8
  br label %361

360:                                              ; preds = %353
  br label %361

361:                                              ; preds = %360, %356
  %362 = phi i8* [ %359, %356 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), %360 ]
  %363 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* %362)
  %364 = load %struct.device_node*, %struct.device_node** %12, align 8
  %365 = call i32 @of_node_put(%struct.device_node* %364)
  %366 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %366, %struct.device_node** %12, align 8
  store %struct.device_node* null, %struct.device_node** %15, align 8
  br label %107

367:                                              ; preds = %107
  br label %368

368:                                              ; preds = %367, %335, %317, %294, %287, %154, %61
  %369 = load %struct.device_node*, %struct.device_node** %12, align 8
  %370 = call i32 @of_node_put(%struct.device_node* %369)
  %371 = load %struct.device_node*, %struct.device_node** %14, align 8
  %372 = call i32 @of_node_put(%struct.device_node* %371)
  %373 = load %struct.device_node*, %struct.device_node** %15, align 8
  %374 = call i32 @of_node_put(%struct.device_node* %373)
  %375 = load i32, i32* @EINVAL, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %6, align 4
  br label %377

377:                                              ; preds = %368, %114, %72
  %378 = load i32, i32* %6, align 4
  ret i32 %378
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_irq_find_parent(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local %struct.device_node* @of_find_node_by_phandle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
