; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_slabcache.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_slabinfo.c_slabcache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slabinfo = type { i8*, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"*\00", align 1
@actual_slabs = common dso_local global i32 0, align 4
@skip_zero = common dso_local global i64 0, align 8
@show_empty = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"%lu/%lu/%d\00", align 1
@line = common dso_local global i32 0, align 4
@show_activity = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"%-21s %8ld %10ld %10ld %3ld %3ld %5ld %1d\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"%-21s %8ld %7d %8s %14s %4d %1d %3ld %3ld %s\0A\00", align 1
@page_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slabinfo*)* @slabcache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slabcache(%struct.slabinfo* %0) #0 {
  %2 = alloca %struct.slabinfo*, align 8
  %3 = alloca [20 x i8], align 16
  %4 = alloca [40 x i8], align 16
  %5 = alloca [20 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.slabinfo* %0, %struct.slabinfo** %2, align 8
  %9 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  store i8* %9, i8** %6, align 8
  %10 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %11 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %262

16:                                               ; preds = %1
  %17 = load i32, i32* @actual_slabs, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %21 = call i32 @report(%struct.slabinfo* %20)
  br label %262

22:                                               ; preds = %16
  %23 = load i64, i64* @skip_zero, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i64, i64* @show_empty, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %30 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %262

34:                                               ; preds = %28, %25, %22
  %35 = load i64, i64* @show_empty, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %39 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %262

43:                                               ; preds = %37, %34
  %44 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %45 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %46 = call i32 @slab_size(%struct.slabinfo* %45)
  %47 = call i32 @store_size(i8* %44, i32 %46)
  %48 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %49 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %50 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %54 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %53, i32 0, i32 21
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  %57 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %58 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %61 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %60, i32 0, i32 21
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @snprintf(i8* %48, i32 40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %59, i64 %62)
  %64 = load i32, i32* @line, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* @line, align 4
  %66 = icmp ne i32 %64, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %43
  %68 = call i32 (...) @first_line()
  br label %69

69:                                               ; preds = %67, %43
  %70 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %71 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %70, i32 0, i32 20
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %6, align 8
  store i8 42, i8* %75, align 1
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %79 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %78, i32 0, i32 19
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i32 1
  store i8* %84, i8** %6, align 8
  store i8 100, i8* %83, align 1
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %87 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %86, i32 0, i32 18
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %6, align 8
  store i8 65, i8* %91, align 1
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %95 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %94, i32 0, i32 17
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i8*, i8** %6, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %6, align 8
  store i8 80, i8* %99, align 1
  br label %101

101:                                              ; preds = %98, %93
  %102 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %103 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %102, i32 0, i32 16
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i8*, i8** %6, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %6, align 8
  store i8 97, i8* %107, align 1
  br label %109

109:                                              ; preds = %106, %101
  %110 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %111 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %110, i32 0, i32 15
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %6, align 8
  store i8 90, i8* %115, align 1
  br label %117

117:                                              ; preds = %114, %109
  %118 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %119 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %118, i32 0, i32 14
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %6, align 8
  store i8 70, i8* %123, align 1
  br label %125

125:                                              ; preds = %122, %117
  %126 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %127 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %126, i32 0, i32 13
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load i8*, i8** %6, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %6, align 8
  store i8 85, i8* %131, align 1
  br label %133

133:                                              ; preds = %130, %125
  %134 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %135 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %134, i32 0, i32 12
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i8*, i8** %6, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %6, align 8
  store i8 84, i8* %139, align 1
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i8*, i8** %6, align 8
  store i8 0, i8* %142, align 1
  %143 = load i64, i64* @show_activity, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %200

145:                                              ; preds = %141
  %146 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %147 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %150 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = add i64 %148, %151
  store i64 %152, i64* %7, align 8
  %153 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %154 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %157 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %156, i32 0, i32 6
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %155, %158
  store i64 %159, i64* %8, align 8
  %160 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %161 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %164 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 8
  %166 = load i64, i64* %7, align 8
  %167 = trunc i64 %166 to i32
  %168 = load i64, i64* %8, align 8
  %169 = load i64, i64* %7, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %145
  %172 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %173 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = mul i64 %174, 100
  %176 = load i64, i64* %7, align 8
  %177 = udiv i64 %175, %176
  br label %179

178:                                              ; preds = %145
  br label %179

179:                                              ; preds = %178, %171
  %180 = phi i64 [ %177, %171 ], [ 0, %178 ]
  %181 = load i64, i64* %8, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %190

183:                                              ; preds = %179
  %184 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %185 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %184, i32 0, i32 5
  %186 = load i64, i64* %185, align 8
  %187 = mul i64 %186, 100
  %188 = load i64, i64* %8, align 8
  %189 = udiv i64 %187, %188
  br label %191

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190, %183
  %192 = phi i64 [ %189, %183 ], [ 0, %190 ]
  %193 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %194 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %193, i32 0, i32 11
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %197 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %162, i32 %165, i32 %167, i64 %168, i64 %180, i64 %192, i32 %195, i32 %198)
  br label %262

200:                                              ; preds = %141
  %201 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %202 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %205 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %208 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 8
  %210 = getelementptr inbounds [20 x i8], [20 x i8]* %3, i64 0, i64 0
  %211 = getelementptr inbounds [40 x i8], [40 x i8]* %4, i64 0, i64 0
  %212 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %213 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %212, i32 0, i32 10
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %216 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %215, i32 0, i32 8
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %219 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %200
  %223 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %224 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = mul nsw i32 %225, 100
  %227 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %228 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = sdiv i32 %226, %229
  br label %232

231:                                              ; preds = %200
  br label %232

232:                                              ; preds = %231, %222
  %233 = phi i32 [ %230, %222 ], [ 100, %231 ]
  %234 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %235 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %257

238:                                              ; preds = %232
  %239 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %240 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %243 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %242, i32 0, i32 9
  %244 = load i32, i32* %243, align 8
  %245 = mul nsw i32 %241, %244
  %246 = mul nsw i32 %245, 100
  %247 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %248 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @page_size, align 4
  %251 = load %struct.slabinfo*, %struct.slabinfo** %2, align 8
  %252 = getelementptr inbounds %struct.slabinfo, %struct.slabinfo* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %250, %253
  %255 = mul nsw i32 %249, %254
  %256 = sdiv i32 %246, %255
  br label %258

257:                                              ; preds = %232
  br label %258

258:                                              ; preds = %257, %238
  %259 = phi i32 [ %256, %238 ], [ 100, %257 ]
  %260 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %261 = call i32 (i8*, i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %203, i32 %206, i32 %209, i8* %210, i8* %211, i32 %214, i32 %217, i32 %233, i32 %259, i8* %260)
  br label %262

262:                                              ; preds = %15, %19, %33, %42, %258, %191
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @report(%struct.slabinfo*) #1

declare dso_local i32 @store_size(i8*, i32) #1

declare dso_local i32 @slab_size(%struct.slabinfo*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, i32, i64) #1

declare dso_local i32 @first_line(...) #1

declare dso_local i32 @printf(i8*, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
