; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_gtco.c_parse_hid_report_descriptor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/tablet/extr_gtco.c_parse_hid_report_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtco = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TAG_GLOB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"======>>>>>>PARSE<<<<<<======\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Variable\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Var|Const\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"::::: Saving Report: %d input #%d Max: 0x%X(%d) Min:0x%X(%d) of %d bits\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"GER: X Usage: 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"GER: Y Usage: 0x%x\00", align 1
@DIGITIZER_USAGE_TILT_X = common dso_local global i32 0, align 4
@DIGITIZER_USAGE_TILT_Y = common dso_local global i32 0, align 4
@DIGITIZER_USAGE_TIP_PRESSURE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"======>>>>>> Physical\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"Physical\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"======>>>>>>\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"<<<<<<======\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%sMAINTAG:(%d) %c SIZE: %d Data: %s 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"USAGE\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"LOG_MIN\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"LOG_MAX\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"PHYS_MIN\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"PHYS_MAX\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"EXP\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"UNIT\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"REPORT_SZ\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"REPORT_ID\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"REPORT_CNT\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"PUSH\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"POP\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"%sGLOBALTAG:%s(%d) SIZE: %d Data: 0x%x\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"%sGLOBALTAG: ILLEGAL TAG:%d SIZE: %d \00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"MIN\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"MAX\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"%sLOCALTAG:(%d) %s SIZE: %d Data: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gtco*, i8*, i32)* @parse_hid_report_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_hid_report_descriptor(%struct.gtco* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.gtco*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca [12 x i8], align 1
  %23 = alloca i32, align 4
  %24 = alloca [10 x i8], align 1
  store %struct.gtco* %0, %struct.gtco** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %25 = load i32, i32* @TAG_GLOB_MAX, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %18, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %19, align 8
  %29 = load i32, i32* @TAG_GLOB_MAX, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %20, align 8
  store i8 120, i8* %21, align 1
  store i32 0, i32* %23, align 4
  %32 = bitcast [10 x i8]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %32, i8 0, i64 10, i1 false)
  %33 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %451, %3
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %452

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @PREF_SIZE(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  switch i32 %49, label %69 [
    i32 1, label %50
    i32 2, label %57
    i32 3, label %63
  ]

50:                                               ; preds = %38
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  store i32 %56, i32* %13, align 4
  br label %69

57:                                               ; preds = %38
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = call i32 @get_unaligned_le16(i8* %61)
  store i32 %62, i32* %14, align 4
  br label %69

63:                                               ; preds = %38
  store i32 4, i32* %10, align 4
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 @get_unaligned_le32(i8* %67)
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %38, %63, %57, %50
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @PREF_TAG(i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @PREF_TYPE(i32 %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  switch i32 %77, label %451 [
    i32 128, label %78
    i32 130, label %319
    i32 129, label %412
  ]

78:                                               ; preds = %69
  %79 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %80 = call i32 @strcpy(i8* %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* %11, align 4
  switch i32 %81, label %289 [
    i32 132, label %82
    i32 131, label %209
    i32 133, label %210
    i32 134, label %211
    i32 135, label %254
  ]

82:                                               ; preds = %78
  store i8 73, i8* %21, align 1
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %87 = call i32 @strcpy(i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %13, align 4
  %90 = icmp eq i32 %89, 3
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %93 = call i32 @strcpy(i8* %92, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %85
  %96 = getelementptr inbounds i32, i32* %28, i64 140
  %97 = load i32, i32* %96, align 16
  %98 = load i32, i32* %16, align 4
  %99 = getelementptr inbounds i32, i32* %28, i64 147
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds i32, i32* %28, i64 147
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds i32, i32* %28, i64 146
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds i32, i32* %28, i64 146
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds i32, i32* %28, i64 139
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds i32, i32* %28, i64 141
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %108, %110
  %112 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %98, i32 %100, i32 %102, i32 %104, i32 %106, i32 %111)
  %113 = load i32, i32* %16, align 4
  switch i32 %113, label %148 [
    i32 0, label %114
    i32 1, label %131
  ]

114:                                              ; preds = %95
  %115 = load i32, i32* %17, align 4
  %116 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load %struct.gtco*, %struct.gtco** %4, align 8
  %118 = getelementptr inbounds %struct.gtco, %struct.gtco* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %114
  %122 = getelementptr inbounds i32, i32* %28, i64 147
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.gtco*, %struct.gtco** %4, align 8
  %125 = getelementptr inbounds %struct.gtco, %struct.gtco* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds i32, i32* %28, i64 146
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.gtco*, %struct.gtco** %4, align 8
  %129 = getelementptr inbounds %struct.gtco, %struct.gtco* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %121, %114
  br label %206

131:                                              ; preds = %95
  %132 = load i32, i32* %17, align 4
  %133 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  %134 = load %struct.gtco*, %struct.gtco** %4, align 8
  %135 = getelementptr inbounds %struct.gtco, %struct.gtco* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %147

138:                                              ; preds = %131
  %139 = getelementptr inbounds i32, i32* %28, i64 147
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.gtco*, %struct.gtco** %4, align 8
  %142 = getelementptr inbounds %struct.gtco, %struct.gtco* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 4
  %143 = getelementptr inbounds i32, i32* %28, i64 146
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.gtco*, %struct.gtco** %4, align 8
  %146 = getelementptr inbounds %struct.gtco, %struct.gtco* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %138, %131
  br label %206

148:                                              ; preds = %95
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* @DIGITIZER_USAGE_TILT_X, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %167

152:                                              ; preds = %148
  %153 = load %struct.gtco*, %struct.gtco** %4, align 8
  %154 = getelementptr inbounds %struct.gtco, %struct.gtco* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = getelementptr inbounds i32, i32* %28, i64 147
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.gtco*, %struct.gtco** %4, align 8
  %161 = getelementptr inbounds %struct.gtco, %struct.gtco* %160, i32 0, i32 4
  store i32 %159, i32* %161, align 4
  %162 = getelementptr inbounds i32, i32* %28, i64 146
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.gtco*, %struct.gtco** %4, align 8
  %165 = getelementptr inbounds %struct.gtco, %struct.gtco* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %157, %152
  br label %167

167:                                              ; preds = %166, %148
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* @DIGITIZER_USAGE_TILT_Y, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %186

171:                                              ; preds = %167
  %172 = load %struct.gtco*, %struct.gtco** %4, align 8
  %173 = getelementptr inbounds %struct.gtco, %struct.gtco* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = getelementptr inbounds i32, i32* %28, i64 147
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.gtco*, %struct.gtco** %4, align 8
  %180 = getelementptr inbounds %struct.gtco, %struct.gtco* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 4
  %181 = getelementptr inbounds i32, i32* %28, i64 146
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.gtco*, %struct.gtco** %4, align 8
  %184 = getelementptr inbounds %struct.gtco, %struct.gtco* %183, i32 0, i32 7
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %176, %171
  br label %186

186:                                              ; preds = %185, %167
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* @DIGITIZER_USAGE_TIP_PRESSURE, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %205

190:                                              ; preds = %186
  %191 = load %struct.gtco*, %struct.gtco** %4, align 8
  %192 = getelementptr inbounds %struct.gtco, %struct.gtco* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = getelementptr inbounds i32, i32* %28, i64 147
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.gtco*, %struct.gtco** %4, align 8
  %199 = getelementptr inbounds %struct.gtco, %struct.gtco* %198, i32 0, i32 8
  store i32 %197, i32* %199, align 4
  %200 = getelementptr inbounds i32, i32* %28, i64 146
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.gtco*, %struct.gtco** %4, align 8
  %203 = getelementptr inbounds %struct.gtco, %struct.gtco* %202, i32 0, i32 9
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %195, %190
  br label %205

205:                                              ; preds = %204, %186
  br label %206

206:                                              ; preds = %205, %147, %130
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  br label %289

209:                                              ; preds = %78
  store i8 79, i8* %21, align 1
  br label %289

210:                                              ; preds = %78
  store i8 70, i8* %21, align 1
  br label %289

211:                                              ; preds = %78
  store i8 83, i8* %21, align 1
  %212 = load i32, i32* %13, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %216 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %217 = call i32 @strcpy(i8* %216, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %220

218:                                              ; preds = %211
  %219 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  br label %220

220:                                              ; preds = %218, %214
  %221 = load i32, i32* %23, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %23, align 4
  store i32 0, i32* %7, align 4
  br label %223

223:                                              ; preds = %231, %220
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %23, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %234

227:                                              ; preds = %223
  %228 = load i32, i32* %7, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 %229
  store i8 45, i8* %230, align 1
  br label %231

231:                                              ; preds = %227
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %7, align 4
  br label %223

234:                                              ; preds = %223
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 %236
  store i8 0, i8* %237, align 1
  store i32 0, i32* %7, align 4
  br label %238

238:                                              ; preds = %250, %234
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @TAG_GLOB_MAX, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %253

242:                                              ; preds = %238
  %243 = load i32, i32* %7, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %28, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %31, i64 %248
  store i32 %246, i32* %249, align 4
  br label %250

250:                                              ; preds = %242
  %251 = load i32, i32* %7, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %7, align 4
  br label %238

253:                                              ; preds = %238
  br label %289

254:                                              ; preds = %78
  %255 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  store i8 69, i8* %21, align 1
  %256 = load i32, i32* %23, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %23, align 4
  store i32 0, i32* %7, align 4
  br label %258

258:                                              ; preds = %266, %254
  %259 = load i32, i32* %7, align 4
  %260 = load i32, i32* %23, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %269

262:                                              ; preds = %258
  %263 = load i32, i32* %7, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 %264
  store i8 45, i8* %265, align 1
  br label %266

266:                                              ; preds = %262
  %267 = load i32, i32* %7, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %7, align 4
  br label %258

269:                                              ; preds = %258
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 %271
  store i8 0, i8* %272, align 1
  store i32 0, i32* %7, align 4
  br label %273

273:                                              ; preds = %285, %269
  %274 = load i32, i32* %7, align 4
  %275 = load i32, i32* @TAG_GLOB_MAX, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %288

277:                                              ; preds = %273
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %31, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %28, i64 %283
  store i32 %281, i32* %284, align 4
  br label %285

285:                                              ; preds = %277
  %286 = load i32, i32* %7, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %7, align 4
  br label %273

288:                                              ; preds = %273
  br label %289

289:                                              ; preds = %78, %288, %253, %210, %209, %206
  %290 = load i32, i32* %10, align 4
  switch i32 %290, label %318 [
    i32 1, label %291
    i32 2, label %300
    i32 4, label %309
  ]

291:                                              ; preds = %289
  %292 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %293 = load i32, i32* %11, align 4
  %294 = load i8, i8* %21, align 1
  %295 = sext i8 %294 to i32
  %296 = load i32, i32* %10, align 4
  %297 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %298 = load i32, i32* %13, align 4
  %299 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8* %292, i32 %293, i32 %295, i32 %296, i8* %297, i32 %298)
  br label %318

300:                                              ; preds = %289
  %301 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %302 = load i32, i32* %11, align 4
  %303 = load i8, i8* %21, align 1
  %304 = sext i8 %303 to i32
  %305 = load i32, i32* %10, align 4
  %306 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %307 = load i32, i32* %14, align 4
  %308 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8* %301, i32 %302, i32 %304, i32 %305, i8* %306, i32 %307)
  br label %318

309:                                              ; preds = %289
  %310 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %311 = load i32, i32* %11, align 4
  %312 = load i8, i8* %21, align 1
  %313 = sext i8 %312 to i32
  %314 = load i32, i32* %10, align 4
  %315 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %316 = load i32, i32* %15, align 4
  %317 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i8* %310, i32 %311, i32 %313, i32 %314, i8* %315, i32 %316)
  br label %318

318:                                              ; preds = %289, %309, %300, %291
  br label %451

319:                                              ; preds = %69
  %320 = load i32, i32* %11, align 4
  switch i32 %320, label %366 [
    i32 136, label %321
    i32 146, label %333
    i32 147, label %336
    i32 144, label %339
    i32 145, label %342
    i32 137, label %345
    i32 138, label %348
    i32 139, label %351
    i32 140, label %354
    i32 141, label %357
    i32 142, label %360
    i32 143, label %363
  ]

321:                                              ; preds = %319
  %322 = load %struct.gtco*, %struct.gtco** %4, align 8
  %323 = getelementptr inbounds %struct.gtco, %struct.gtco* %322, i32 0, i32 10
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  %327 = load i32, i32* %13, align 4
  %328 = load %struct.gtco*, %struct.gtco** %4, align 8
  %329 = getelementptr inbounds %struct.gtco, %struct.gtco* %328, i32 0, i32 10
  store i32 %327, i32* %329, align 4
  br label %330

330:                                              ; preds = %326, %321
  %331 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %332 = call i32 @strcpy(i8* %331, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  br label %366

333:                                              ; preds = %319
  %334 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %335 = call i32 @strcpy(i8* %334, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  br label %366

336:                                              ; preds = %319
  %337 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %338 = call i32 @strcpy(i8* %337, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %366

339:                                              ; preds = %319
  %340 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %341 = call i32 @strcpy(i8* %340, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %366

342:                                              ; preds = %319
  %343 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %344 = call i32 @strcpy(i8* %343, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %366

345:                                              ; preds = %319
  %346 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %347 = call i32 @strcpy(i8* %346, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0))
  br label %366

348:                                              ; preds = %319
  %349 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %350 = call i32 @strcpy(i8* %349, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0))
  br label %366

351:                                              ; preds = %319
  %352 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %353 = call i32 @strcpy(i8* %352, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  br label %366

354:                                              ; preds = %319
  %355 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %356 = call i32 @strcpy(i8* %355, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  store i32 0, i32* %16, align 4
  br label %366

357:                                              ; preds = %319
  %358 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %359 = call i32 @strcpy(i8* %358, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  br label %366

360:                                              ; preds = %319
  %361 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %362 = call i32 @strcpy(i8* %361, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %366

363:                                              ; preds = %319
  %364 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %365 = call i32 @strcpy(i8* %364, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  br label %366

366:                                              ; preds = %319, %363, %360, %357, %354, %351, %348, %345, %342, %339, %336, %333, %330
  %367 = load i32, i32* %11, align 4
  %368 = load i32, i32* @TAG_GLOB_MAX, align 4
  %369 = icmp slt i32 %367, %368
  br i1 %369, label %370, label %406

370:                                              ; preds = %366
  %371 = load i32, i32* %10, align 4
  switch i32 %371, label %405 [
    i32 1, label %372
    i32 2, label %383
    i32 4, label %394
  ]

372:                                              ; preds = %370
  %373 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %374 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %375 = load i32, i32* %11, align 4
  %376 = load i32, i32* %10, align 4
  %377 = load i32, i32* %13, align 4
  %378 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* %373, i8* %374, i32 %375, i32 %376, i32 %377)
  %379 = load i32, i32* %13, align 4
  %380 = load i32, i32* %11, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %28, i64 %381
  store i32 %379, i32* %382, align 4
  br label %405

383:                                              ; preds = %370
  %384 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %385 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %386 = load i32, i32* %11, align 4
  %387 = load i32, i32* %10, align 4
  %388 = load i32, i32* %14, align 4
  %389 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* %384, i8* %385, i32 %386, i32 %387, i32 %388)
  %390 = load i32, i32* %14, align 4
  %391 = load i32, i32* %11, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %28, i64 %392
  store i32 %390, i32* %393, align 4
  br label %405

394:                                              ; preds = %370
  %395 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %396 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %397 = load i32, i32* %11, align 4
  %398 = load i32, i32* %10, align 4
  %399 = load i32, i32* %15, align 4
  %400 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i8* %395, i8* %396, i32 %397, i32 %398, i32 %399)
  %401 = load i32, i32* %15, align 4
  %402 = load i32, i32* %11, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32, i32* %28, i64 %403
  store i32 %401, i32* %404, align 4
  br label %405

405:                                              ; preds = %370, %394, %383, %372
  br label %411

406:                                              ; preds = %366
  %407 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %408 = load i32, i32* %11, align 4
  %409 = load i32, i32* %10, align 4
  %410 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i64 0, i64 0), i8* %407, i32 %408, i32 %409)
  br label %411

411:                                              ; preds = %406, %405
  br label %451

412:                                              ; preds = %69
  %413 = load i32, i32* %11, align 4
  switch i32 %413, label %424 [
    i32 136, label %414
    i32 146, label %418
    i32 147, label %421
  ]

414:                                              ; preds = %412
  %415 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %416 = call i32 @strcpy(i8* %415, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %417 = load i32, i32* %13, align 4
  store i32 %417, i32* %17, align 4
  br label %427

418:                                              ; preds = %412
  %419 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %420 = call i32 @strcpy(i8* %419, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %427

421:                                              ; preds = %412
  %422 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %423 = call i32 @strcpy(i8* %422, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  br label %427

424:                                              ; preds = %412
  %425 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %426 = call i32 @strcpy(i8* %425, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i64 0, i64 0))
  br label %427

427:                                              ; preds = %424, %421, %418, %414
  %428 = load i32, i32* %10, align 4
  switch i32 %428, label %450 [
    i32 1, label %429
    i32 2, label %436
    i32 4, label %443
  ]

429:                                              ; preds = %427
  %430 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %431 = load i32, i32* %11, align 4
  %432 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %433 = load i32, i32* %10, align 4
  %434 = load i32, i32* %13, align 4
  %435 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* %430, i32 %431, i8* %432, i32 %433, i32 %434)
  br label %450

436:                                              ; preds = %427
  %437 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %438 = load i32, i32* %11, align 4
  %439 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %440 = load i32, i32* %10, align 4
  %441 = load i32, i32* %14, align 4
  %442 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* %437, i32 %438, i8* %439, i32 %440, i32 %441)
  br label %450

443:                                              ; preds = %427
  %444 = getelementptr inbounds [10 x i8], [10 x i8]* %24, i64 0, i64 0
  %445 = load i32, i32* %11, align 4
  %446 = getelementptr inbounds [12 x i8], [12 x i8]* %22, i64 0, i64 0
  %447 = load i32, i32* %10, align 4
  %448 = load i32, i32* %15, align 4
  %449 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0), i8* %444, i32 %445, i8* %446, i32 %447, i32 %448)
  br label %450

450:                                              ; preds = %427, %443, %436, %429
  br label %451

451:                                              ; preds = %69, %450, %411, %318
  br label %34

452:                                              ; preds = %34
  %453 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %453)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dbg(i8*, ...) #3

declare dso_local i32 @PREF_SIZE(i32) #3

declare dso_local i32 @get_unaligned_le16(i8*) #3

declare dso_local i32 @get_unaligned_le32(i8*) #3

declare dso_local i32 @PREF_TAG(i32) #3

declare dso_local i32 @PREF_TYPE(i32) #3

declare dso_local i32 @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
