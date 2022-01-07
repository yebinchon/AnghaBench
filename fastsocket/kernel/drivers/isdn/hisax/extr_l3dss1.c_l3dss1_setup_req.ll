; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_setup_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3dss1.c_l3dss1_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l3_process = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@MT_SETUP = common dso_local global i32 0, align 4
@IE_BEARER = common dso_local global i8* null, align 8
@IE_KEYPAD = common dso_local global i32 0, align 4
@L3_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Wrong MSN Code\00", align 1
@IE_CHANNEL_ID = common dso_local global i32 0, align 4
@IE_CALLING_PN = common dso_local global i32 0, align 4
@IE_CALLING_SUB = common dso_local global i32 0, align 4
@IE_CALLED_PN = common dso_local global i32 0, align 4
@IE_CALLED_SUB = common dso_local global i32 0, align 4
@T303 = common dso_local global i32 0, align 4
@CC_T303 = common dso_local global i32 0, align 4
@DL_DATA = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@IE_LLC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l3_process*, i32, i8*)* @l3dss1_setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3dss1_setup_req(%struct.l3_process* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.l3_process*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca [128 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.l3_process* %0, %struct.l3_process** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %18 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  store i32* %18, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 128, i32* %12, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %21 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @MT_SETUP, align 4
  %24 = call i32 @MsgHead(i32* %19, i32 %22, i32 %23)
  %25 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %26 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = call i64 @strchr(i32* %30, i8 signext 42)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %3
  %34 = load i32*, i32** %13, align 8
  %35 = call i64 @strchr(i32* %34, i8 signext 35)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %33, %3
  %38 = phi i1 [ true, %3 ], [ %36, %33 ]
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %9, align 8
  store i32 161, i32* %44, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %48 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %66 [
    i32 1, label %52
    i32 5, label %65
    i32 7, label %65
  ]

52:                                               ; preds = %46
  %53 = load i8*, i8** @IE_BEARER, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %9, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %9, align 8
  store i32 3, i32* %57, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %9, align 8
  store i32 144, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %9, align 8
  store i32 144, i32* %61, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %9, align 8
  store i32 163, i32* %63, align 4
  br label %77

65:                                               ; preds = %46, %46
  br label %66

66:                                               ; preds = %46, %65
  %67 = load i8*, i8** @IE_BEARER, align 8
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %9, align 8
  store i32 %68, i32* %69, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %9, align 8
  store i32 2, i32* %71, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %9, align 8
  store i32 136, i32* %73, align 4
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %9, align 8
  store i32 144, i32* %75, align 4
  br label %77

77:                                               ; preds = %66, %52
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %77
  %81 = load i32, i32* @IE_KEYPAD, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  %84 = load i32*, i32** %13, align 8
  %85 = call i32 @strlen(i32* %84)
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  br label %88

88:                                               ; preds = %92, %80
  %89 = load i32*, i32** %13, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32*, i32** %13, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %13, align 8
  %95 = load i32, i32* %93, align 4
  %96 = and i32 %95, 127
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  br label %88

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %77
  %101 = load i32*, i32** %13, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %151

104:                                              ; preds = %100
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %151, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @isdigit(i32 %109) #3
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %150, label %112

112:                                              ; preds = %107
  %113 = load i32*, i32** %13, align 8
  %114 = load i32, i32* %113, align 4
  %115 = and i32 95, %114
  switch i32 %115, label %134 [
    i32 67, label %116
    i32 80, label %117
    i32 82, label %132
    i32 68, label %133
  ]

116:                                              ; preds = %112
  store i32 8, i32* %10, align 4
  br label %117

117:                                              ; preds = %112, %116
  %118 = load i32, i32* %10, align 4
  %119 = or i32 %118, 128
  store i32 %119, i32* %10, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** %13, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 49
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %131

128:                                              ; preds = %117
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, 2
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %128, %125
  br label %147

132:                                              ; preds = %112
  store i32 160, i32* %12, align 4
  br label %147

133:                                              ; preds = %112
  store i32 128, i32* %12, align 4
  br label %147

134:                                              ; preds = %112
  %135 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %136 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @L3_DEB_WARN, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %143 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @l3_debug(i32 %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %141, %134
  br label %147

147:                                              ; preds = %146, %133, %132, %131
  %148 = load i32*, i32** %13, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %13, align 8
  br label %150

150:                                              ; preds = %147, %107
  br label %151

151:                                              ; preds = %150, %104, %100
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %151
  %155 = load i32, i32* @IE_CHANNEL_ID, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 1
  store i32* %157, i32** %9, align 8
  store i32 %155, i32* %156, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %9, align 8
  store i32 1, i32* %158, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  br label %163

163:                                              ; preds = %154, %151
  %164 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %165 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %14, align 8
  store i32* null, i32** %15, align 8
  %169 = load i32*, i32** %14, align 8
  store i32* %169, i32** %16, align 8
  br label %170

170:                                              ; preds = %184, %163
  %171 = load i32*, i32** %16, align 8
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load i32*, i32** %16, align 8
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 46, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32*, i32** %16, align 8
  store i32* %179, i32** %15, align 8
  %180 = load i32*, i32** %16, align 8
  store i32 0, i32* %180, align 4
  br label %184

181:                                              ; preds = %174
  %182 = load i32*, i32** %16, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %16, align 8
  br label %184

184:                                              ; preds = %181, %178
  br label %170

185:                                              ; preds = %170
  %186 = load i32*, i32** %14, align 8
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %226

189:                                              ; preds = %185
  %190 = load i32, i32* @IE_CALLING_PN, align 4
  %191 = load i32*, i32** %9, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %9, align 8
  store i32 %190, i32* %191, align 4
  %193 = load i32*, i32** %14, align 8
  %194 = call i32 @strlen(i32* %193)
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 2, i32 1
  %199 = add nsw i32 %194, %198
  %200 = load i32*, i32** %9, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %9, align 8
  store i32 %199, i32* %200, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %189
  %205 = load i32*, i32** %9, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %9, align 8
  store i32 1, i32* %205, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds i32, i32* %208, i32 1
  store i32* %209, i32** %9, align 8
  store i32 %207, i32* %208, align 4
  br label %213

210:                                              ; preds = %189
  %211 = load i32*, i32** %9, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %9, align 8
  store i32 129, i32* %211, align 4
  br label %213

213:                                              ; preds = %210, %204
  br label %214

214:                                              ; preds = %218, %213
  %215 = load i32*, i32** %14, align 8
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %214
  %219 = load i32*, i32** %14, align 8
  %220 = getelementptr inbounds i32, i32* %219, i32 1
  store i32* %220, i32** %14, align 8
  %221 = load i32, i32* %219, align 4
  %222 = and i32 %221, 127
  %223 = load i32*, i32** %9, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** %9, align 8
  store i32 %222, i32* %223, align 4
  br label %214

225:                                              ; preds = %214
  br label %226

226:                                              ; preds = %225, %185
  %227 = load i32*, i32** %15, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %256

229:                                              ; preds = %226
  %230 = load i32*, i32** %15, align 8
  %231 = getelementptr inbounds i32, i32* %230, i32 1
  store i32* %231, i32** %15, align 8
  store i32 46, i32* %230, align 4
  %232 = load i32, i32* @IE_CALLING_SUB, align 4
  %233 = load i32*, i32** %9, align 8
  %234 = getelementptr inbounds i32, i32* %233, i32 1
  store i32* %234, i32** %9, align 8
  store i32 %232, i32* %233, align 4
  %235 = load i32*, i32** %15, align 8
  %236 = call i32 @strlen(i32* %235)
  %237 = add nsw i32 %236, 2
  %238 = load i32*, i32** %9, align 8
  %239 = getelementptr inbounds i32, i32* %238, i32 1
  store i32* %239, i32** %9, align 8
  store i32 %237, i32* %238, align 4
  %240 = load i32*, i32** %9, align 8
  %241 = getelementptr inbounds i32, i32* %240, i32 1
  store i32* %241, i32** %9, align 8
  store i32 128, i32* %240, align 4
  %242 = load i32*, i32** %9, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %9, align 8
  store i32 80, i32* %242, align 4
  br label %244

244:                                              ; preds = %248, %229
  %245 = load i32*, i32** %15, align 8
  %246 = load i32, i32* %245, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %244
  %249 = load i32*, i32** %15, align 8
  %250 = getelementptr inbounds i32, i32* %249, i32 1
  store i32* %250, i32** %15, align 8
  %251 = load i32, i32* %249, align 4
  %252 = and i32 %251, 127
  %253 = load i32*, i32** %9, align 8
  %254 = getelementptr inbounds i32, i32* %253, i32 1
  store i32* %254, i32** %9, align 8
  store i32 %252, i32* %253, align 4
  br label %244

255:                                              ; preds = %244
  br label %256

256:                                              ; preds = %255, %226
  store i32* null, i32** %15, align 8
  %257 = load i32*, i32** %13, align 8
  store i32* %257, i32** %16, align 8
  br label %258

258:                                              ; preds = %272, %256
  %259 = load i32*, i32** %16, align 8
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %273

262:                                              ; preds = %258
  %263 = load i32*, i32** %16, align 8
  %264 = load i32, i32* %263, align 4
  %265 = icmp eq i32 46, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = load i32*, i32** %16, align 8
  store i32* %267, i32** %15, align 8
  %268 = load i32*, i32** %16, align 8
  store i32 0, i32* %268, align 4
  br label %272

269:                                              ; preds = %262
  %270 = load i32*, i32** %16, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %16, align 8
  br label %272

272:                                              ; preds = %269, %266
  br label %258

273:                                              ; preds = %258
  %274 = load i32, i32* %11, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %329, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* @IE_CALLED_PN, align 4
  %278 = load i32*, i32** %9, align 8
  %279 = getelementptr inbounds i32, i32* %278, i32 1
  store i32* %279, i32** %9, align 8
  store i32 %277, i32* %278, align 4
  %280 = load i32*, i32** %13, align 8
  %281 = call i32 @strlen(i32* %280)
  %282 = add nsw i32 %281, 1
  %283 = load i32*, i32** %9, align 8
  %284 = getelementptr inbounds i32, i32* %283, i32 1
  store i32* %284, i32** %9, align 8
  store i32 %282, i32* %283, align 4
  %285 = load i32*, i32** %9, align 8
  %286 = getelementptr inbounds i32, i32* %285, i32 1
  store i32* %286, i32** %9, align 8
  store i32 129, i32* %285, align 4
  br label %287

287:                                              ; preds = %291, %276
  %288 = load i32*, i32** %13, align 8
  %289 = load i32, i32* %288, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %287
  %292 = load i32*, i32** %13, align 8
  %293 = getelementptr inbounds i32, i32* %292, i32 1
  store i32* %293, i32** %13, align 8
  %294 = load i32, i32* %292, align 4
  %295 = and i32 %294, 127
  %296 = load i32*, i32** %9, align 8
  %297 = getelementptr inbounds i32, i32* %296, i32 1
  store i32* %297, i32** %9, align 8
  store i32 %295, i32* %296, align 4
  br label %287

298:                                              ; preds = %287
  %299 = load i32*, i32** %15, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %301, label %328

301:                                              ; preds = %298
  %302 = load i32*, i32** %15, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %15, align 8
  store i32 46, i32* %302, align 4
  %304 = load i32, i32* @IE_CALLED_SUB, align 4
  %305 = load i32*, i32** %9, align 8
  %306 = getelementptr inbounds i32, i32* %305, i32 1
  store i32* %306, i32** %9, align 8
  store i32 %304, i32* %305, align 4
  %307 = load i32*, i32** %15, align 8
  %308 = call i32 @strlen(i32* %307)
  %309 = add nsw i32 %308, 2
  %310 = load i32*, i32** %9, align 8
  %311 = getelementptr inbounds i32, i32* %310, i32 1
  store i32* %311, i32** %9, align 8
  store i32 %309, i32* %310, align 4
  %312 = load i32*, i32** %9, align 8
  %313 = getelementptr inbounds i32, i32* %312, i32 1
  store i32* %313, i32** %9, align 8
  store i32 128, i32* %312, align 4
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds i32, i32* %314, i32 1
  store i32* %315, i32** %9, align 8
  store i32 80, i32* %314, align 4
  br label %316

316:                                              ; preds = %320, %301
  %317 = load i32*, i32** %15, align 8
  %318 = load i32, i32* %317, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %316
  %321 = load i32*, i32** %15, align 8
  %322 = getelementptr inbounds i32, i32* %321, i32 1
  store i32* %322, i32** %15, align 8
  %323 = load i32, i32* %321, align 4
  %324 = and i32 %323, 127
  %325 = load i32*, i32** %9, align 8
  %326 = getelementptr inbounds i32, i32* %325, i32 1
  store i32* %326, i32** %9, align 8
  store i32 %324, i32* %325, align 4
  br label %316

327:                                              ; preds = %316
  br label %328

328:                                              ; preds = %327, %298
  br label %329

329:                                              ; preds = %328, %273
  %330 = load i32*, i32** %9, align 8
  %331 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %332 = ptrtoint i32* %330 to i64
  %333 = ptrtoint i32* %331 to i64
  %334 = sub i64 %332, %333
  %335 = sdiv exact i64 %334, 4
  %336 = trunc i64 %335 to i32
  store i32 %336, i32* %17, align 4
  %337 = load i32, i32* %17, align 4
  %338 = call %struct.sk_buff* @l3_alloc_skb(i32 %337)
  store %struct.sk_buff* %338, %struct.sk_buff** %7, align 8
  %339 = icmp ne %struct.sk_buff* %338, null
  br i1 %339, label %341, label %340

340:                                              ; preds = %329
  br label %366

341:                                              ; preds = %329
  %342 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %343 = load i32, i32* %17, align 4
  %344 = call i32 @skb_put(%struct.sk_buff* %342, i32 %343)
  %345 = getelementptr inbounds [128 x i32], [128 x i32]* %8, i64 0, i64 0
  %346 = load i32, i32* %17, align 4
  %347 = call i32 @memcpy(i32 %344, i32* %345, i32 %346)
  %348 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %349 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %348, i32 0, i32 2
  %350 = call i32 @L3DelTimer(i32* %349)
  %351 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %352 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %351, i32 0, i32 2
  %353 = load i32, i32* @T303, align 4
  %354 = load i32, i32* @CC_T303, align 4
  %355 = call i32 @L3AddTimer(i32* %352, i32 %353, i32 %354)
  %356 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %357 = call i32 @newl3state(%struct.l3_process* %356, i32 1)
  %358 = load %struct.l3_process*, %struct.l3_process** %4, align 8
  %359 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @DL_DATA, align 4
  %362 = load i32, i32* @REQUEST, align 4
  %363 = or i32 %361, %362
  %364 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %365 = call i32 @l3_msg(i32 %360, i32 %363, %struct.sk_buff* %364)
  br label %366

366:                                              ; preds = %341, %340
  ret void
}

declare dso_local i32 @MsgHead(i32*, i32, i32) #1

declare dso_local i64 @strchr(i32*, i8 signext) #1

declare dso_local i32 @strlen(i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @l3_debug(i32, i8*) #1

declare dso_local %struct.sk_buff* @l3_alloc_skb(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @L3DelTimer(i32*) #1

declare dso_local i32 @L3AddTimer(i32*, i32, i32) #1

declare dso_local i32 @newl3state(%struct.l3_process*, i32) #1

declare dso_local i32 @l3_msg(i32, i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
