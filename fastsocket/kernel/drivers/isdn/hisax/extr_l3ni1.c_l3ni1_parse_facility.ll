; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_parse_facility.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_l3ni1.c_l3ni1_parse_facility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.PStack*, i32, %struct.l3_process*)* }
%struct.l3_process = type { i32, %struct.TYPE_6__, %struct.PStack* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"qd_len == 0\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"supplementary service != 0x11\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"qd_len < 2\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"class and form != 0xA0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"qd_len < 1\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"length format error or not implemented\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"length format indefinite error\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"qd_len < nlen\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"nlen < 2\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"invoke identifier tag !=0x02\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invoke id length format 2\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"ilen > nlen || ilen == 0\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"nlen < 2 22\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"operation value !=0x02\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"ilen > nlen || ilen == 0 22\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"invoke break\00", align 1
@CC_REDIR = common dso_local global i32 0, align 4
@INDICATION = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [32 x i8] c"return error unknown identifier\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"return error nlen < 2\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"invoke error tag !=0x02\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"invoke return errlen > 4 \00", align 1
@.str.20 = private unnamed_addr constant [38 x i8] c"error return ilen > nlen || ilen == 0\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"return result unknown identifier\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"facility default break tag=0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*, %struct.l3_process*, i32, i32*)* @l3ni1_parse_facility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l3ni1_parse_facility(%struct.PStack* %0, %struct.l3_process* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.PStack*, align 8
  %6 = alloca %struct.l3_process*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.PStack* %0, %struct.PStack** %5, align 8
  store %struct.l3_process* %1, %struct.l3_process** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %16 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %17 = icmp ne %struct.l3_process* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %20 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %19, i32 0, i32 2
  %21 = load %struct.PStack*, %struct.PStack** %20, align 8
  store %struct.PStack* %21, %struct.PStack** %5, align 8
  br label %30

22:                                               ; preds = %4
  %23 = load %struct.PStack*, %struct.PStack** %5, align 8
  %24 = icmp ne %struct.PStack* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  br label %523

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %18
  %31 = load i32*, i32** %8, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %8, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.PStack*, %struct.PStack** %5, align 8
  %40 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %523

41:                                               ; preds = %30
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 31
  %45 = icmp ne i32 %44, 17
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.PStack*, %struct.PStack** %5, align 8
  %48 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %523

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %61, %49
  %51 = load i32, i32* %9, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 128
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %53, %50
  %60 = phi i1 [ false, %50 ], [ %58, %53 ]
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %8, align 8
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %9, align 4
  br label %50

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 2
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.PStack*, %struct.PStack** %5, align 8
  %71 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %523

72:                                               ; preds = %66
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %9, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 224
  %80 = icmp ne i32 %79, 160
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = load %struct.PStack*, %struct.PStack** %5, align 8
  %83 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %523

84:                                               ; preds = %72
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 31
  %88 = trunc i32 %87 to i8
  store i8 %88, i8* %12, align 1
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %93, 1
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load %struct.PStack*, %struct.PStack** %5, align 8
  %97 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %96, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %523

98:                                               ; preds = %84
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 128
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %163

103:                                              ; preds = %98
  %104 = load i32*, i32** %8, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %8, align 8
  %106 = load i32, i32* %104, align 4
  %107 = and i32 %106, 127
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %10, align 1
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, -1
  store i32 %110, i32* %9, align 4
  %111 = load i8, i8* %10, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %103
  br label %118

114:                                              ; preds = %103
  %115 = load i8, i8* %10, align 1
  %116 = zext i8 %115 to i32
  %117 = add nsw i32 1, %116
  br label %118

118:                                              ; preds = %114, %113
  %119 = phi i32 [ 3, %113 ], [ %117, %114 ]
  %120 = icmp slt i32 %109, %119
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load i8, i8* %10, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %121, %118
  %126 = load %struct.PStack*, %struct.PStack** %5, align 8
  %127 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  br label %523

128:                                              ; preds = %121
  %129 = load i8, i8* %10, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %139

132:                                              ; preds = %128
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %8, align 8
  %135 = load i32, i32* %133, align 4
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %10, align 1
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %9, align 4
  br label %162

139:                                              ; preds = %128
  %140 = load i32, i32* %9, align 4
  %141 = sub nsw i32 %140, 2
  store i32 %141, i32* %9, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %139
  %149 = load i32*, i32** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = getelementptr inbounds i32, i32* %152, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %148, %139
  %157 = load %struct.PStack*, %struct.PStack** %5, align 8
  %158 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %157, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %523

159:                                              ; preds = %148
  %160 = load i32, i32* %9, align 4
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %10, align 1
  br label %162

162:                                              ; preds = %159, %132
  br label %170

163:                                              ; preds = %98
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %8, align 8
  %166 = load i32, i32* %164, align 4
  %167 = trunc i32 %166 to i8
  store i8 %167, i8* %10, align 1
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %163, %162
  %171 = load i32, i32* %9, align 4
  %172 = load i8, i8* %10, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp slt i32 %171, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load %struct.PStack*, %struct.PStack** %5, align 8
  %177 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %176, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %523

178:                                              ; preds = %170
  %179 = load i8, i8* %10, align 1
  %180 = zext i8 %179 to i32
  %181 = load i32, i32* %9, align 4
  %182 = sub nsw i32 %181, %180
  store i32 %182, i32* %9, align 4
  %183 = load i8, i8* %10, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp slt i32 %184, 2
  br i1 %185, label %186, label %189

186:                                              ; preds = %178
  %187 = load %struct.PStack*, %struct.PStack** %5, align 8
  %188 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  br label %523

189:                                              ; preds = %178
  %190 = load i32*, i32** %8, align 8
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 2
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load %struct.PStack*, %struct.PStack** %5, align 8
  %195 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  br label %523

196:                                              ; preds = %189
  %197 = load i32*, i32** %8, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %8, align 8
  %199 = load i8, i8* %10, align 1
  %200 = add i8 %199, -1
  store i8 %200, i8* %10, align 1
  %201 = load i32*, i32** %8, align 8
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 128
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %196
  %206 = load %struct.PStack*, %struct.PStack** %5, align 8
  %207 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %206, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %523

208:                                              ; preds = %196
  %209 = load i32*, i32** %8, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %8, align 8
  %211 = load i32, i32* %209, align 4
  %212 = trunc i32 %211 to i8
  store i8 %212, i8* %11, align 1
  %213 = load i8, i8* %10, align 1
  %214 = add i8 %213, -1
  store i8 %214, i8* %10, align 1
  %215 = load i8, i8* %11, align 1
  %216 = zext i8 %215 to i32
  %217 = load i8, i8* %10, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp sgt i32 %216, %218
  br i1 %219, label %224, label %220

220:                                              ; preds = %208
  %221 = load i8, i8* %11, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %220, %208
  %225 = load %struct.PStack*, %struct.PStack** %5, align 8
  %226 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %225, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  br label %523

227:                                              ; preds = %220
  %228 = load i8, i8* %11, align 1
  %229 = zext i8 %228 to i32
  %230 = load i8, i8* %10, align 1
  %231 = zext i8 %230 to i32
  %232 = sub nsw i32 %231, %229
  %233 = trunc i32 %232 to i8
  store i8 %233, i8* %10, align 1
  store i32 0, i32* %14, align 4
  br label %234

234:                                              ; preds = %238, %227
  %235 = load i8, i8* %11, align 1
  %236 = zext i8 %235 to i32
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %234
  %239 = load i32, i32* %14, align 4
  %240 = shl i32 %239, 8
  %241 = load i32*, i32** %8, align 8
  %242 = getelementptr inbounds i32, i32* %241, i32 1
  store i32* %242, i32** %8, align 8
  %243 = load i32, i32* %241, align 4
  %244 = and i32 %243, 255
  %245 = or i32 %240, %244
  store i32 %245, i32* %14, align 4
  %246 = load i8, i8* %11, align 1
  %247 = add i8 %246, -1
  store i8 %247, i8* %11, align 1
  br label %234

248:                                              ; preds = %234
  %249 = load i8, i8* %12, align 1
  %250 = zext i8 %249 to i32
  switch i32 %250, label %518 [
    i32 1, label %251
    i32 2, label %323
    i32 3, label %388
  ]

251:                                              ; preds = %248
  %252 = load i8, i8* %10, align 1
  %253 = zext i8 %252 to i32
  %254 = icmp slt i32 %253, 2
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load %struct.PStack*, %struct.PStack** %5, align 8
  %257 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %256, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %523

258:                                              ; preds = %251
  %259 = load i32*, i32** %8, align 8
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 2
  br i1 %261, label %262, label %265

262:                                              ; preds = %258
  %263 = load %struct.PStack*, %struct.PStack** %5, align 8
  %264 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %263, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %523

265:                                              ; preds = %258
  %266 = load i32*, i32** %8, align 8
  %267 = getelementptr inbounds i32, i32* %266, i32 1
  store i32* %267, i32** %8, align 8
  %268 = load i8, i8* %10, align 1
  %269 = add i8 %268, -1
  store i8 %269, i8* %10, align 1
  %270 = load i32*, i32** %8, align 8
  %271 = getelementptr inbounds i32, i32* %270, i32 1
  store i32* %271, i32** %8, align 8
  %272 = load i32, i32* %270, align 4
  %273 = trunc i32 %272 to i8
  store i8 %273, i8* %11, align 1
  %274 = load i8, i8* %10, align 1
  %275 = add i8 %274, -1
  store i8 %275, i8* %10, align 1
  %276 = load i8, i8* %11, align 1
  %277 = zext i8 %276 to i32
  %278 = load i8, i8* %10, align 1
  %279 = zext i8 %278 to i32
  %280 = icmp sgt i32 %277, %279
  br i1 %280, label %285, label %281

281:                                              ; preds = %265
  %282 = load i8, i8* %11, align 1
  %283 = zext i8 %282 to i32
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %281, %265
  %286 = load %struct.PStack*, %struct.PStack** %5, align 8
  %287 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %286, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  br label %523

288:                                              ; preds = %281
  %289 = load i8, i8* %11, align 1
  %290 = zext i8 %289 to i32
  %291 = load i8, i8* %10, align 1
  %292 = zext i8 %291 to i32
  %293 = sub nsw i32 %292, %290
  %294 = trunc i32 %293 to i8
  store i8 %294, i8* %10, align 1
  store i32 0, i32* %13, align 4
  br label %295

295:                                              ; preds = %299, %288
  %296 = load i8, i8* %11, align 1
  %297 = zext i8 %296 to i32
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %309

299:                                              ; preds = %295
  %300 = load i32, i32* %13, align 4
  %301 = shl i32 %300, 8
  %302 = load i32*, i32** %8, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %8, align 8
  %304 = load i32, i32* %302, align 4
  %305 = and i32 %304, 255
  %306 = or i32 %301, %305
  store i32 %306, i32* %13, align 4
  %307 = load i8, i8* %11, align 1
  %308 = add i8 %307, -1
  store i8 %308, i8* %11, align 1
  br label %295

309:                                              ; preds = %295
  %310 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %311 = icmp ne %struct.l3_process* %310, null
  br i1 %311, label %320, label %312

312:                                              ; preds = %309
  %313 = load %struct.PStack*, %struct.PStack** %5, align 8
  %314 = load i32, i32* %7, align 4
  %315 = load i32, i32* %14, align 4
  %316 = load i32, i32* %13, align 4
  %317 = load i32*, i32** %8, align 8
  %318 = load i8, i8* %10, align 1
  %319 = call i32 @l3ni1_dummy_invoke(%struct.PStack* %313, i32 %314, i32 %315, i32 %316, i32* %317, i8 zeroext %318)
  br label %523

320:                                              ; preds = %309
  %321 = load %struct.PStack*, %struct.PStack** %5, align 8
  %322 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %321, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %523

323:                                              ; preds = %248
  %324 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %325 = icmp ne %struct.l3_process* %324, null
  br i1 %325, label %336, label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %7, align 4
  %328 = icmp eq i32 %327, -1
  br i1 %328, label %329, label %335

329:                                              ; preds = %326
  %330 = load %struct.PStack*, %struct.PStack** %5, align 8
  %331 = load i32, i32* %14, align 4
  %332 = load i32*, i32** %8, align 8
  %333 = load i8, i8* %10, align 1
  %334 = call i32 @l3ni1_dummy_return_result(%struct.PStack* %330, i32 %331, i32* %332, i8 zeroext %333)
  br label %335

335:                                              ; preds = %329, %326
  br label %523

336:                                              ; preds = %323
  %337 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %338 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %384

343:                                              ; preds = %336
  %344 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %345 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %14, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %384

351:                                              ; preds = %343
  %352 = load %struct.PStack*, %struct.PStack** %5, align 8
  %353 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %354 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @free_invoke_id(%struct.PStack* %352, i32 %357)
  %359 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %360 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 1
  store i32 0, i32* %362, align 4
  %363 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %364 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %363, i32 0, i32 1
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %365, i32 0, i32 0
  store i32 0, i32* %366, align 4
  %367 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %368 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %367, i32 0, i32 1
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %373 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %372, i32 0, i32 0
  store i32 %371, i32* %373, align 8
  %374 = load %struct.PStack*, %struct.PStack** %5, align 8
  %375 = getelementptr inbounds %struct.PStack, %struct.PStack* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 0
  %377 = load i32 (%struct.PStack*, i32, %struct.l3_process*)*, i32 (%struct.PStack*, i32, %struct.l3_process*)** %376, align 8
  %378 = load %struct.PStack*, %struct.PStack** %5, align 8
  %379 = load i32, i32* @CC_REDIR, align 4
  %380 = load i32, i32* @INDICATION, align 4
  %381 = or i32 %379, %380
  %382 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %383 = call i32 %377(%struct.PStack* %378, i32 %381, %struct.l3_process* %382)
  br label %387

384:                                              ; preds = %343, %336
  %385 = load %struct.PStack*, %struct.PStack** %5, align 8
  %386 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %385, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %387

387:                                              ; preds = %384, %351
  br label %523

388:                                              ; preds = %248
  store i32 0, i32* %15, align 4
  %389 = load i8, i8* %10, align 1
  %390 = zext i8 %389 to i32
  %391 = icmp slt i32 %390, 2
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = load %struct.PStack*, %struct.PStack** %5, align 8
  %394 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %393, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %523

395:                                              ; preds = %388
  %396 = load i32*, i32** %8, align 8
  %397 = load i32, i32* %396, align 4
  %398 = icmp ne i32 %397, 2
  br i1 %398, label %399, label %402

399:                                              ; preds = %395
  %400 = load %struct.PStack*, %struct.PStack** %5, align 8
  %401 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %400, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0))
  br label %523

402:                                              ; preds = %395
  %403 = load i32*, i32** %8, align 8
  %404 = getelementptr inbounds i32, i32* %403, i32 1
  store i32* %404, i32** %8, align 8
  %405 = load i8, i8* %10, align 1
  %406 = add i8 %405, -1
  store i8 %406, i8* %10, align 1
  %407 = load i32*, i32** %8, align 8
  %408 = load i32, i32* %407, align 4
  %409 = icmp sgt i32 %408, 4
  br i1 %409, label %410, label %413

410:                                              ; preds = %402
  %411 = load %struct.PStack*, %struct.PStack** %5, align 8
  %412 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %411, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0))
  br label %523

413:                                              ; preds = %402
  %414 = load i32*, i32** %8, align 8
  %415 = getelementptr inbounds i32, i32* %414, i32 1
  store i32* %415, i32** %8, align 8
  %416 = load i32, i32* %414, align 4
  %417 = trunc i32 %416 to i8
  store i8 %417, i8* %11, align 1
  %418 = load i8, i8* %10, align 1
  %419 = add i8 %418, -1
  store i8 %419, i8* %10, align 1
  %420 = load i8, i8* %11, align 1
  %421 = zext i8 %420 to i32
  %422 = load i8, i8* %10, align 1
  %423 = zext i8 %422 to i32
  %424 = icmp sgt i32 %421, %423
  br i1 %424, label %429, label %425

425:                                              ; preds = %413
  %426 = load i8, i8* %11, align 1
  %427 = zext i8 %426 to i32
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %425, %413
  %430 = load %struct.PStack*, %struct.PStack** %5, align 8
  %431 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %430, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.20, i64 0, i64 0))
  br label %523

432:                                              ; preds = %425
  %433 = load i8, i8* %11, align 1
  %434 = zext i8 %433 to i32
  %435 = load i8, i8* %10, align 1
  %436 = zext i8 %435 to i32
  %437 = sub nsw i32 %436, %434
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %10, align 1
  br label %439

439:                                              ; preds = %443, %432
  %440 = load i8, i8* %11, align 1
  %441 = zext i8 %440 to i32
  %442 = icmp sgt i32 %441, 0
  br i1 %442, label %443, label %453

443:                                              ; preds = %439
  %444 = load i32, i32* %15, align 4
  %445 = shl i32 %444, 8
  %446 = load i32*, i32** %8, align 8
  %447 = getelementptr inbounds i32, i32* %446, i32 1
  store i32* %447, i32** %8, align 8
  %448 = load i32, i32* %446, align 4
  %449 = and i32 %448, 255
  %450 = or i32 %445, %449
  store i32 %450, i32* %15, align 4
  %451 = load i8, i8* %11, align 1
  %452 = add i8 %451, -1
  store i8 %452, i8* %11, align 1
  br label %439

453:                                              ; preds = %439
  %454 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %455 = icmp ne %struct.l3_process* %454, null
  br i1 %455, label %465, label %456

456:                                              ; preds = %453
  %457 = load i32, i32* %7, align 4
  %458 = icmp eq i32 %457, -1
  br i1 %458, label %459, label %464

459:                                              ; preds = %456
  %460 = load %struct.PStack*, %struct.PStack** %5, align 8
  %461 = load i32, i32* %14, align 4
  %462 = load i32, i32* %15, align 4
  %463 = call i32 @l3ni1_dummy_error_return(%struct.PStack* %460, i32 %461, i32 %462)
  br label %464

464:                                              ; preds = %459, %456
  br label %523

465:                                              ; preds = %453
  %466 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %467 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %466, i32 0, i32 1
  %468 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %514

472:                                              ; preds = %465
  %473 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %474 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* %14, align 4
  %479 = icmp eq i32 %477, %478
  br i1 %479, label %480, label %514

480:                                              ; preds = %472
  %481 = load %struct.PStack*, %struct.PStack** %5, align 8
  %482 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %483 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %482, i32 0, i32 1
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = call i32 @free_invoke_id(%struct.PStack* %481, i32 %486)
  %488 = load i32, i32* %15, align 4
  %489 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %490 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %489, i32 0, i32 1
  %491 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %491, i32 0, i32 1
  store i32 %488, i32* %492, align 4
  %493 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %494 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %493, i32 0, i32 1
  %495 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %495, i32 0, i32 0
  store i32 0, i32* %496, align 4
  %497 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %498 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %497, i32 0, i32 1
  %499 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 4
  %502 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %503 = getelementptr inbounds %struct.l3_process, %struct.l3_process* %502, i32 0, i32 0
  store i32 %501, i32* %503, align 8
  %504 = load %struct.PStack*, %struct.PStack** %5, align 8
  %505 = getelementptr inbounds %struct.PStack, %struct.PStack* %504, i32 0, i32 0
  %506 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %505, i32 0, i32 0
  %507 = load i32 (%struct.PStack*, i32, %struct.l3_process*)*, i32 (%struct.PStack*, i32, %struct.l3_process*)** %506, align 8
  %508 = load %struct.PStack*, %struct.PStack** %5, align 8
  %509 = load i32, i32* @CC_REDIR, align 4
  %510 = load i32, i32* @INDICATION, align 4
  %511 = or i32 %509, %510
  %512 = load %struct.l3_process*, %struct.l3_process** %6, align 8
  %513 = call i32 %507(%struct.PStack* %508, i32 %511, %struct.l3_process* %512)
  br label %517

514:                                              ; preds = %472, %465
  %515 = load %struct.PStack*, %struct.PStack** %5, align 8
  %516 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %515, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  br label %517

517:                                              ; preds = %514, %480
  br label %523

518:                                              ; preds = %248
  %519 = load %struct.PStack*, %struct.PStack** %5, align 8
  %520 = load i8, i8* %12, align 1
  %521 = zext i8 %520 to i32
  %522 = call i32 (%struct.PStack*, i8*, ...) @l3_debug(%struct.PStack* %519, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i64 0, i64 0), i32 %521)
  br label %523

523:                                              ; preds = %28, %38, %46, %69, %81, %95, %125, %156, %175, %186, %193, %205, %224, %255, %262, %285, %312, %335, %392, %399, %410, %429, %464, %518, %517, %387, %320
  ret void
}

declare dso_local i32 @l3_debug(%struct.PStack*, i8*, ...) #1

declare dso_local i32 @l3ni1_dummy_invoke(%struct.PStack*, i32, i32, i32, i32*, i8 zeroext) #1

declare dso_local i32 @l3ni1_dummy_return_result(%struct.PStack*, i32, i32*, i8 zeroext) #1

declare dso_local i32 @free_invoke_id(%struct.PStack*, i32) #1

declare dso_local i32 @l3ni1_dummy_error_return(%struct.PStack*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
