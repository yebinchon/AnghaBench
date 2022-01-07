; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_get_ncci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_get_ncci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64*, i64*, i64*, i32*, i32* }

@ncci_mapping_bug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"NCCI mapping exists %ld %02x %02x %02x-%02x\00", align 1
@MAX_NCCI = common dso_local global i32 0, align 4
@MAX_NL_CHANNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"NCCI mapping overflow %ld %02x %02x %02x-%02x-%02x\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"NCCI mapping overflow %ld %02x %02x\00", align 1
@IDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"NCCI mapping established %ld %02x %02x %02x-%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32)* @get_ncci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ncci(%struct.TYPE_4__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %7, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %17, %3
  %26 = load i32, i32* @ncci_mapping_bug, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @ncci_mapping_bug, align 4
  %28 = load i32, i32* @ncci_mapping_bug, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %33, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, i32, i64, i32, ...) @dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %28, i64 %29, i32 %30, i64 %41, i64 %47)
  %49 = call i32 @dbug(i32 1, i32 %48)
  %50 = load i64, i64* %5, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %8, align 4
  br label %264

52:                                               ; preds = %17
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %8, align 4
  br label %242

57:                                               ; preds = %52
  %58 = load i64, i64* %5, align 8
  %59 = load i32, i32* @MAX_NCCI, align 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %63
  %72 = load i64, i64* %5, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  br label %190

74:                                               ; preds = %63, %57
  store i32 1, i32* %8, align 4
  br label %75

75:                                               ; preds = %91, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @MAX_NCCI, align 4
  %78 = add nsw i32 %77, 1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %80, %75
  %90 = phi i1 [ false, %75 ], [ %88, %80 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %75

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @MAX_NCCI, align 4
  %97 = add nsw i32 %96, 1
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %189

99:                                               ; preds = %94
  %100 = load i32, i32* @ncci_mapping_bug, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* @ncci_mapping_bug, align 4
  store i32 1, i32* %9, align 4
  br label %102

102:                                              ; preds = %164, %99
  store i32 1, i32* %10, align 4
  br label %103

103:                                              ; preds = %121, %102
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* @MAX_NCCI, align 4
  %106 = add nsw i32 %105, 1
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %103
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = icmp ne i64 %115, %117
  br label %119

119:                                              ; preds = %108, %103
  %120 = phi i1 [ false, %103 ], [ %118, %108 ]
  br i1 %120, label %121, label %124

121:                                              ; preds = %119
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %103

124:                                              ; preds = %119
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %11, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @MAX_NCCI, align 4
  %128 = add nsw i32 %127, 1
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %153

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %150, %130
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @MAX_NCCI, align 4
  %137 = add nsw i32 %136, 1
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %150

139:                                              ; preds = %134
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp ne i64 %146, %148
  br label %150

150:                                              ; preds = %139, %134
  %151 = phi i1 [ false, %134 ], [ %149, %139 ]
  br i1 %151, label %131, label %152

152:                                              ; preds = %150
  br label %153

153:                                              ; preds = %152, %124
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @MAX_NL_CHANNEL, align 4
  %157 = add nsw i32 %156, 1
  %158 = icmp slt i32 %155, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* @MAX_NCCI, align 4
  %162 = add nsw i32 %161, 1
  %163 = icmp slt i32 %160, %162
  br label %164

164:                                              ; preds = %159, %154
  %165 = phi i1 [ false, %154 ], [ %163, %159 ]
  br i1 %165, label %102, label %166

166:                                              ; preds = %164
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @MAX_NL_CHANNEL, align 4
  %169 = add nsw i32 %168, 1
  %170 = icmp slt i32 %167, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %166
  %172 = load i32, i32* @ncci_mapping_bug, align 4
  %173 = load i64, i64* %5, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 (i8*, i32, i64, i32, ...) @dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %172, i64 %173, i32 %174, i32 %175, i32 %176, i32 %177)
  %179 = call i32 @dbug(i32 1, i32 %178)
  br label %186

180:                                              ; preds = %166
  %181 = load i32, i32* @ncci_mapping_bug, align 4
  %182 = load i64, i64* %5, align 8
  %183 = load i32, i32* %6, align 4
  %184 = call i32 (i8*, i32, i64, i32, ...) @dprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %181, i64 %182, i32 %183)
  %185 = call i32 @dbug(i32 1, i32 %184)
  br label %186

186:                                              ; preds = %180, %171
  %187 = load i64, i64* %5, align 8
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %8, align 4
  br label %189

189:                                              ; preds = %186, %94
  br label %190

190:                                              ; preds = %189, %71
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %193, i32* %199, align 4
  %200 = load i32, i32* @IDLE, align 4
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 3
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %200, i32* %206, align 4
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %190
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  store i32 %212, i32* %214, align 8
  br label %231

215:                                              ; preds = %190
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 2
  %218 = load i64*, i64** %217, align 8
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %218, i64 %222
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 2
  %227 = load i64*, i64** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i64, i64* %227, i64 %229
  store i64 %224, i64* %230, align 8
  br label %231

231:                                              ; preds = %215, %211
  %232 = load i32, i32* %8, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 2
  %236 = load i64*, i64** %235, align 8
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %236, i64 %240
  store i64 %233, i64* %241, align 8
  br label %242

242:                                              ; preds = %231, %55
  %243 = load i64, i64* %5, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i64*, i64** %245, align 8
  %247 = load i32, i32* %8, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  store i64 %243, i64* %249, align 8
  %250 = load i32, i32* %8, align 4
  %251 = sext i32 %250 to i64
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* %5, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  store i64 %251, i64* %256, align 8
  %257 = load i32, i32* @ncci_mapping_bug, align 4
  %258 = load i64, i64* %5, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load i64, i64* %5, align 8
  %261 = load i32, i32* %8, align 4
  %262 = call i32 (i8*, i32, i64, i32, ...) @dprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %257, i64 %258, i32 %259, i64 %260, i32 %261)
  %263 = call i32 @dbug(i32 1, i32 %262)
  br label %264

264:                                              ; preds = %242, %25
  %265 = load i32, i32* %8, align 4
  ret i32 %265
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, i32, i64, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
