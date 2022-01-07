; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-parse.c_ksign_parse_one_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-parse.c_ksign_parse_one_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EBADMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"ksign: invalid packet (ctb=%02x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ksign: 1st length byte missing\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ksign: 2nd length byte missing\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ksign: 4 uint8_t length invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"ksign: length bytes missing\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"ksign: packet length longer than available data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64**, i64*, i32, i32, i32, i8*)* @ksign_parse_one_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksign_parse_one_packet(i64** %0, i64* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i64**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca [8 x i64], align 16
  %20 = alloca i32, align 4
  store i64** %0, i64*** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %21 = load i64**, i64*** %7, align 8
  %22 = load i64*, i64** %21, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = icmp uge i64* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  br label %263

26:                                               ; preds = %6
  %27 = load i64**, i64*** %7, align 8
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %27, align 8
  %30 = load i64, i64* %28, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* @EBADMSG, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %20, align 4
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %20, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %20, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %38
  store i64 %35, i64* %39, align 8
  %40 = load i32, i32* %15, align 4
  %41 = and i32 %40, 128
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %15, align 4
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %263

46:                                               ; preds = %26
  store i64 0, i64* %18, align 8
  %47 = load i32, i32* %15, align 4
  %48 = and i32 %47, 64
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %165

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  %52 = and i32 %51, 63
  store i32 %52, i32* %16, align 4
  %53 = load i64**, i64*** %7, align 8
  %54 = load i64*, i64** %53, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = icmp uge i64* %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %263

59:                                               ; preds = %50
  %60 = load i64**, i64*** %7, align 8
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %60, align 8
  %63 = load i64, i64* %61, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = load i32, i32* %20, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %20, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %69
  store i64 %66, i64* %70, align 8
  %71 = load i32, i32* %14, align 4
  %72 = icmp slt i32 %71, 192
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %18, align 8
  br label %164

76:                                               ; preds = %59
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %77, 224
  br i1 %78, label %79, label %107

79:                                               ; preds = %76
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %80, 192
  %82 = mul nsw i32 %81, 256
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %18, align 8
  %84 = load i64**, i64*** %7, align 8
  %85 = load i64*, i64** %84, align 8
  %86 = load i64*, i64** %8, align 8
  %87 = icmp uge i64* %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %263

90:                                               ; preds = %79
  %91 = load i64**, i64*** %7, align 8
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i32 1
  store i64* %93, i64** %91, align 8
  %94 = load i64, i64* %92, align 8
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = load i32, i32* %20, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %20, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %100
  store i64 %97, i64* %101, align 8
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, 192
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* %18, align 8
  %106 = add i64 %105, %104
  store i64 %106, i64* %18, align 8
  br label %163

107:                                              ; preds = %76
  %108 = load i32, i32* %14, align 4
  %109 = icmp eq i32 %108, 255
  br i1 %109, label %110, label %161

110:                                              ; preds = %107
  %111 = load i64**, i64*** %7, align 8
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 3
  %114 = load i64*, i64** %8, align 8
  %115 = icmp uge i64* %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %263

118:                                              ; preds = %110
  %119 = load i64**, i64*** %7, align 8
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i32 1
  store i64* %121, i64** %119, align 8
  %122 = load i64, i64* %120, align 8
  %123 = shl i64 %122, 24
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %20, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %126
  store i64 %123, i64* %127, align 8
  store i64 %123, i64* %18, align 8
  %128 = load i64**, i64*** %7, align 8
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 1
  store i64* %130, i64** %128, align 8
  %131 = load i64, i64* %129, align 8
  %132 = shl i64 %131, 16
  %133 = load i32, i32* %20, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %20, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %135
  store i64 %132, i64* %136, align 8
  %137 = load i64, i64* %18, align 8
  %138 = or i64 %137, %132
  store i64 %138, i64* %18, align 8
  %139 = load i64**, i64*** %7, align 8
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i32 1
  store i64* %141, i64** %139, align 8
  %142 = load i64, i64* %140, align 8
  %143 = shl i64 %142, 8
  %144 = load i32, i32* %20, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %20, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %146
  store i64 %143, i64* %147, align 8
  %148 = load i64, i64* %18, align 8
  %149 = or i64 %148, %143
  store i64 %149, i64* %18, align 8
  %150 = load i64**, i64*** %7, align 8
  %151 = load i64*, i64** %150, align 8
  %152 = getelementptr inbounds i64, i64* %151, i32 1
  store i64* %152, i64** %150, align 8
  %153 = load i64, i64* %151, align 8
  %154 = shl i64 %153, 0
  %155 = load i32, i32* %20, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %20, align 4
  %157 = sext i32 %155 to i64
  %158 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %157
  store i64 %154, i64* %158, align 8
  %159 = load i64, i64* %18, align 8
  %160 = or i64 %159, %154
  store i64 %160, i64* %18, align 8
  br label %162

161:                                              ; preds = %107
  store i64 0, i64* %18, align 8
  br label %162

162:                                              ; preds = %161, %118
  br label %163

163:                                              ; preds = %162, %90
  br label %164

164:                                              ; preds = %163, %73
  br label %214

165:                                              ; preds = %46
  %166 = load i32, i32* %15, align 4
  %167 = ashr i32 %166, 2
  %168 = and i32 %167, 15
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %15, align 4
  %170 = and i32 %169, 3
  %171 = icmp eq i32 %170, 3
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %177

173:                                              ; preds = %165
  %174 = load i32, i32* %15, align 4
  %175 = and i32 %174, 3
  %176 = shl i32 1, %175
  br label %177

177:                                              ; preds = %173, %172
  %178 = phi i32 [ 0, %172 ], [ %176, %173 ]
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  store i64 0, i64* %18, align 8
  br label %213

182:                                              ; preds = %177
  %183 = load i64**, i64*** %7, align 8
  %184 = load i64*, i64** %183, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i64, i64* %184, i64 %186
  %188 = load i64*, i64** %8, align 8
  %189 = icmp ugt i64* %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %182
  %191 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %263

192:                                              ; preds = %182
  br label %193

193:                                              ; preds = %209, %192
  %194 = load i32, i32* %17, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %193
  %197 = load i64, i64* %18, align 8
  %198 = shl i64 %197, 8
  store i64 %198, i64* %18, align 8
  %199 = load i64**, i64*** %7, align 8
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i32 1
  store i64* %201, i64** %199, align 8
  %202 = load i64, i64* %200, align 8
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %20, align 4
  %205 = sext i32 %203 to i64
  %206 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 %205
  store i64 %202, i64* %206, align 8
  %207 = load i64, i64* %18, align 8
  %208 = or i64 %207, %202
  store i64 %208, i64* %18, align 8
  br label %209

209:                                              ; preds = %196
  %210 = load i32, i32* %17, align 4
  %211 = add nsw i32 %210, -1
  store i32 %211, i32* %17, align 4
  br label %193

212:                                              ; preds = %193
  br label %213

213:                                              ; preds = %212, %181
  br label %214

214:                                              ; preds = %213, %164
  %215 = load i64**, i64*** %7, align 8
  %216 = load i64*, i64** %215, align 8
  %217 = load i64, i64* %18, align 8
  %218 = getelementptr inbounds i64, i64* %216, i64 %217
  %219 = load i64*, i64** %8, align 8
  %220 = icmp ugt i64* %218, %219
  br i1 %220, label %221, label %223

221:                                              ; preds = %214
  %222 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0))
  br label %263

223:                                              ; preds = %214
  %224 = load i32, i32* %16, align 4
  switch i32 %224, label %257 [
    i32 130, label %225
    i32 129, label %237
    i32 128, label %247
  ]

225:                                              ; preds = %223
  %226 = load i64**, i64*** %7, align 8
  %227 = load i64*, i64** %226, align 8
  %228 = load i64**, i64*** %7, align 8
  %229 = load i64*, i64** %228, align 8
  %230 = load i64, i64* %18, align 8
  %231 = getelementptr inbounds i64, i64* %229, i64 %230
  %232 = getelementptr inbounds [8 x i64], [8 x i64]* %19, i64 0, i64 0
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load i8*, i8** %12, align 8
  %236 = call i32 @ksign_parse_key(i64* %227, i64* %231, i64* %232, i32 %233, i32 %234, i8* %235)
  store i32 %236, i32* %13, align 4
  br label %258

237:                                              ; preds = %223
  %238 = load i64**, i64*** %7, align 8
  %239 = load i64*, i64** %238, align 8
  %240 = load i64**, i64*** %7, align 8
  %241 = load i64*, i64** %240, align 8
  %242 = load i64, i64* %18, align 8
  %243 = getelementptr inbounds i64, i64* %241, i64 %242
  %244 = load i32, i32* %9, align 4
  %245 = load i8*, i8** %12, align 8
  %246 = call i32 @ksign_parse_signature(i64* %239, i64* %243, i32 %244, i8* %245)
  store i32 %246, i32* %13, align 4
  br label %258

247:                                              ; preds = %223
  %248 = load i64**, i64*** %7, align 8
  %249 = load i64*, i64** %248, align 8
  %250 = load i64**, i64*** %7, align 8
  %251 = load i64*, i64** %250, align 8
  %252 = load i64, i64* %18, align 8
  %253 = getelementptr inbounds i64, i64* %251, i64 %252
  %254 = load i32, i32* %11, align 4
  %255 = load i8*, i8** %12, align 8
  %256 = call i32 @ksign_parse_user_id(i64* %249, i64* %253, i32 %254, i8* %255)
  store i32 %256, i32* %13, align 4
  br label %258

257:                                              ; preds = %223
  store i32 0, i32* %13, align 4
  br label %258

258:                                              ; preds = %257, %247, %237, %225
  %259 = load i64, i64* %18, align 8
  %260 = load i64**, i64*** %7, align 8
  %261 = load i64*, i64** %260, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 %259
  store i64* %262, i64** %260, align 8
  br label %263

263:                                              ; preds = %258, %221, %190, %116, %88, %57, %43, %25
  %264 = load i32, i32* %13, align 4
  ret i32 %264
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ksign_parse_key(i64*, i64*, i64*, i32, i32, i8*) #1

declare dso_local i32 @ksign_parse_signature(i64*, i64*, i32, i8*) #1

declare dso_local i32 @ksign_parse_user_id(i64*, i64*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
