; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_clear_badblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_md_clear_badblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.badblocks = type { i32, i32, i32, i32, i32* }

@MD_MAX_BADBLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.badblocks*, i32, i32)* @md_clear_badblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @md_clear_badblocks(%struct.badblocks* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.badblocks*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
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
  %18 = alloca i32, align 4
  store %struct.badblocks* %0, %struct.badblocks** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %23 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %3
  %27 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %28 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = shl i32 1, %29
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %35 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = ashr i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %40 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = ashr i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %44, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %26, %3
  %48 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %49 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %48, i32 0, i32 3
  %50 = call i32 @write_seqlock_irq(i32* %49)
  %51 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %52 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %54 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %55 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %80, %47
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 %58, %59
  %61 = icmp sgt i32 %60, 1
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %63, %64
  %66 = sdiv i32 %65, 2
  store i32 %66, i32* %12, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @BB_OFFSET(i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %62
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %8, align 4
  br label %80

78:                                               ; preds = %62
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %76
  br label %57

81:                                               ; preds = %57
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %267

85:                                               ; preds = %81
  %86 = load i32*, i32** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @BB_OFFSET(i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @BB_LEN(i32 %96)
  %98 = add nsw i32 %91, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %179

101:                                              ; preds = %85
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @BB_ACK(i32 %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @BB_OFFSET(i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @BB_LEN(i32 %119)
  %121 = add nsw i32 %114, %120
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %165

125:                                              ; preds = %101
  %126 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %127 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MD_MAX_BADBLOCKS, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 0, i32* %11, align 4
  br label %270

132:                                              ; preds = %125
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %143 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %8, align 4
  %146 = sub nsw i32 %144, %145
  %147 = mul nsw i32 %146, 8
  %148 = call i32 @memmove(i32* %137, i32* %141, i32 %147)
  %149 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %150 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %15, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load i32, i32* %14, align 4
  %158 = call i32 @BB_MAKE(i32 %153, i32 %156, i32 %157)
  %159 = load i32*, i32** %7, align 8
  %160 = load i32, i32* %8, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %158, i32* %162, align 4
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %165

165:                                              ; preds = %132, %101
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %10, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @BB_MAKE(i32 %166, i32 %169, i32 %170)
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %171, i32* %175, align 4
  %176 = load i32, i32* %8, align 4
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, -1
  store i32 %178, i32* %8, align 4
  br label %179

179:                                              ; preds = %165, %85
  br label %180

180:                                              ; preds = %233, %179
  %181 = load i32, i32* %8, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %199

183:                                              ; preds = %180
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @BB_OFFSET(i32 %188)
  %190 = load i32*, i32** %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @BB_LEN(i32 %194)
  %196 = add nsw i32 %189, %195
  %197 = load i32, i32* %5, align 4
  %198 = icmp sgt i32 %196, %197
  br label %199

199:                                              ; preds = %183, %180
  %200 = phi i1 [ false, %180 ], [ %198, %183 ]
  br i1 %200, label %201, label %236

201:                                              ; preds = %199
  %202 = load i32*, i32** %7, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @BB_OFFSET(i32 %206)
  %208 = load i32, i32* %5, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %233

210:                                              ; preds = %201
  %211 = load i32*, i32** %7, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @BB_ACK(i32 %215)
  store i32 %216, i32* %17, align 4
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @BB_OFFSET(i32 %221)
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %18, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* %18, align 4
  %226 = sub nsw i32 %224, %225
  %227 = load i32, i32* %17, align 4
  %228 = call i32 @BB_MAKE(i32 %223, i32 %226, i32 %227)
  %229 = load i32*, i32** %7, align 8
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  store i32 %228, i32* %232, align 4
  br label %236

233:                                              ; preds = %201
  %234 = load i32, i32* %8, align 4
  %235 = add nsw i32 %234, -1
  store i32 %235, i32* %8, align 4
  br label %180

236:                                              ; preds = %210, %199
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %8, align 4
  %239 = sub nsw i32 %237, %238
  %240 = icmp sgt i32 %239, 1
  br i1 %240, label %241, label %266

241:                                              ; preds = %236
  %242 = load i32*, i32** %7, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32*, i32** %7, align 8
  %248 = load i32, i32* %9, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  %251 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %252 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %9, align 4
  %255 = sub nsw i32 %253, %254
  %256 = mul nsw i32 %255, 8
  %257 = call i32 @memmove(i32* %246, i32* %250, i32 %256)
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %8, align 4
  %260 = sub nsw i32 %258, %259
  %261 = sub nsw i32 %260, 1
  %262 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %263 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %241, %236
  br label %267

267:                                              ; preds = %266, %81
  %268 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %269 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %268, i32 0, i32 2
  store i32 1, i32* %269, align 8
  br label %270

270:                                              ; preds = %267, %131
  %271 = load %struct.badblocks*, %struct.badblocks** %4, align 8
  %272 = getelementptr inbounds %struct.badblocks, %struct.badblocks* %271, i32 0, i32 3
  %273 = call i32 @write_sequnlock_irq(i32* %272)
  %274 = load i32, i32* %11, align 4
  ret i32 %274
}

declare dso_local i32 @write_seqlock_irq(i32*) #1

declare dso_local i32 @BB_OFFSET(i32) #1

declare dso_local i32 @BB_LEN(i32) #1

declare dso_local i32 @BB_ACK(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @BB_MAKE(i32, i32, i32) #1

declare dso_local i32 @write_sequnlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
