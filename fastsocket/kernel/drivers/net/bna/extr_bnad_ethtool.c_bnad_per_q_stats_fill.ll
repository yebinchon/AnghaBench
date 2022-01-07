; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_per_q_stats_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bnad_ethtool.c_bnad_per_q_stats_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_12__* }
%struct.TYPE_7__ = type { %struct.bna_tcb**, i32 }
%struct.bna_tcb = type { i32*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.bna_rcb**, i32*, i32 }
%struct.bna_rcb = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnad*, i32*, i32)* @bnad_per_q_stats_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnad_per_q_stats_fill(%struct.bnad* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.bnad*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bna_rcb*, align 8
  %10 = alloca %struct.bna_tcb*, align 8
  store %struct.bnad* %0, %struct.bnad** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.bna_rcb* null, %struct.bna_rcb** %9, align 8
  store %struct.bna_tcb* null, %struct.bna_tcb** %10, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %232, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.bnad*, %struct.bnad** %4, align 8
  %14 = getelementptr inbounds %struct.bnad, %struct.bnad* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %235

17:                                               ; preds = %11
  %18 = load %struct.bnad*, %struct.bnad** %4, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 5
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %232

28:                                               ; preds = %17
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %228, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.bnad*, %struct.bnad** %4, align 8
  %32 = getelementptr inbounds %struct.bnad, %struct.bnad* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %231

35:                                               ; preds = %29
  %36 = load %struct.bnad*, %struct.bnad** %4, align 8
  %37 = getelementptr inbounds %struct.bnad, %struct.bnad* %36, i32 0, i32 5
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = icmp ne %struct.TYPE_10__* %48, null
  br i1 %49, label %50, label %227

50:                                               ; preds = %35
  %51 = load %struct.bnad*, %struct.bnad** %4, align 8
  %52 = getelementptr inbounds %struct.bnad, %struct.bnad* %51, i32 0, i32 5
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.bna_rcb**, %struct.bna_rcb*** %64, align 8
  %66 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %65, i64 0
  %67 = load %struct.bna_rcb*, %struct.bna_rcb** %66, align 8
  %68 = icmp ne %struct.bna_rcb* %67, null
  br i1 %68, label %69, label %227

69:                                               ; preds = %50
  %70 = load %struct.bnad*, %struct.bnad** %4, align 8
  %71 = getelementptr inbounds %struct.bnad, %struct.bnad* %70, i32 0, i32 5
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load %struct.bna_rcb**, %struct.bna_rcb*** %83, align 8
  %85 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %84, i64 0
  %86 = load %struct.bna_rcb*, %struct.bna_rcb** %85, align 8
  %87 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = icmp ne %struct.TYPE_9__* %88, null
  br i1 %89, label %90, label %227

90:                                               ; preds = %69
  %91 = load %struct.bnad*, %struct.bnad** %4, align 8
  %92 = getelementptr inbounds %struct.bnad, %struct.bnad* %91, i32 0, i32 5
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  store i32 0, i32* %115, align 4
  %116 = load %struct.bnad*, %struct.bnad** %4, align 8
  %117 = getelementptr inbounds %struct.bnad, %struct.bnad* %116, i32 0, i32 5
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load %struct.bnad*, %struct.bnad** %4, align 8
  %138 = getelementptr inbounds %struct.bnad, %struct.bnad* %137, i32 0, i32 5
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  %155 = load %struct.bnad*, %struct.bnad** %4, align 8
  %156 = getelementptr inbounds %struct.bnad, %struct.bnad* %155, i32 0, i32 5
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %5, align 8
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load %struct.bnad*, %struct.bnad** %4, align 8
  %174 = getelementptr inbounds %struct.bnad, %struct.bnad* %173, i32 0, i32 5
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* %6, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %6, align 4
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i32, i32* %186, i64 %189
  store i32 %185, i32* %190, align 4
  %191 = load %struct.bnad*, %struct.bnad** %4, align 8
  %192 = getelementptr inbounds %struct.bnad, %struct.bnad* %191, i32 0, i32 5
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %5, align 8
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %6, align 4
  %207 = sext i32 %205 to i64
  %208 = getelementptr inbounds i32, i32* %204, i64 %207
  store i32 %203, i32* %208, align 4
  %209 = load %struct.bnad*, %struct.bnad** %4, align 8
  %210 = getelementptr inbounds %struct.bnad, %struct.bnad* %209, i32 0, i32 5
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %6, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %6, align 4
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  store i32 %221, i32* %226, align 4
  br label %227

227:                                              ; preds = %90, %69, %50, %35
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %8, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %8, align 4
  br label %29

231:                                              ; preds = %29
  br label %232

232:                                              ; preds = %231, %27
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %11

235:                                              ; preds = %11
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %509, %235
  %237 = load i32, i32* %7, align 4
  %238 = load %struct.bnad*, %struct.bnad** %4, align 8
  %239 = getelementptr inbounds %struct.bnad, %struct.bnad* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = icmp slt i32 %237, %240
  br i1 %241, label %242, label %512

242:                                              ; preds = %236
  %243 = load %struct.bnad*, %struct.bnad** %4, align 8
  %244 = getelementptr inbounds %struct.bnad, %struct.bnad* %243, i32 0, i32 5
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %244, align 8
  %246 = load i32, i32* %7, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %242
  br label %509

253:                                              ; preds = %242
  store i32 0, i32* %8, align 4
  br label %254

254:                                              ; preds = %505, %253
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.bnad*, %struct.bnad** %4, align 8
  %257 = getelementptr inbounds %struct.bnad, %struct.bnad* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %508

260:                                              ; preds = %254
  %261 = load %struct.bnad*, %struct.bnad** %4, align 8
  %262 = getelementptr inbounds %struct.bnad, %struct.bnad* %261, i32 0, i32 5
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %271, i32 0, i32 0
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = icmp ne %struct.TYPE_10__* %273, null
  br i1 %274, label %275, label %504

275:                                              ; preds = %260
  %276 = load %struct.bnad*, %struct.bnad** %4, align 8
  %277 = getelementptr inbounds %struct.bnad, %struct.bnad* %276, i32 0, i32 5
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i64 %280
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %282, align 8
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 0
  %288 = load %struct.TYPE_10__*, %struct.TYPE_10__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 0
  %290 = load %struct.bna_rcb**, %struct.bna_rcb*** %289, align 8
  %291 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %290, i64 0
  %292 = load %struct.bna_rcb*, %struct.bna_rcb** %291, align 8
  %293 = icmp ne %struct.bna_rcb* %292, null
  br i1 %293, label %294, label %389

294:                                              ; preds = %275
  %295 = load %struct.bnad*, %struct.bnad** %4, align 8
  %296 = getelementptr inbounds %struct.bnad, %struct.bnad* %295, i32 0, i32 5
  %297 = load %struct.TYPE_12__*, %struct.TYPE_12__** %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %301, align 8
  %303 = load i32, i32* %8, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load %struct.bna_rcb**, %struct.bna_rcb*** %308, align 8
  %310 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %309, i64 0
  %311 = load %struct.bna_rcb*, %struct.bna_rcb** %310, align 8
  %312 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %311, i32 0, i32 2
  %313 = load %struct.TYPE_9__*, %struct.TYPE_9__** %312, align 8
  %314 = icmp ne %struct.TYPE_9__* %313, null
  br i1 %314, label %315, label %389

315:                                              ; preds = %294
  %316 = load %struct.bnad*, %struct.bnad** %4, align 8
  %317 = getelementptr inbounds %struct.bnad, %struct.bnad* %316, i32 0, i32 5
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %317, align 8
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i64 %320
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 0
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 0
  %330 = load %struct.bna_rcb**, %struct.bna_rcb*** %329, align 8
  %331 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %330, i64 0
  %332 = load %struct.bna_rcb*, %struct.bna_rcb** %331, align 8
  store %struct.bna_rcb* %332, %struct.bna_rcb** %9, align 8
  %333 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %334 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %333, i32 0, i32 2
  %335 = load %struct.TYPE_9__*, %struct.TYPE_9__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** %5, align 8
  %339 = load i32, i32* %6, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %6, align 4
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  store i32 %337, i32* %342, align 4
  %343 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %344 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %343, i32 0, i32 2
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 2
  %347 = load i32, i32* %346, align 4
  %348 = load i32*, i32** %5, align 8
  %349 = load i32, i32* %6, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %6, align 4
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i32, i32* %348, i64 %351
  store i32 %347, i32* %352, align 4
  %353 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %354 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %353, i32 0, i32 2
  %355 = load %struct.TYPE_9__*, %struct.TYPE_9__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = load i32*, i32** %5, align 8
  %359 = load i32, i32* %6, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %6, align 4
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  store i32 %357, i32* %362, align 4
  %363 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %364 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %363, i32 0, i32 2
  %365 = load %struct.TYPE_9__*, %struct.TYPE_9__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = load i32*, i32** %5, align 8
  %369 = load i32, i32* %6, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %6, align 4
  %371 = sext i32 %369 to i64
  %372 = getelementptr inbounds i32, i32* %368, i64 %371
  store i32 %367, i32* %372, align 4
  %373 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %374 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = load i32*, i32** %5, align 8
  %377 = load i32, i32* %6, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %6, align 4
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  store i32 %375, i32* %380, align 4
  %381 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %382 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32*, i32** %5, align 8
  %385 = load i32, i32* %6, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %6, align 4
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  store i32 %383, i32* %388, align 4
  br label %389

389:                                              ; preds = %315, %294, %275
  %390 = load %struct.bnad*, %struct.bnad** %4, align 8
  %391 = getelementptr inbounds %struct.bnad, %struct.bnad* %390, i32 0, i32 5
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %391, align 8
  %393 = load i32, i32* %7, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 0
  %397 = load %struct.TYPE_11__*, %struct.TYPE_11__** %396, align 8
  %398 = load i32, i32* %8, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i32 0, i32 0
  %402 = load %struct.TYPE_10__*, %struct.TYPE_10__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %402, i32 0, i32 0
  %404 = load %struct.bna_rcb**, %struct.bna_rcb*** %403, align 8
  %405 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %404, i64 1
  %406 = load %struct.bna_rcb*, %struct.bna_rcb** %405, align 8
  %407 = icmp ne %struct.bna_rcb* %406, null
  br i1 %407, label %408, label %503

408:                                              ; preds = %389
  %409 = load %struct.bnad*, %struct.bnad** %4, align 8
  %410 = getelementptr inbounds %struct.bnad, %struct.bnad* %409, i32 0, i32 5
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %410, align 8
  %412 = load i32, i32* %7, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i64 %413
  %415 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %414, i32 0, i32 0
  %416 = load %struct.TYPE_11__*, %struct.TYPE_11__** %415, align 8
  %417 = load i32, i32* %8, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 0
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i32 0, i32 0
  %423 = load %struct.bna_rcb**, %struct.bna_rcb*** %422, align 8
  %424 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %423, i64 1
  %425 = load %struct.bna_rcb*, %struct.bna_rcb** %424, align 8
  %426 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %425, i32 0, i32 2
  %427 = load %struct.TYPE_9__*, %struct.TYPE_9__** %426, align 8
  %428 = icmp ne %struct.TYPE_9__* %427, null
  br i1 %428, label %429, label %503

429:                                              ; preds = %408
  %430 = load %struct.bnad*, %struct.bnad** %4, align 8
  %431 = getelementptr inbounds %struct.bnad, %struct.bnad* %430, i32 0, i32 5
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %431, align 8
  %433 = load i32, i32* %7, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i64 %434
  %436 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %435, i32 0, i32 0
  %437 = load %struct.TYPE_11__*, %struct.TYPE_11__** %436, align 8
  %438 = load i32, i32* %8, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %437, i64 %439
  %441 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_10__*, %struct.TYPE_10__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 0
  %444 = load %struct.bna_rcb**, %struct.bna_rcb*** %443, align 8
  %445 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %444, i64 1
  %446 = load %struct.bna_rcb*, %struct.bna_rcb** %445, align 8
  store %struct.bna_rcb* %446, %struct.bna_rcb** %9, align 8
  %447 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %448 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %447, i32 0, i32 2
  %449 = load %struct.TYPE_9__*, %struct.TYPE_9__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = load i32*, i32** %5, align 8
  %453 = load i32, i32* %6, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %6, align 4
  %455 = sext i32 %453 to i64
  %456 = getelementptr inbounds i32, i32* %452, i64 %455
  store i32 %451, i32* %456, align 4
  %457 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %458 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %457, i32 0, i32 2
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %459, i32 0, i32 2
  %461 = load i32, i32* %460, align 4
  %462 = load i32*, i32** %5, align 8
  %463 = load i32, i32* %6, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %6, align 4
  %465 = sext i32 %463 to i64
  %466 = getelementptr inbounds i32, i32* %462, i64 %465
  store i32 %461, i32* %466, align 4
  %467 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %468 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %467, i32 0, i32 2
  %469 = load %struct.TYPE_9__*, %struct.TYPE_9__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = load i32*, i32** %5, align 8
  %473 = load i32, i32* %6, align 4
  %474 = add nsw i32 %473, 1
  store i32 %474, i32* %6, align 4
  %475 = sext i32 %473 to i64
  %476 = getelementptr inbounds i32, i32* %472, i64 %475
  store i32 %471, i32* %476, align 4
  %477 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %478 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %477, i32 0, i32 2
  %479 = load %struct.TYPE_9__*, %struct.TYPE_9__** %478, align 8
  %480 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = load i32*, i32** %5, align 8
  %483 = load i32, i32* %6, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %6, align 4
  %485 = sext i32 %483 to i64
  %486 = getelementptr inbounds i32, i32* %482, i64 %485
  store i32 %481, i32* %486, align 4
  %487 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %488 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  %490 = load i32*, i32** %5, align 8
  %491 = load i32, i32* %6, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %6, align 4
  %493 = sext i32 %491 to i64
  %494 = getelementptr inbounds i32, i32* %490, i64 %493
  store i32 %489, i32* %494, align 4
  %495 = load %struct.bna_rcb*, %struct.bna_rcb** %9, align 8
  %496 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = load i32*, i32** %5, align 8
  %499 = load i32, i32* %6, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %6, align 4
  %501 = sext i32 %499 to i64
  %502 = getelementptr inbounds i32, i32* %498, i64 %501
  store i32 %497, i32* %502, align 4
  br label %503

503:                                              ; preds = %429, %408, %389
  br label %504

504:                                              ; preds = %503, %260
  br label %505

505:                                              ; preds = %504
  %506 = load i32, i32* %8, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %8, align 4
  br label %254

508:                                              ; preds = %254
  br label %509

509:                                              ; preds = %508, %252
  %510 = load i32, i32* %7, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %7, align 4
  br label %236

512:                                              ; preds = %236
  store i32 0, i32* %7, align 4
  br label %513

513:                                              ; preds = %630, %512
  %514 = load i32, i32* %7, align 4
  %515 = load %struct.bnad*, %struct.bnad** %4, align 8
  %516 = getelementptr inbounds %struct.bnad, %struct.bnad* %515, i32 0, i32 2
  %517 = load i32, i32* %516, align 8
  %518 = icmp slt i32 %514, %517
  br i1 %518, label %519, label %633

519:                                              ; preds = %513
  %520 = load %struct.bnad*, %struct.bnad** %4, align 8
  %521 = getelementptr inbounds %struct.bnad, %struct.bnad* %520, i32 0, i32 4
  %522 = load %struct.TYPE_7__*, %struct.TYPE_7__** %521, align 8
  %523 = load i32, i32* %7, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %522, i64 %524
  %526 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %525, i32 0, i32 1
  %527 = load i32, i32* %526, align 8
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %530, label %529

529:                                              ; preds = %519
  br label %630

530:                                              ; preds = %519
  store i32 0, i32* %8, align 4
  br label %531

531:                                              ; preds = %626, %530
  %532 = load i32, i32* %8, align 4
  %533 = load %struct.bnad*, %struct.bnad** %4, align 8
  %534 = getelementptr inbounds %struct.bnad, %struct.bnad* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 4
  %536 = icmp slt i32 %532, %535
  br i1 %536, label %537, label %629

537:                                              ; preds = %531
  %538 = load %struct.bnad*, %struct.bnad** %4, align 8
  %539 = getelementptr inbounds %struct.bnad, %struct.bnad* %538, i32 0, i32 4
  %540 = load %struct.TYPE_7__*, %struct.TYPE_7__** %539, align 8
  %541 = load i32, i32* %7, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %540, i64 %542
  %544 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %543, i32 0, i32 0
  %545 = load %struct.bna_tcb**, %struct.bna_tcb*** %544, align 8
  %546 = load i32, i32* %8, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %545, i64 %547
  %549 = load %struct.bna_tcb*, %struct.bna_tcb** %548, align 8
  %550 = icmp ne %struct.bna_tcb* %549, null
  br i1 %550, label %551, label %625

551:                                              ; preds = %537
  %552 = load %struct.bnad*, %struct.bnad** %4, align 8
  %553 = getelementptr inbounds %struct.bnad, %struct.bnad* %552, i32 0, i32 4
  %554 = load %struct.TYPE_7__*, %struct.TYPE_7__** %553, align 8
  %555 = load i32, i32* %7, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %554, i64 %556
  %558 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %557, i32 0, i32 0
  %559 = load %struct.bna_tcb**, %struct.bna_tcb*** %558, align 8
  %560 = load i32, i32* %8, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %559, i64 %561
  %563 = load %struct.bna_tcb*, %struct.bna_tcb** %562, align 8
  %564 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %563, i32 0, i32 3
  %565 = load %struct.TYPE_8__*, %struct.TYPE_8__** %564, align 8
  %566 = icmp ne %struct.TYPE_8__* %565, null
  br i1 %566, label %567, label %625

567:                                              ; preds = %551
  %568 = load %struct.bnad*, %struct.bnad** %4, align 8
  %569 = getelementptr inbounds %struct.bnad, %struct.bnad* %568, i32 0, i32 4
  %570 = load %struct.TYPE_7__*, %struct.TYPE_7__** %569, align 8
  %571 = load i32, i32* %7, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %570, i64 %572
  %574 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %573, i32 0, i32 0
  %575 = load %struct.bna_tcb**, %struct.bna_tcb*** %574, align 8
  %576 = load i32, i32* %8, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds %struct.bna_tcb*, %struct.bna_tcb** %575, i64 %577
  %579 = load %struct.bna_tcb*, %struct.bna_tcb** %578, align 8
  store %struct.bna_tcb* %579, %struct.bna_tcb** %10, align 8
  %580 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %581 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %580, i32 0, i32 3
  %582 = load %struct.TYPE_8__*, %struct.TYPE_8__** %581, align 8
  %583 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %582, i32 0, i32 1
  %584 = load i32, i32* %583, align 4
  %585 = load i32*, i32** %5, align 8
  %586 = load i32, i32* %6, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %6, align 4
  %588 = sext i32 %586 to i64
  %589 = getelementptr inbounds i32, i32* %585, i64 %588
  store i32 %584, i32* %589, align 4
  %590 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %591 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %590, i32 0, i32 3
  %592 = load %struct.TYPE_8__*, %struct.TYPE_8__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %592, i32 0, i32 0
  %594 = load i32, i32* %593, align 4
  %595 = load i32*, i32** %5, align 8
  %596 = load i32, i32* %6, align 4
  %597 = add nsw i32 %596, 1
  store i32 %597, i32* %6, align 4
  %598 = sext i32 %596 to i64
  %599 = getelementptr inbounds i32, i32* %595, i64 %598
  store i32 %594, i32* %599, align 4
  %600 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %601 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %600, i32 0, i32 2
  %602 = load i32, i32* %601, align 4
  %603 = load i32*, i32** %5, align 8
  %604 = load i32, i32* %6, align 4
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %6, align 4
  %606 = sext i32 %604 to i64
  %607 = getelementptr inbounds i32, i32* %603, i64 %606
  store i32 %602, i32* %607, align 4
  %608 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %609 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %608, i32 0, i32 1
  %610 = load i32, i32* %609, align 8
  %611 = load i32*, i32** %5, align 8
  %612 = load i32, i32* %6, align 4
  %613 = add nsw i32 %612, 1
  store i32 %613, i32* %6, align 4
  %614 = sext i32 %612 to i64
  %615 = getelementptr inbounds i32, i32* %611, i64 %614
  store i32 %610, i32* %615, align 4
  %616 = load %struct.bna_tcb*, %struct.bna_tcb** %10, align 8
  %617 = getelementptr inbounds %struct.bna_tcb, %struct.bna_tcb* %616, i32 0, i32 0
  %618 = load i32*, i32** %617, align 8
  %619 = load i32, i32* %618, align 4
  %620 = load i32*, i32** %5, align 8
  %621 = load i32, i32* %6, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %6, align 4
  %623 = sext i32 %621 to i64
  %624 = getelementptr inbounds i32, i32* %620, i64 %623
  store i32 %619, i32* %624, align 4
  br label %625

625:                                              ; preds = %567, %551, %537
  br label %626

626:                                              ; preds = %625
  %627 = load i32, i32* %8, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %8, align 4
  br label %531

629:                                              ; preds = %531
  br label %630

630:                                              ; preds = %629, %529
  %631 = load i32, i32* %7, align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %7, align 4
  br label %513

633:                                              ; preds = %513
  %634 = load i32, i32* %6, align 4
  ret i32 %634
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
