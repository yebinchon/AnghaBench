; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_group_optimization.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_group_optimization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64*, i32, i64*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_11__*, i64 }

@MAX_CIP_TYPES = common dso_local global i32 0, align 4
@MAX_APPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"No group optimization\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Group optimization = 0x%x...\00", align 1
@max_appl = common dso_local global i32 0, align 4
@application = common dso_local global %struct.TYPE_11__* null, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Multi-Instance capable, no optimization required\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Appl 0x%x is busy\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Appl 0x%x has inc. call pending\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Field overflow appl 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Group 0x%x found with appl 0x%x, CIP=0x%lx\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"New Group 0x%x established with appl 0x%x, CIP=0x%lx\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"OverflowGroup 0x%x, valid appl = 0x%x, call enabled\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Group 0x%x, valid appl = 0x%x\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"Appl 0x%x is member of group 0x%x, no call\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_9__*)* @group_optimization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @group_optimization(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %16 = load i32, i32* @MAX_CIP_TYPES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32, i32* @MAX_CIP_TYPES, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %23 = load i32, i32* @MAX_APPL, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %13, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = call i32 @set_group_ind_mask(%struct.TYPE_9__* %26)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @dbug(i32 1, i32 %33)
  store i32 1, i32* %15, align 4
  br label %392

35:                                               ; preds = %2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = call i32 @dbug(i32 1, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %52, %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @MAX_CIP_TYPES, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %19, i64 %47
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %22, i64 %50
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %41

55:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %64, %55
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MAX_APPL, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %25, i64 %62
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %56

67:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %106, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @max_appl, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %109

72:                                               ; preds = %68
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @application, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %72
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** @application, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %105

88:                                               ; preds = %80
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %88
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %104 = call i32 @dbug(i32 1, i32 %103)
  store i32 1, i32* %15, align 4
  br label %392

105:                                              ; preds = %97, %88, %80, %72
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %68

109:                                              ; preds = %68
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %307, %109
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @max_appl, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %310

114:                                              ; preds = %110
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** @application, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %306

122:                                              ; preds = %114
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i64*, i64** %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %306

131:                                              ; preds = %122
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %181, %131
  %133 = load i32, i32* %7, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp slt i32 %133, %136
  br i1 %137, label %138, label %184

138:                                              ; preds = %132
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = load i32, i32* %7, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %180

148:                                              ; preds = %138
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i64 %153
  store %struct.TYPE_9__* %154, %struct.TYPE_9__** %14, align 8
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** @application, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i64 %160
  %162 = icmp eq %struct.TYPE_11__* %157, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %148
  store i32 1, i32* %8, align 4
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  %166 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  %167 = call i32 @dbug(i32 1, i32 %166)
  br label %179

168:                                              ; preds = %148
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %170 = load i32, i32* %5, align 4
  %171 = call i64 @test_c_ind_mask_bit(%struct.TYPE_9__* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  store i32 1, i32* %8, align 4
  %174 = load i32, i32* %5, align 4
  %175 = add nsw i32 %174, 1
  %176 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %175)
  %177 = call i32 @dbug(i32 1, i32 %176)
  br label %178

178:                                              ; preds = %173, %168
  br label %179

179:                                              ; preds = %178, %163
  br label %180

180:                                              ; preds = %179, %138
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %132

184:                                              ; preds = %132
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %185

185:                                              ; preds = %302, %184
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @MAX_CIP_TYPES, align 4
  %188 = icmp sle i32 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %189
  %193 = load i32, i32* %9, align 4
  %194 = icmp ne i32 %193, 0
  %195 = xor i1 %194, true
  br label %196

196:                                              ; preds = %192, %189, %185
  %197 = phi i1 [ false, %189 ], [ false, %185 ], [ %195, %192 ]
  br i1 %197, label %198, label %305

198:                                              ; preds = %196
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @MAX_CIP_TYPES, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %198
  %203 = load i32, i32* @MAX_CIP_TYPES, align 4
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %25, i64 %205
  store i32 %203, i32* %206, align 4
  store i32 1, i32* %9, align 4
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  %209 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %208)
  %210 = call i32 @dbug(i32 1, i32 %209)
  br label %301

211:                                              ; preds = %198
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64, i64* %19, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = load i64*, i64** %217, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i64, i64* %218, i64 %220
  %222 = load i64, i64* %221, align 8
  %223 = icmp eq i64 %215, %222
  br i1 %223, label %224, label %255

224:                                              ; preds = %211
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %22, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 3
  %231 = load i64*, i64** %230, align 8
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i64, i64* %231, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = icmp eq i64 %228, %235
  br i1 %236, label %237, label %255

237:                                              ; preds = %224
  %238 = load i32, i32* %6, align 4
  %239 = or i32 %238, 128
  %240 = load i32, i32* %5, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %25, i64 %241
  store i32 %239, i32* %242, align 4
  store i32 1, i32* %9, align 4
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %25, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %5, align 4
  %248 = add nsw i32 %247, 1
  %249 = load i32, i32* %6, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %19, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %246, i32 %248, i64 %252)
  %254 = call i32 @dbug(i32 1, i32 %253)
  br label %300

255:                                              ; preds = %224, %211
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i64, i64* %19, i64 %257
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %299, label %261

261:                                              ; preds = %255
  %262 = load i32, i32* %6, align 4
  %263 = or i32 %262, 128
  %264 = load i32, i32* %5, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %25, i64 %265
  store i32 %263, i32* %266, align 4
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 1
  %269 = load i64*, i64** %268, align 8
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i64, i64* %269, i64 %271
  %273 = load i64, i64* %272, align 8
  %274 = load i32, i32* %6, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i64, i64* %19, i64 %275
  store i64 %273, i64* %276, align 8
  %277 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 3
  %279 = load i64*, i64** %278, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %279, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = load i32, i32* %6, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %22, i64 %285
  store i64 %283, i64* %286, align 8
  store i32 1, i32* %9, align 4
  %287 = load i32, i32* %5, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %25, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %5, align 4
  %292 = add nsw i32 %291, 1
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i64, i64* %19, i64 %294
  %296 = load i64, i64* %295, align 8
  %297 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %290, i32 %292, i64 %296)
  %298 = call i32 @dbug(i32 1, i32 %297)
  br label %299

299:                                              ; preds = %261, %255
  br label %300

300:                                              ; preds = %299, %237
  br label %301

301:                                              ; preds = %300, %202
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %6, align 4
  br label %185

305:                                              ; preds = %196
  br label %306

306:                                              ; preds = %305, %122, %114
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %5, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %5, align 4
  br label %110

310:                                              ; preds = %110
  store i32 0, i32* %5, align 4
  br label %311

311:                                              ; preds = %388, %310
  %312 = load i32, i32* %5, align 4
  %313 = load i32, i32* @max_appl, align 4
  %314 = icmp slt i32 %312, %313
  br i1 %314, label %315, label %391

315:                                              ; preds = %311
  %316 = load i32, i32* %5, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %25, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %383

321:                                              ; preds = %315
  %322 = load i32, i32* %5, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %25, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @MAX_CIP_TYPES, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %337

328:                                              ; preds = %321
  %329 = load i32, i32* %5, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32, i32* %25, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* %5, align 4
  %334 = add nsw i32 %333, 1
  %335 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %332, i32 %334)
  %336 = call i32 @dbug(i32 1, i32 %335)
  br label %382

337:                                              ; preds = %321
  %338 = load i32, i32* %5, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %25, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %5, align 4
  %343 = add nsw i32 %342, 1
  %344 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %341, i32 %343)
  %345 = call i32 @dbug(i32 1, i32 %344)
  %346 = load i32, i32* %5, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %6, align 4
  br label %348

348:                                              ; preds = %378, %337
  %349 = load i32, i32* %6, align 4
  %350 = load i32, i32* @max_appl, align 4
  %351 = icmp slt i32 %349, %350
  br i1 %351, label %352, label %381

352:                                              ; preds = %348
  %353 = load i32, i32* %5, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %25, i64 %354
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %6, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %25, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %356, %360
  br i1 %361, label %362, label %377

362:                                              ; preds = %352
  %363 = load i32, i32* %6, align 4
  %364 = add nsw i32 %363, 1
  %365 = load i32, i32* %6, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %25, i64 %366
  %368 = load i32, i32* %367, align 4
  %369 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0), i32 %364, i32 %368)
  %370 = call i32 @dbug(i32 1, i32 %369)
  %371 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %372 = load i32, i32* %6, align 4
  %373 = call i32 @clear_group_ind_mask_bit(%struct.TYPE_9__* %371, i32 %372)
  %374 = load i32, i32* %6, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %25, i64 %375
  store i32 0, i32* %376, align 4
  br label %377

377:                                              ; preds = %362, %352
  br label %378

378:                                              ; preds = %377
  %379 = load i32, i32* %6, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %6, align 4
  br label %348

381:                                              ; preds = %348
  br label %382

382:                                              ; preds = %381, %328
  br label %387

383:                                              ; preds = %315
  %384 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %385 = load i32, i32* %5, align 4
  %386 = call i32 @clear_group_ind_mask_bit(%struct.TYPE_9__* %384, i32 %385)
  br label %387

387:                                              ; preds = %383, %382
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %5, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %5, align 4
  br label %311

391:                                              ; preds = %311
  store i32 0, i32* %15, align 4
  br label %392

392:                                              ; preds = %391, %102, %32
  %393 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %393)
  %394 = load i32, i32* %15, align 4
  switch i32 %394, label %396 [
    i32 0, label %395
    i32 1, label %395
  ]

395:                                              ; preds = %392, %392
  ret void

396:                                              ; preds = %392
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @set_group_ind_mask(%struct.TYPE_9__*) #2

declare dso_local i32 @dbug(i32, i32) #2

declare dso_local i32 @dprintf(i8*, ...) #2

declare dso_local i64 @test_c_ind_mask_bit(%struct.TYPE_9__*, i32) #2

declare dso_local i32 @clear_group_ind_mask_bit(%struct.TYPE_9__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
