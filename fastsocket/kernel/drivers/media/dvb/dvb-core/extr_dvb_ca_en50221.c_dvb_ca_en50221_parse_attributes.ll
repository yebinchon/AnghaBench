; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_parse_attributes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_parse_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"DVB_CI_V\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"1.00\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"dvb_ca adapter %d: Unsupported DVB CAM module version %c%c%c%c\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"DVB_HOST\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"DVB_CI_MODULE\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"dvb_ca: Skipping unknown tuple type:0x%x length:0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [76 x i8] c"Valid DVB CAM detected MANID:%x DEVID:%x CONFIGBASE:0x%x CONFIGOPTION:0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_private*, i32)* @dvb_ca_en50221_parse_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_ca_en50221_parse_attributes(%struct.dvb_ca_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [257 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %21 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %18, i32 %19, i32* %6, i32* %8, i32* %7, i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %3, align 4
  br label %296

25:                                               ; preds = %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 29
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %296

31:                                               ; preds = %25
  %32 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %35 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %32, i32 %33, i32* %6, i32* %8, i32* %7, i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %3, align 4
  br label %296

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 28
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %296

45:                                               ; preds = %39
  %46 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %49 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %46, i32 %47, i32* %6, i32* %8, i32* %7, i32* %48)
  store i32 %49, i32* %12, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %3, align 4
  br label %296

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 21
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %296

59:                                               ; preds = %53
  %60 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %63 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %60, i32 %61, i32* %6, i32* %8, i32* %7, i32* %62)
  store i32 %63, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %3, align 4
  br label %296

67:                                               ; preds = %59
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %296

73:                                               ; preds = %67
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 4
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %296

79:                                               ; preds = %73
  %80 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 8
  %83 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = or i32 %82, %84
  store i32 %85, i32* %16, align 4
  %86 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 8
  %89 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %88, %90
  store i32 %91, i32* %17, align 4
  %92 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %93 = load i32, i32* %5, align 4
  %94 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %95 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %92, i32 %93, i32* %6, i32* %8, i32* %7, i32* %94)
  store i32 %95, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %79
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %3, align 4
  br label %296

99:                                               ; preds = %79
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 26
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %296

105:                                              ; preds = %99
  %106 = load i32, i32* %7, align 4
  %107 = icmp slt i32 %106, 3
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %296

111:                                              ; preds = %105
  %112 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %113 = load i32, i32* %112, align 16
  %114 = and i32 %113, 3
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 3, %116
  %118 = add nsw i32 %117, 14
  %119 = icmp slt i32 %115, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %111
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %3, align 4
  br label %296

123:                                              ; preds = %111
  %124 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %125 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 0, i32* %130, align 4
  store i32 0, i32* %15, align 4
  br label %131

131:                                              ; preds = %154, %123
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %157

136:                                              ; preds = %131
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 2, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %15, align 4
  %143 = mul nsw i32 8, %142
  %144 = shl i32 %141, %143
  %145 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %146 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %144
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %136
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %15, align 4
  br label %131

157:                                              ; preds = %131
  %158 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %159 = bitcast i32* %158 to i8*
  %160 = load i32, i32* %7, align 4
  %161 = call i8* @findstr(i8* %159, i32 %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  store i8* %161, i8** %10, align 8
  %162 = load i8*, i8** %10, align 8
  %163 = icmp eq i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %157
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %296

167:                                              ; preds = %157
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = load i8*, i8** %10, align 8
  %171 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %172 = bitcast i32* %171 to i8*
  %173 = ptrtoint i8* %170 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  %176 = add nsw i64 %175, 12
  %177 = icmp slt i64 %169, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %167
  %179 = load i32, i32* @EINVAL, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %3, align 4
  br label %296

181:                                              ; preds = %167
  %182 = load i8*, i8** %10, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 8
  %184 = call i64 @strncmp(i8* %183, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %209

186:                                              ; preds = %181
  %187 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %188 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %187, i32 0, i32 1
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i8*, i8** %10, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 8
  %196 = load i8, i8* %195, align 1
  %197 = load i8*, i8** %10, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 9
  %199 = load i8, i8* %198, align 1
  %200 = load i8*, i8** %10, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 10
  %202 = load i8, i8* %201, align 1
  %203 = load i8*, i8** %10, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 11
  %205 = load i8, i8* %204, align 1
  %206 = call i32 @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %193, i8 signext %196, i8 signext %199, i8 signext %202, i8 signext %205)
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %296

209:                                              ; preds = %181
  br label %210

210:                                              ; preds = %266, %209
  %211 = load i32, i32* %14, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %6, align 4
  %215 = icmp slt i32 %214, 4096
  br label %216

216:                                              ; preds = %213, %210
  %217 = phi i1 [ false, %210 ], [ %215, %213 ]
  br i1 %217, label %218, label %267

218:                                              ; preds = %216
  %219 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %220 = load i32, i32* %5, align 4
  %221 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %222 = call i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private* %219, i32 %220, i32* %6, i32* %8, i32* %7, i32* %221)
  store i32 %222, i32* %12, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %218
  %225 = load i32, i32* %12, align 4
  store i32 %225, i32* %3, align 4
  br label %296

226:                                              ; preds = %218
  %227 = load i32, i32* %8, align 4
  switch i32 %227, label %262 [
    i32 27, label %228
    i32 20, label %260
    i32 255, label %261
  ]

228:                                              ; preds = %226
  %229 = load i32, i32* %7, align 4
  %230 = icmp slt i32 %229, 30
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  br label %266

232:                                              ; preds = %228
  %233 = load i32, i32* %13, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %266

236:                                              ; preds = %232
  %237 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %238 = load i32, i32* %237, align 16
  %239 = and i32 %238, 63
  %240 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %241 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %240, i32 0, i32 0
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = load i32, i32* %5, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  store i32 %239, i32* %246, align 4
  %247 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %248 = bitcast i32* %247 to i8*
  %249 = load i32, i32* %7, align 4
  %250 = call i8* @findstr(i8* %248, i32 %249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %251 = icmp eq i8* %250, null
  br i1 %251, label %258, label %252

252:                                              ; preds = %236
  %253 = getelementptr inbounds [257 x i32], [257 x i32]* %9, i64 0, i64 0
  %254 = bitcast i32* %253 to i8*
  %255 = load i32, i32* %7, align 4
  %256 = call i8* @findstr(i8* %254, i32 %255, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 13)
  %257 = icmp eq i8* %256, null
  br i1 %257, label %258, label %259

258:                                              ; preds = %252, %236
  br label %266

259:                                              ; preds = %252
  store i32 1, i32* %13, align 4
  br label %266

260:                                              ; preds = %226
  br label %266

261:                                              ; preds = %226
  store i32 1, i32* %14, align 4
  br label %266

262:                                              ; preds = %226
  %263 = load i32, i32* %8, align 4
  %264 = load i32, i32* %7, align 4
  %265 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %262, %261, %260, %259, %258, %235, %231
  br label %210

267:                                              ; preds = %216
  %268 = load i32, i32* %6, align 4
  %269 = icmp sgt i32 %268, 4096
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = load i32, i32* %13, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %276, label %273

273:                                              ; preds = %270, %267
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %3, align 4
  br label %296

276:                                              ; preds = %270
  %277 = load i32, i32* %16, align 4
  %278 = load i32, i32* %17, align 4
  %279 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %280 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %279, i32 0, i32 0
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = load i32, i32* %5, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %288 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %287, i32 0, i32 0
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 (i8*, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.6, i64 0, i64 0), i32 %277, i32 %278, i32 %286, i32 %294)
  store i32 0, i32* %3, align 4
  br label %296

296:                                              ; preds = %276, %273, %224, %186, %178, %164, %120, %108, %102, %97, %76, %70, %65, %56, %51, %42, %37, %28, %23
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i32 @dvb_ca_en50221_read_tuple(%struct.dvb_ca_private*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @findstr(i8*, i32, i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @printk(i8*, i32, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @dprintk(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
