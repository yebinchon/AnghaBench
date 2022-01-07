; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_stack_limits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-settings.c_blk_stack_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_stack_limits(%struct.queue_limits* %0, %struct.queue_limits* %1, i32 %2) #0 {
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.queue_limits*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.queue_limits* %0, %struct.queue_limits** %4, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %12 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %11, i32 0, i32 17
  %13 = load i8*, i8** %12, align 8
  %14 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %15 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %14, i32 0, i32 17
  %16 = load i8*, i8** %15, align 8
  %17 = call i8* @min_not_zero(i8* %13, i8* %16)
  %18 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %19 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %18, i32 0, i32 17
  store i8* %17, i8** %19, align 8
  %20 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %21 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %20, i32 0, i32 16
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %24 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %23, i32 0, i32 16
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @min_not_zero(i8* %22, i8* %25)
  %27 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %28 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %27, i32 0, i32 16
  store i8* %26, i8** %28, align 8
  %29 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %30 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %29, i32 0, i32 15
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %33 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %32, i32 0, i32 15
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @min_not_zero(i8* %31, i8* %34)
  %36 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %37 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %36, i32 0, i32 15
  store i8* %35, i8** %37, align 8
  %38 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %39 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %38, i32 0, i32 14
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %42 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %41, i32 0, i32 14
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @min_not_zero(i8* %40, i8* %43)
  %45 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %46 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %45, i32 0, i32 14
  store i8* %44, i8** %46, align 8
  %47 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %48 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %47, i32 0, i32 13
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %51 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %50, i32 0, i32 13
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @min_not_zero(i8* %49, i8* %52)
  %54 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %55 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %54, i32 0, i32 13
  store i8* %53, i8** %55, align 8
  %56 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %57 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %56, i32 0, i32 12
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %60 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %59, i32 0, i32 12
  %61 = load i8*, i8** %60, align 8
  %62 = call i8* @min_not_zero(i8* %58, i8* %61)
  %63 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %64 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %63, i32 0, i32 12
  store i8* %62, i8** %64, align 8
  %65 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %66 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %69 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @queue_limit_alignment_offset(%struct.queue_limits* %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %76 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %114

80:                                               ; preds = %3
  %81 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %82 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %85 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @max(i32 %83, i32 %86)
  %88 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %89 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add i32 %87, %90
  store i32 %91, i32* %7, align 4
  %92 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %93 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %96 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @max(i32 %94, i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = add i32 %98, %99
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @max(i32 %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @min(i32 %104, i32 %105)
  %107 = sub nsw i32 %106, 1
  %108 = and i32 %103, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %80
  %111 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %112 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %111, i32 0, i32 0
  store i32 1, i32* %112, align 8
  store i32 -1, i32* %10, align 4
  br label %113

113:                                              ; preds = %110, %80
  br label %114

114:                                              ; preds = %113, %3
  %115 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %116 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %119 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @max(i32 %117, i32 %120)
  %122 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %123 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %125 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %128 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @max(i32 %126, i32 %129)
  %131 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %132 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %134 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %137 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @max(i32 %135, i32 %138)
  %140 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %141 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %143 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %146 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @lcm(i32 %144, i32 %147)
  %149 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %150 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %149, i32 0, i32 5
  store i32 %148, i32* %150, align 4
  %151 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %152 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %151, i32 0, i32 11
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %155 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %154, i32 0, i32 11
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %159 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %162 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = and i32 %163, %160
  store i32 %164, i32* %162, align 8
  %165 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %166 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %169 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  %172 = and i32 %167, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %114
  %175 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %176 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %179 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 8
  %180 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %181 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  store i32 -1, i32* %10, align 4
  br label %182

182:                                              ; preds = %174, %114
  %183 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %184 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %187 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sub i32 %188, 1
  %190 = and i32 %185, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %182
  %193 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %194 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %197 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %196, i32 0, i32 3
  store i32 %195, i32* %197, align 4
  %198 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %199 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %198, i32 0, i32 0
  store i32 1, i32* %199, align 8
  store i32 -1, i32* %10, align 4
  br label %200

200:                                              ; preds = %192, %182
  %201 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %202 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %201, i32 0, i32 5
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %205 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = sub i32 %206, 1
  %208 = and i32 %203, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %200
  %211 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %212 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %211, i32 0, i32 5
  store i32 0, i32* %212, align 4
  %213 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %214 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %213, i32 0, i32 0
  store i32 1, i32* %214, align 8
  store i32 -1, i32* %10, align 4
  br label %215

215:                                              ; preds = %210, %200
  %216 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %217 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %9, align 4
  %220 = call i32 @lcm(i32 %218, i32 %219)
  %221 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %222 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %225 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @max(i32 %223, i32 %226)
  %228 = sub nsw i32 %227, 1
  %229 = and i32 %220, %228
  %230 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %231 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %230, i32 0, i32 1
  store i32 %229, i32* %231, align 4
  %232 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %233 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %236 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  %238 = sub nsw i32 %237, 1
  %239 = and i32 %234, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %215
  %242 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %243 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %242, i32 0, i32 0
  store i32 1, i32* %243, align 8
  store i32 -1, i32* %10, align 4
  br label %244

244:                                              ; preds = %241, %215
  %245 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %246 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %318

249:                                              ; preds = %244
  %250 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @queue_limit_discard_alignment(%struct.queue_limits* %250, i32 %251)
  store i32 %252, i32* %9, align 4
  %253 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %254 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %288

257:                                              ; preds = %249
  %258 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %259 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %9, align 4
  %262 = icmp ne i32 %260, %261
  br i1 %262, label %263, label %288

263:                                              ; preds = %257
  %264 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %265 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %268 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %267, i32 0, i32 7
  %269 = load i32, i32* %268, align 4
  %270 = add i32 %266, %269
  store i32 %270, i32* %7, align 4
  %271 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %272 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %271, i32 0, i32 6
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %9, align 4
  %275 = add i32 %273, %274
  store i32 %275, i32* %8, align 4
  %276 = load i32, i32* %7, align 4
  %277 = load i32, i32* %8, align 4
  %278 = call i32 @max(i32 %276, i32 %277)
  %279 = load i32, i32* %7, align 4
  %280 = load i32, i32* %8, align 4
  %281 = call i32 @min(i32 %279, i32 %280)
  %282 = srem i32 %278, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %263
  %285 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %286 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %285, i32 0, i32 8
  store i32 1, i32* %286, align 8
  br label %287

287:                                              ; preds = %284, %263
  br label %288

288:                                              ; preds = %287, %257, %249
  %289 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %290 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %289, i32 0, i32 9
  %291 = load i8*, i8** %290, align 8
  %292 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %293 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %292, i32 0, i32 9
  %294 = load i8*, i8** %293, align 8
  %295 = call i8* @min_not_zero(i8* %291, i8* %294)
  %296 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %297 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %296, i32 0, i32 9
  store i8* %295, i8** %297, align 8
  %298 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %299 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %298, i32 0, i32 6
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.queue_limits*, %struct.queue_limits** %5, align 8
  %302 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @max(i32 %300, i32 %303)
  %305 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %306 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %305, i32 0, i32 6
  store i32 %304, i32* %306, align 8
  %307 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %308 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %307, i32 0, i32 7
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %9, align 4
  %311 = call i32 @lcm(i32 %309, i32 %310)
  %312 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %313 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = srem i32 %311, %314
  %316 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %317 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %316, i32 0, i32 7
  store i32 %315, i32* %317, align 4
  br label %318

318:                                              ; preds = %288, %244
  %319 = load i32, i32* %10, align 4
  ret i32 %319
}

declare dso_local i8* @min_not_zero(i8*, i8*) #1

declare dso_local i32 @queue_limit_alignment_offset(%struct.queue_limits*, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @lcm(i32, i32) #1

declare dso_local i32 @queue_limit_discard_alignment(%struct.queue_limits*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
