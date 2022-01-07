; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_SuperTraceMessageInput.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_SuperTraceMessageInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__, i64*, i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { i32, i32 (i32, i32*, i32, i32*, i32)* }

@DLI_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Unknon IDI Ind (DMA mode): %02x\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Unknon IDI Ind: %02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @SuperTraceMessageInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SuperTraceMessageInput(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %5, align 4
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 11
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 255
  br i1 %18, label %19, label %208

19:                                               ; preds = %1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 16
  store i64 0, i64* %21, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 11
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 11
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  store i32 3, i32* %35, align 8
  store i32 0, i32* %2, align 4
  br label %446

36:                                               ; preds = %19
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %150

42:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  store i32 2, i32* %49, align 8
  store i32 1, i32* %8, align 4
  br label %145

50:                                               ; preds = %42
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 3
  store i32 2, i32* %57, align 4
  store i32 1, i32* %8, align 4
  br label %144

58:                                               ; preds = %50
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  store i32 2, i32* %65, align 8
  store i32 1, i32* %8, align 4
  br label %143

66:                                               ; preds = %58
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp slt i64 %69, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %66
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 6
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 5
  store i64 %82, i64* %84, align 8
  store i32 1, i32* %8, align 4
  br label %142

85:                                               ; preds = %74, %66
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 7
  store i64 %96, i64* %98, align 8
  store i32 1, i32* %8, align 4
  br label %141

99:                                               ; preds = %85
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 8
  store i64 %110, i64* %112, align 8
  store i32 1, i32* %8, align 4
  br label %140

113:                                              ; preds = %99
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  store i32 1, i32* %8, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 9
  store i32 1, i32* %120, align 8
  br label %139

121:                                              ; preds = %113
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 18
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %121
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 18
  store i64 0, i64* %128, align 8
  store i32 1, i32* %8, align 4
  br label %138

129:                                              ; preds = %121
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 17
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 17
  store i64 0, i64* %136, align 8
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %134, %129
  br label %138

138:                                              ; preds = %137, %126
  br label %139

139:                                              ; preds = %138, %118
  br label %140

140:                                              ; preds = %139, %107
  br label %141

141:                                              ; preds = %140, %93
  br label %142

142:                                              ; preds = %141, %79
  br label %143

143:                                              ; preds = %142, %63
  br label %144

144:                                              ; preds = %143, %55
  br label %145

145:                                              ; preds = %144, %47
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  store i32 -1, i32* %2, align 4
  br label %446

149:                                              ; preds = %145
  br label %192

150:                                              ; preds = %36
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 5
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 2
  store i32 2, i32* %162, align 8
  br label %191

163:                                              ; preds = %150
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 3
  store i32 2, i32* %170, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 8
  store i64 %173, i64* %175, align 8
  br label %190

176:                                              ; preds = %163
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %189

181:                                              ; preds = %176
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 4
  store i32 2, i32* %183, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 7
  store i64 %186, i64* %188, align 8
  br label %189

189:                                              ; preds = %181, %176
  br label %190

190:                                              ; preds = %189, %168
  br label %191

191:                                              ; preds = %190, %155
  br label %192

192:                                              ; preds = %191, %149
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 9
  %195 = load i32, i32* %194, align 8
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %200

197:                                              ; preds = %192
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 9
  store i32 1, i32* %199, align 8
  br label %200

200:                                              ; preds = %197, %192
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 1
  store i32 255, i32* %202, align 4
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %204 = call i32 @ScheduleNextTraceRequest(%struct.TYPE_11__* %203)
  store i32 %204, i32* %5, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %200
  store i32 -1, i32* %2, align 4
  br label %446

207:                                              ; preds = %200
  br label %439

208:                                              ; preds = %1
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 11
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  store i32 %212, i32* %7, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 11
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 2
  store i32 0, i32* %215, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %208
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 11
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 3
  store i32 0, i32* %223, align 4
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 11
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 4
  store i32 2, i32* %226, align 8
  br label %438

227:                                              ; preds = %208
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 16
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 11
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 3
  store i32 0, i32* %235, align 4
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 11
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 4
  store i32 1, i32* %238, align 8
  br label %437

239:                                              ; preds = %227
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 11
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 2
  br i1 %244, label %245, label %264

245:                                              ; preds = %239
  %246 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 11
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 3
  store i32 1, i32* %248, align 4
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 15
  %251 = load i64*, i64** %250, align 8
  %252 = getelementptr inbounds i64, i64* %251, i64 0
  %253 = bitcast i64* %252 to i32*
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %254, i32 0, i32 11
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 5
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  store i32* %253, i32** %258, align 8
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i32 0, i32 11
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 5
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 1
  store i32 7, i32* %263, align 8
  br label %436

264:                                              ; preds = %239
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 15
  %267 = load i64*, i64** %266, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 0
  %269 = bitcast i64* %268 to i32*
  store i32* %269, i32** %9, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 15
  %272 = load i64*, i64** %271, align 8
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 11
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 5
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i64, i64* %272, i64 %279
  store i64 0, i64* %280, align 8
  %281 = load i32, i32* %7, align 4
  switch i32 %281, label %431 [
    i32 131, label %282
    i32 129, label %377
    i32 130, label %384
    i32 128, label %391
  ]

282:                                              ; preds = %264
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 11
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 5
  %286 = load %struct.TYPE_9__*, %struct.TYPE_9__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  store i32 %288, i32* %10, align 4
  br label %289

289:                                              ; preds = %366, %282
  %290 = load i32, i32* %10, align 4
  %291 = icmp sgt i32 %290, 3
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i32*, i32** %9, align 8
  %294 = load i32, i32* %293, align 4
  %295 = icmp ne i32 %294, 0
  br label %296

296:                                              ; preds = %292, %289
  %297 = phi i1 [ false, %289 ], [ %295, %292 ]
  br i1 %297, label %298, label %376

298:                                              ; preds = %296
  %299 = load i32*, i32** %9, align 8
  %300 = getelementptr inbounds i32, i32* %299, i32 1
  store i32* %300, i32** %9, align 8
  %301 = load i32, i32* %299, align 4
  store i32 %301, i32* %7, align 4
  %302 = load i32*, i32** %9, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 0
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %9, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 1
  %307 = load i32, i32* %306, align 4
  %308 = shl i32 %307, 8
  %309 = or i32 %304, %308
  store i32 %309, i32* %11, align 4
  %310 = load i32*, i32** %9, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 2
  store i32* %311, i32** %9, align 8
  %312 = load i32, i32* %7, align 4
  switch i32 %312, label %362 [
    i32 129, label %313
    i32 130, label %320
    i32 128, label %327
  ]

313:                                              ; preds = %298
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %315 = load i32*, i32** %9, align 8
  %316 = call i32 @process_idi_info(%struct.TYPE_11__* %314, i32* %315)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %313
  store i32 -1, i32* %2, align 4
  br label %446

319:                                              ; preds = %313
  br label %366

320:                                              ; preds = %298
  %321 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %322 = load i32*, i32** %9, align 8
  %323 = call i32 @process_idi_event(%struct.TYPE_11__* %321, i32* %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %320
  store i32 -1, i32* %2, align 4
  br label %446

326:                                              ; preds = %320
  br label %366

327:                                              ; preds = %298
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 10
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %332, label %337

332:                                              ; preds = %327
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 10
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 4
  br label %361

337:                                              ; preds = %327
  %338 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %339 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %338, i32 0, i32 14
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 1
  %341 = load i32 (i32, i32*, i32, i32*, i32)*, i32 (i32, i32*, i32, i32*, i32)** %340, align 8
  %342 = icmp ne i32 (i32, i32*, i32, i32*, i32)* %341, null
  br i1 %342, label %343, label %360

343:                                              ; preds = %337
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %344, i32 0, i32 14
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 1
  %347 = load i32 (i32, i32*, i32, i32*, i32)*, i32 (i32, i32*, i32, i32*, i32)** %346, align 8
  %348 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %348, i32 0, i32 14
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 13
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 12
  %356 = load i32, i32* %355, align 8
  %357 = load i32*, i32** %9, align 8
  %358 = load i32, i32* %11, align 4
  %359 = call i32 %347(i32 %351, i32* %353, i32 %356, i32* %357, i32 %358)
  br label %360

360:                                              ; preds = %343, %337
  br label %361

361:                                              ; preds = %360, %332
  br label %366

362:                                              ; preds = %298
  %363 = load i32, i32* @DLI_ERR, align 4
  %364 = load i32, i32* %7, align 4
  %365 = call i32 @diva_mnt_internal_dprintf(i32 0, i32 %363, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %364)
  br label %366

366:                                              ; preds = %362, %361, %326, %319
  %367 = load i32, i32* %11, align 4
  %368 = add nsw i32 %367, 1
  %369 = load i32*, i32** %9, align 8
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  store i32* %371, i32** %9, align 8
  %372 = load i32, i32* %11, align 4
  %373 = add nsw i32 4, %372
  %374 = load i32, i32* %10, align 4
  %375 = sub nsw i32 %374, %373
  store i32 %375, i32* %10, align 4
  br label %289

376:                                              ; preds = %296
  br label %435

377:                                              ; preds = %264
  %378 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %379 = load i32*, i32** %9, align 8
  %380 = call i32 @process_idi_info(%struct.TYPE_11__* %378, i32* %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  store i32 -1, i32* %2, align 4
  br label %446

383:                                              ; preds = %377
  br label %435

384:                                              ; preds = %264
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %386 = load i32*, i32** %9, align 8
  %387 = call i32 @process_idi_event(%struct.TYPE_11__* %385, i32* %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %384
  store i32 -1, i32* %2, align 4
  br label %446

390:                                              ; preds = %384
  br label %435

391:                                              ; preds = %264
  %392 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %392, i32 0, i32 10
  %394 = load i32, i32* %393, align 4
  %395 = icmp eq i32 %394, 1
  br i1 %395, label %396, label %401

396:                                              ; preds = %391
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i32 0, i32 10
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %398, align 4
  br label %430

401:                                              ; preds = %391
  %402 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 14
  %404 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %403, i32 0, i32 1
  %405 = load i32 (i32, i32*, i32, i32*, i32)*, i32 (i32, i32*, i32, i32*, i32)** %404, align 8
  %406 = icmp ne i32 (i32, i32*, i32, i32*, i32)* %405, null
  br i1 %406, label %407, label %429

407:                                              ; preds = %401
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %409 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i32 0, i32 14
  %410 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %409, i32 0, i32 1
  %411 = load i32 (i32, i32*, i32, i32*, i32)*, i32 (i32, i32*, i32, i32*, i32)** %410, align 8
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 14
  %414 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i32 0, i32 13
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 12
  %420 = load i32, i32* %419, align 8
  %421 = load i32*, i32** %9, align 8
  %422 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %423 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %422, i32 0, i32 11
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 5
  %425 = load %struct.TYPE_9__*, %struct.TYPE_9__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  %428 = call i32 %411(i32 %415, i32* %417, i32 %420, i32* %421, i32 %427)
  br label %429

429:                                              ; preds = %407, %401
  br label %430

430:                                              ; preds = %429, %396
  br label %435

431:                                              ; preds = %264
  %432 = load i32, i32* @DLI_ERR, align 4
  %433 = load i32, i32* %7, align 4
  %434 = call i32 @diva_mnt_internal_dprintf(i32 0, i32 %432, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %433)
  br label %435

435:                                              ; preds = %431, %430, %390, %383, %376
  br label %436

436:                                              ; preds = %435, %245
  br label %437

437:                                              ; preds = %436, %232
  br label %438

438:                                              ; preds = %437, %220
  br label %439

439:                                              ; preds = %438, %207
  %440 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %441 = call i32 @ScheduleNextTraceRequest(%struct.TYPE_11__* %440)
  store i32 %441, i32* %5, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %444

443:                                              ; preds = %439
  store i32 -1, i32* %2, align 4
  br label %446

444:                                              ; preds = %439
  %445 = load i32, i32* %5, align 4
  store i32 %445, i32* %2, align 4
  br label %446

446:                                              ; preds = %444, %443, %389, %382, %325, %318, %206, %148, %33
  %447 = load i32, i32* %2, align 4
  ret i32 %447
}

declare dso_local i32 @ScheduleNextTraceRequest(%struct.TYPE_11__*) #1

declare dso_local i32 @process_idi_info(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @process_idi_event(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @diva_mnt_internal_dprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
