; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_spur_protect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_dib7000p.c_dib7000p_spur_protect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dib7000p_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@dib7000p_spur_protect.notch = internal global [8 x i32] [i32 16143, i32 14402, i32 12238, i32 9713, i32 6902, i32 3888, i32 759, i32 -2392], align 16
@dib7000p_spur_protect.sine = internal global [256 x i32] [i32 0, i32 2, i32 3, i32 5, i32 6, i32 8, i32 9, i32 11, i32 13, i32 14, i32 16, i32 17, i32 19, i32 20, i32 22, i32 24, i32 25, i32 27, i32 28, i32 30, i32 31, i32 33, i32 34, i32 36, i32 38, i32 39, i32 41, i32 42, i32 44, i32 45, i32 47, i32 48, i32 50, i32 51, i32 53, i32 55, i32 56, i32 58, i32 59, i32 61, i32 62, i32 64, i32 65, i32 67, i32 68, i32 70, i32 71, i32 73, i32 74, i32 76, i32 77, i32 79, i32 80, i32 82, i32 83, i32 85, i32 86, i32 88, i32 89, i32 91, i32 92, i32 94, i32 95, i32 97, i32 98, i32 99, i32 101, i32 102, i32 104, i32 105, i32 107, i32 108, i32 109, i32 111, i32 112, i32 114, i32 115, i32 117, i32 118, i32 119, i32 121, i32 122, i32 123, i32 125, i32 126, i32 128, i32 129, i32 130, i32 132, i32 133, i32 134, i32 136, i32 137, i32 138, i32 140, i32 141, i32 142, i32 144, i32 145, i32 146, i32 147, i32 149, i32 150, i32 151, i32 152, i32 154, i32 155, i32 156, i32 157, i32 159, i32 160, i32 161, i32 162, i32 164, i32 165, i32 166, i32 167, i32 168, i32 170, i32 171, i32 172, i32 173, i32 174, i32 175, i32 177, i32 178, i32 179, i32 180, i32 181, i32 182, i32 183, i32 184, i32 185, i32 186, i32 188, i32 189, i32 190, i32 191, i32 192, i32 193, i32 194, i32 195, i32 196, i32 197, i32 198, i32 199, i32 200, i32 201, i32 202, i32 203, i32 204, i32 205, i32 206, i32 207, i32 207, i32 208, i32 209, i32 210, i32 211, i32 212, i32 213, i32 214, i32 215, i32 215, i32 216, i32 217, i32 218, i32 219, i32 220, i32 220, i32 221, i32 222, i32 223, i32 224, i32 224, i32 225, i32 226, i32 227, i32 227, i32 228, i32 229, i32 229, i32 230, i32 231, i32 231, i32 232, i32 233, i32 233, i32 234, i32 235, i32 235, i32 236, i32 237, i32 237, i32 238, i32 238, i32 239, i32 239, i32 240, i32 241, i32 241, i32 242, i32 242, i32 243, i32 243, i32 244, i32 244, i32 245, i32 245, i32 245, i32 246, i32 246, i32 247, i32 247, i32 248, i32 248, i32 248, i32 249, i32 249, i32 249, i32 250, i32 250, i32 250, i32 251, i32 251, i32 251, i32 252, i32 252, i32 252, i32 252, i32 253, i32 253, i32 253, i32 253, i32 254, i32 254, i32 254, i32 254, i32 254, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@.str = private unnamed_addr constant [56 x i8] c"relative position of the Spur: %dk (RF: %dk, XTAL: %dk)\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"PALF COEF: %d re: %d im: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dib7000p_state*, i32, i32)* @dib7000p_spur_protect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dib7000p_spur_protect(%struct.dib7000p_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dib7000p_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dib7000p_state* %0, %struct.dib7000p_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %15 = getelementptr inbounds %struct.dib7000p_state, %struct.dib7000p_state* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 1000
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @DIV_ROUND_CLOSEST(i32 %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @dprintk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sub nsw i32 0, %34
  %36 = sdiv i32 %35, 2
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sdiv i32 %40, 2
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %3
  br label %297

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = sdiv i32 %45, 100
  store i32 %46, i32* %12, align 4
  %47 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %48 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %47, i32 142, i32 1552)
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %291, %44
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 8
  br i1 %51, label %52, label %294

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = mul nsw i32 %53, %55
  %57 = mul nsw i32 %56, 112
  %58 = mul nsw i32 %57, 80
  %59 = load i32, i32* %12, align 4
  %60 = sdiv i32 %58, %59
  %61 = sdiv i32 %60, 1000
  %62 = and i32 %61, 1023
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %67
  store i32 256, i32* %68, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %70
  store i32 0, i32* %71, align 4
  br label %193

72:                                               ; preds = %52
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 256
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = and i32 %76, 255
  %78 = sub nsw i32 256, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [256 x i32], [256 x i32]* @dib7000p_spur_protect.sine, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* %13, align 4
  %86 = and i32 %85, 255
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* @dib7000p_spur_protect.sine, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %91
  store i32 %89, i32* %92, align 4
  br label %192

93:                                               ; preds = %72
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 256
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %98
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %101
  store i32 256, i32* %102, align 4
  br label %191

103:                                              ; preds = %93
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 512
  br i1 %105, label %106, label %125

106:                                              ; preds = %103
  %107 = load i32, i32* %13, align 4
  %108 = and i32 %107, 255
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [256 x i32], [256 x i32]* @dib7000p_spur_protect.sine, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 0, %111
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %114
  store i32 %112, i32* %115, align 4
  %116 = load i32, i32* %13, align 4
  %117 = and i32 %116, 255
  %118 = sub nsw i32 256, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [256 x i32], [256 x i32]* @dib7000p_spur_protect.sine, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %123
  store i32 %121, i32* %124, align 4
  br label %190

125:                                              ; preds = %103
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, 512
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %130
  store i32 -256, i32* %131, align 4
  %132 = load i32, i32* %9, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %133
  store i32 0, i32* %134, align 4
  br label %189

135:                                              ; preds = %125
  %136 = load i32, i32* %13, align 4
  %137 = icmp slt i32 %136, 768
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load i32, i32* %13, align 4
  %140 = and i32 %139, 255
  %141 = sub nsw i32 256, %140
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [256 x i32], [256 x i32]* @dib7000p_spur_protect.sine, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 0, %144
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %147
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* %13, align 4
  %150 = and i32 %149, 255
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [256 x i32], [256 x i32]* @dib7000p_spur_protect.sine, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 0, %153
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %156
  store i32 %154, i32* %157, align 4
  br label %188

158:                                              ; preds = %135
  %159 = load i32, i32* %13, align 4
  %160 = icmp eq i32 %159, 768
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %163
  store i32 0, i32* %164, align 4
  %165 = load i32, i32* %9, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %166
  store i32 -256, i32* %167, align 4
  br label %187

168:                                              ; preds = %158
  %169 = load i32, i32* %13, align 4
  %170 = and i32 %169, 255
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [256 x i32], [256 x i32]* @dib7000p_spur_protect.sine, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %175
  store i32 %173, i32* %176, align 4
  %177 = load i32, i32* %13, align 4
  %178 = and i32 %177, 255
  %179 = sub nsw i32 256, %178
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [256 x i32], [256 x i32]* @dib7000p_spur_protect.sine, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 0, %182
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %185
  store i32 %183, i32* %186, align 4
  br label %187

187:                                              ; preds = %168, %161
  br label %188

188:                                              ; preds = %187, %138
  br label %189

189:                                              ; preds = %188, %128
  br label %190

190:                                              ; preds = %189, %106
  br label %191

191:                                              ; preds = %190, %96
  br label %192

192:                                              ; preds = %191, %75
  br label %193

193:                                              ; preds = %192, %65
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* @dib7000p_spur_protect.notch, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %9, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %201, %197
  store i32 %202, i32* %200, align 4
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 16384
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp sge i32 %211, 16777216
  br i1 %212, label %213, label %217

213:                                              ; preds = %193
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %215
  store i32 16777215, i32* %216, align 4
  br label %217

217:                                              ; preds = %213, %193
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sdiv i32 %221, 32768
  store i32 %222, i32* %220, align 4
  %223 = load i32, i32* %9, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [8 x i32], [8 x i32]* @dib7000p_spur_protect.notch, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %230, %226
  store i32 %231, i32* %229, align 4
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 16384
  store i32 %236, i32* %234, align 4
  %237 = load i32, i32* %9, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp sge i32 %240, 16777216
  br i1 %241, label %242, label %246

242:                                              ; preds = %217
  %243 = load i32, i32* %9, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %244
  store i32 16777215, i32* %245, align 4
  br label %246

246:                                              ; preds = %242, %217
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = sdiv i32 %250, 32768
  store i32 %251, i32* %249, align 4
  %252 = load i32, i32* %9, align 4
  %253 = load i32, i32* %9, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %9, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %258
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %252, i32 %256, i32 %260)
  %262 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %263 = load i32, i32* %9, align 4
  %264 = shl i32 %263, 10
  %265 = or i32 0, %264
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, 1023
  %271 = or i32 %265, %270
  %272 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %262, i32 143, i32 %271)
  %273 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 1023
  %279 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %273, i32 144, i32 %278)
  %280 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %281 = load i32, i32* %9, align 4
  %282 = shl i32 %281, 10
  %283 = or i32 16384, %282
  %284 = load i32, i32* %9, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, 1023
  %289 = or i32 %283, %288
  %290 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %280, i32 143, i32 %289)
  br label %291

291:                                              ; preds = %246
  %292 = load i32, i32* %9, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %9, align 4
  br label %49

294:                                              ; preds = %49
  %295 = load %struct.dib7000p_state*, %struct.dib7000p_state** %4, align 8
  %296 = call i32 @dib7000p_write_word(%struct.dib7000p_state* %295, i32 143, i32 0)
  br label %297

297:                                              ; preds = %294, %43
  ret void
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i32) #1

declare dso_local i32 @dib7000p_write_word(%struct.dib7000p_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
