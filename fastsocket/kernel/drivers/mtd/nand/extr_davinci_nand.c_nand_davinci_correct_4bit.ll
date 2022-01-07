; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_correct_4bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_davinci_nand.c_nand_davinci_correct_4bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.davinci_nand_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NAND_4BIT_ECC_LOAD_OFFSET = common dso_local global i32 0, align 4
@NANDFSR_OFFSET = common dso_local global i32 0, align 4
@NAND_ERR_ADD1_OFFSET = common dso_local global i32 0, align 4
@NANDFCR_OFFSET = common dso_local global i32 0, align 4
@NAND_ERR_ERRVAL1_OFFSET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NAND_ERR_ADD2_OFFSET = common dso_local global i32 0, align 4
@NAND_ERR_ERRVAL2_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32*, i32*)* @nand_davinci_correct_4bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_davinci_correct_4bit(%struct.mtd_info* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.davinci_nand_info*, align 8
  %12 = alloca [8 x i16], align 16
  %13 = alloca i16*, align 8
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %21 = call %struct.davinci_nand_info* @to_davinci_nand(%struct.mtd_info* %20)
  store %struct.davinci_nand_info* %21, %struct.davinci_nand_info** %11, align 8
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %34, %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 10
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %38

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %22

37:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %273

38:                                               ; preds = %32
  %39 = load i32*, i32** %8, align 8
  %40 = ptrtoint i32* %39 to i32
  %41 = and i32 1, %40
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %273

47:                                               ; preds = %38
  %48 = load i32*, i32** %8, align 8
  %49 = bitcast i32* %48 to i16*
  store i16* %49, i16** %13, align 8
  %50 = load i16*, i16** %13, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 0
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 0
  %55 = and i32 %54, 1023
  %56 = trunc i32 %55 to i16
  %57 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 0
  store i16 %56, i16* %57, align 16
  %58 = load i16*, i16** %13, align 8
  %59 = getelementptr inbounds i16, i16* %58, i64 0
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = ashr i32 %61, 10
  %63 = and i32 %62, 63
  %64 = load i16*, i16** %13, align 8
  %65 = getelementptr inbounds i16, i16* %64, i64 1
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  %68 = shl i32 %67, 6
  %69 = and i32 %68, 960
  %70 = or i32 %63, %69
  %71 = trunc i32 %70 to i16
  %72 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 1
  store i16 %71, i16* %72, align 2
  %73 = load i16*, i16** %13, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 1
  %75 = load i16, i16* %74, align 2
  %76 = zext i16 %75 to i32
  %77 = ashr i32 %76, 4
  %78 = and i32 %77, 1023
  %79 = trunc i32 %78 to i16
  %80 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 2
  store i16 %79, i16* %80, align 4
  %81 = load i16*, i16** %13, align 8
  %82 = getelementptr inbounds i16, i16* %81, i64 1
  %83 = load i16, i16* %82, align 2
  %84 = zext i16 %83 to i32
  %85 = ashr i32 %84, 14
  %86 = and i32 %85, 3
  %87 = load i16*, i16** %13, align 8
  %88 = getelementptr inbounds i16, i16* %87, i64 2
  %89 = load i16, i16* %88, align 2
  %90 = zext i16 %89 to i32
  %91 = shl i32 %90, 2
  %92 = and i32 %91, 1020
  %93 = or i32 %86, %92
  %94 = trunc i32 %93 to i16
  %95 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 3
  store i16 %94, i16* %95, align 2
  %96 = load i16*, i16** %13, align 8
  %97 = getelementptr inbounds i16, i16* %96, i64 2
  %98 = load i16, i16* %97, align 2
  %99 = zext i16 %98 to i32
  %100 = ashr i32 %99, 8
  %101 = load i16*, i16** %13, align 8
  %102 = getelementptr inbounds i16, i16* %101, i64 3
  %103 = load i16, i16* %102, align 2
  %104 = zext i16 %103 to i32
  %105 = shl i32 %104, 8
  %106 = and i32 %105, 768
  %107 = or i32 %100, %106
  %108 = trunc i32 %107 to i16
  %109 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 4
  store i16 %108, i16* %109, align 8
  %110 = load i16*, i16** %13, align 8
  %111 = getelementptr inbounds i16, i16* %110, i64 3
  %112 = load i16, i16* %111, align 2
  %113 = zext i16 %112 to i32
  %114 = ashr i32 %113, 2
  %115 = and i32 %114, 1023
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 5
  store i16 %116, i16* %117, align 2
  %118 = load i16*, i16** %13, align 8
  %119 = getelementptr inbounds i16, i16* %118, i64 3
  %120 = load i16, i16* %119, align 2
  %121 = zext i16 %120 to i32
  %122 = ashr i32 %121, 12
  %123 = and i32 %122, 15
  %124 = load i16*, i16** %13, align 8
  %125 = getelementptr inbounds i16, i16* %124, i64 4
  %126 = load i16, i16* %125, align 2
  %127 = zext i16 %126 to i32
  %128 = shl i32 %127, 4
  %129 = and i32 %128, 1008
  %130 = or i32 %123, %129
  %131 = trunc i32 %130 to i16
  %132 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 6
  store i16 %131, i16* %132, align 4
  %133 = load i16*, i16** %13, align 8
  %134 = getelementptr inbounds i16, i16* %133, i64 4
  %135 = load i16, i16* %134, align 2
  %136 = zext i16 %135 to i32
  %137 = ashr i32 %136, 6
  %138 = and i32 %137, 1023
  %139 = trunc i32 %138 to i16
  %140 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 7
  store i16 %139, i16* %140, align 2
  store i32 7, i32* %10, align 4
  br label %141

141:                                              ; preds = %152, %47
  %142 = load i32, i32* %10, align 4
  %143 = icmp sge i32 %142, 0
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %146 = load i32, i32* @NAND_4BIT_ECC_LOAD_OFFSET, align 4
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x i16], [8 x i16]* %12, i64 0, i64 %148
  %150 = load i16, i16* %149, align 2
  %151 = call i32 @davinci_nand_writel(%struct.davinci_nand_info* %145, i32 %146, i16 zeroext %150)
  br label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %10, align 4
  br label %141

155:                                              ; preds = %141
  %156 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %157 = load i32, i32* @NANDFSR_OFFSET, align 4
  %158 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %156, i32 %157)
  %159 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %161 = call i32 @nand_davinci_readecc_4bit(%struct.davinci_nand_info* %159, i32* %160)
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %163 = load i32, i32* %162, align 16
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %163, %165
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 2
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %166, %168
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 3
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %169, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %155
  store i32 0, i32* %5, align 4
  br label %273

175:                                              ; preds = %155
  %176 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %177 = load i32, i32* @NAND_ERR_ADD1_OFFSET, align 4
  %178 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %176, i32 %177)
  %179 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %180 = load i32, i32* @NANDFCR_OFFSET, align 4
  %181 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %182 = load i32, i32* @NANDFCR_OFFSET, align 4
  %183 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %181, i32 %182)
  %184 = zext i16 %183 to i32
  %185 = call zeroext i16 @BIT(i32 13)
  %186 = zext i16 %185 to i32
  %187 = or i32 %184, %186
  %188 = trunc i32 %187 to i16
  %189 = call i32 @davinci_nand_writel(%struct.davinci_nand_info* %179, i32 %180, i16 zeroext %188)
  br label %190

190:                                              ; preds = %213, %175
  %191 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %192 = load i32, i32* @NANDFSR_OFFSET, align 4
  %193 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %191, i32 %192)
  %194 = zext i16 %193 to i32
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %17, align 4
  %196 = ashr i32 %195, 8
  %197 = and i32 %196, 15
  switch i32 %197, label %213 [
    i32 0, label %198
    i32 1, label %202
    i32 2, label %208
    i32 3, label %208
  ]

198:                                              ; preds = %190
  %199 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %200 = load i32, i32* @NAND_ERR_ERRVAL1_OFFSET, align 4
  %201 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %199, i32 %200)
  store i32 0, i32* %5, align 4
  br label %273

202:                                              ; preds = %190
  %203 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %204 = load i32, i32* @NAND_ERR_ERRVAL1_OFFSET, align 4
  %205 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %203, i32 %204)
  %206 = load i32, i32* @EIO, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %5, align 4
  br label %273

208:                                              ; preds = %190, %190
  %209 = load i32, i32* %17, align 4
  %210 = ashr i32 %209, 16
  %211 = and i32 %210, 3
  %212 = add nsw i32 1, %211
  store i32 %212, i32* %15, align 4
  br label %215

213:                                              ; preds = %190
  %214 = call i32 (...) @cpu_relax()
  br label %190

215:                                              ; preds = %208
  store i32 0, i32* %10, align 4
  store i32 0, i32* %16, align 4
  br label %216

216:                                              ; preds = %268, %215
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* %15, align 4
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %271

220:                                              ; preds = %216
  %221 = load i32, i32* %10, align 4
  %222 = icmp sgt i32 %221, 1
  br i1 %222, label %223, label %232

223:                                              ; preds = %220
  %224 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %225 = load i32, i32* @NAND_ERR_ADD2_OFFSET, align 4
  %226 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %224, i32 %225)
  %227 = zext i16 %226 to i32
  store i32 %227, i32* %18, align 4
  %228 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %229 = load i32, i32* @NAND_ERR_ERRVAL2_OFFSET, align 4
  %230 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %228, i32 %229)
  %231 = zext i16 %230 to i32
  store i32 %231, i32* %19, align 4
  br label %241

232:                                              ; preds = %220
  %233 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %234 = load i32, i32* @NAND_ERR_ADD1_OFFSET, align 4
  %235 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %233, i32 %234)
  %236 = zext i16 %235 to i32
  store i32 %236, i32* %18, align 4
  %237 = load %struct.davinci_nand_info*, %struct.davinci_nand_info** %11, align 8
  %238 = load i32, i32* @NAND_ERR_ERRVAL1_OFFSET, align 4
  %239 = call zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info* %237, i32 %238)
  %240 = zext i16 %239 to i32
  store i32 %240, i32* %19, align 4
  br label %241

241:                                              ; preds = %232, %223
  %242 = load i32, i32* %10, align 4
  %243 = and i32 %242, 1
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %250

245:                                              ; preds = %241
  %246 = load i32, i32* %18, align 4
  %247 = ashr i32 %246, 16
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %19, align 4
  %249 = ashr i32 %248, 16
  store i32 %249, i32* %19, align 4
  br label %250

250:                                              ; preds = %245, %241
  %251 = load i32, i32* %18, align 4
  %252 = and i32 %251, 1023
  store i32 %252, i32* %18, align 4
  %253 = load i32, i32* %18, align 4
  %254 = sub nsw i32 519, %253
  store i32 %254, i32* %18, align 4
  %255 = load i32, i32* %18, align 4
  %256 = icmp slt i32 %255, 512
  br i1 %256, label %257, label %267

257:                                              ; preds = %250
  %258 = load i32, i32* %19, align 4
  %259 = load i32*, i32** %7, align 8
  %260 = load i32, i32* %18, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = xor i32 %263, %258
  store i32 %264, i32* %262, align 4
  %265 = load i32, i32* %16, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %16, align 4
  br label %267

267:                                              ; preds = %257, %250
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %216

271:                                              ; preds = %216
  %272 = load i32, i32* %16, align 4
  store i32 %272, i32* %5, align 4
  br label %273

273:                                              ; preds = %271, %202, %198, %174, %44, %37
  %274 = load i32, i32* %5, align 4
  ret i32 %274
}

declare dso_local %struct.davinci_nand_info* @to_davinci_nand(%struct.mtd_info*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @davinci_nand_writel(%struct.davinci_nand_info*, i32, i16 zeroext) #1

declare dso_local zeroext i16 @davinci_nand_readl(%struct.davinci_nand_info*, i32) #1

declare dso_local i32 @nand_davinci_readecc_4bit(%struct.davinci_nand_info*, i32*) #1

declare dso_local zeroext i16 @BIT(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
