; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_check_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_bbt.c_check_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32, %struct.nand_bbt_descr*, %struct.nand_bbt_descr* }
%struct.nand_bbt_descr = type { i32, i32*, i32* }

@NAND_BBT_PERCHIP = common dso_local global i32 0, align 4
@NAND_BBT_VERSION = common dso_local global i32 0, align 4
@NAND_BBT_CREATE = common dso_local global i32 0, align 4
@NAND_BBT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, %struct.nand_bbt_descr*)* @check_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_create(%struct.mtd_info* %0, i32* %1, %struct.nand_bbt_descr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nand_bbt_descr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nand_chip*, align 8
  %14 = alloca %struct.nand_bbt_descr*, align 8
  %15 = alloca %struct.nand_bbt_descr*, align 8
  %16 = alloca %struct.nand_bbt_descr*, align 8
  %17 = alloca %struct.nand_bbt_descr*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nand_bbt_descr* %2, %struct.nand_bbt_descr** %7, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  %20 = load %struct.nand_chip*, %struct.nand_chip** %19, align 8
  store %struct.nand_chip* %20, %struct.nand_chip** %13, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %13, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 2
  %23 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %22, align 8
  store %struct.nand_bbt_descr* %23, %struct.nand_bbt_descr** %14, align 8
  %24 = load %struct.nand_chip*, %struct.nand_chip** %13, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 1
  %26 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %25, align 8
  store %struct.nand_bbt_descr* %26, %struct.nand_bbt_descr** %15, align 8
  %27 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %28 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  %34 = load %struct.nand_chip*, %struct.nand_chip** %13, align 8
  %35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  br label %38

37:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %38

38:                                               ; preds = %37, %33
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %310, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %313

43:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  store %struct.nand_bbt_descr* null, %struct.nand_bbt_descr** %16, align 8
  store %struct.nand_bbt_descr* null, %struct.nand_bbt_descr** %17, align 8
  %44 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %45 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NAND_BBT_PERCHIP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  br label %53

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ -1, %52 ]
  store i32 %54, i32* %11, align 4
  %55 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %56 = icmp ne %struct.nand_bbt_descr* %55, null
  br i1 %56, label %57, label %200

57:                                               ; preds = %53
  %58 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %59 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %76

66:                                               ; preds = %57
  %67 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %68 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 3, i32* %10, align 4
  br label %212

76:                                               ; preds = %66, %57
  %77 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %78 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %100

85:                                               ; preds = %76
  %86 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  store %struct.nand_bbt_descr* %86, %struct.nand_bbt_descr** %16, align 8
  %87 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %88 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %95 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  store i32 1, i32* %10, align 4
  br label %242

100:                                              ; preds = %76
  %101 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %102 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %124

109:                                              ; preds = %100
  %110 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  store %struct.nand_bbt_descr* %110, %struct.nand_bbt_descr** %16, align 8
  %111 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %112 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %119 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  store i32 2, i32* %10, align 4
  br label %242

124:                                              ; preds = %100
  %125 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %126 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %133 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %131, %138
  br i1 %139, label %140, label %151

140:                                              ; preds = %124
  %141 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  store %struct.nand_bbt_descr* %141, %struct.nand_bbt_descr** %16, align 8
  %142 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %143 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @NAND_BBT_VERSION, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %140
  %149 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  store %struct.nand_bbt_descr* %149, %struct.nand_bbt_descr** %17, align 8
  br label %150

150:                                              ; preds = %148, %140
  br label %242

151:                                              ; preds = %124
  %152 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %153 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %160 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = sub nsw i32 %158, %165
  %167 = sext i32 %166 to i64
  %168 = icmp sgt i64 %167, 0
  br i1 %168, label %169, label %184

169:                                              ; preds = %151
  %170 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  store %struct.nand_bbt_descr* %170, %struct.nand_bbt_descr** %16, align 8
  %171 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %172 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %179 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %177, i32* %183, align 4
  store i32 2, i32* %10, align 4
  br label %199

184:                                              ; preds = %151
  %185 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  store %struct.nand_bbt_descr* %185, %struct.nand_bbt_descr** %16, align 8
  %186 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %187 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %8, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %194 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %193, i32 0, i32 2
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  store i32 1, i32* %10, align 4
  br label %199

199:                                              ; preds = %184, %169
  br label %242

200:                                              ; preds = %53
  %201 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %202 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %210

209:                                              ; preds = %200
  store i32 1, i32* %10, align 4
  br label %212

210:                                              ; preds = %200
  %211 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  store %struct.nand_bbt_descr* %211, %struct.nand_bbt_descr** %16, align 8
  br label %242

212:                                              ; preds = %209, %75
  %213 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %214 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @NAND_BBT_CREATE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %212
  br label %310

220:                                              ; preds = %212
  %221 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %7, align 8
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @create_bbt(%struct.mtd_info* %221, i32* %222, %struct.nand_bbt_descr* %223, i32 %224)
  %226 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %227 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %8, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 1, i32* %231, align 4
  %232 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %233 = icmp ne %struct.nand_bbt_descr* %232, null
  br i1 %233, label %234, label %241

234:                                              ; preds = %220
  %235 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %236 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %235, i32 0, i32 2
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 1, i32* %240, align 4
  br label %241

241:                                              ; preds = %234, %220
  br label %242

242:                                              ; preds = %241, %210, %199, %150, %109, %85
  %243 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %244 = icmp ne %struct.nand_bbt_descr* %243, null
  br i1 %244, label %245, label %251

245:                                              ; preds = %242
  %246 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %247 = load i32*, i32** %6, align 8
  %248 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %16, align 8
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @read_abs_bbt(%struct.mtd_info* %246, i32* %247, %struct.nand_bbt_descr* %248, i32 %249)
  br label %251

251:                                              ; preds = %245, %242
  %252 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %17, align 8
  %253 = icmp ne %struct.nand_bbt_descr* %252, null
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %256 = load i32*, i32** %6, align 8
  %257 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %17, align 8
  %258 = load i32, i32* %11, align 4
  %259 = call i32 @read_abs_bbt(%struct.mtd_info* %255, i32* %256, %struct.nand_bbt_descr* %257, i32 %258)
  br label %260

260:                                              ; preds = %254, %251
  %261 = load i32, i32* %10, align 4
  %262 = and i32 %261, 1
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %283

264:                                              ; preds = %260
  %265 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %266 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @NAND_BBT_WRITE, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %264
  %272 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %273 = load i32*, i32** %6, align 8
  %274 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %275 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %276 = load i32, i32* %11, align 4
  %277 = call i32 @write_bbt(%struct.mtd_info* %272, i32* %273, %struct.nand_bbt_descr* %274, %struct.nand_bbt_descr* %275, i32 %276)
  store i32 %277, i32* %12, align 4
  %278 = load i32, i32* %12, align 4
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %271
  %281 = load i32, i32* %12, align 4
  store i32 %281, i32* %4, align 4
  br label %314

282:                                              ; preds = %271
  br label %283

283:                                              ; preds = %282, %264, %260
  %284 = load i32, i32* %10, align 4
  %285 = and i32 %284, 2
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %309

287:                                              ; preds = %283
  %288 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %289 = icmp ne %struct.nand_bbt_descr* %288, null
  br i1 %289, label %290, label %309

290:                                              ; preds = %287
  %291 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %292 = getelementptr inbounds %struct.nand_bbt_descr, %struct.nand_bbt_descr* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @NAND_BBT_WRITE, align 4
  %295 = and i32 %293, %294
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %309

297:                                              ; preds = %290
  %298 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %299 = load i32*, i32** %6, align 8
  %300 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %15, align 8
  %301 = load %struct.nand_bbt_descr*, %struct.nand_bbt_descr** %14, align 8
  %302 = load i32, i32* %11, align 4
  %303 = call i32 @write_bbt(%struct.mtd_info* %298, i32* %299, %struct.nand_bbt_descr* %300, %struct.nand_bbt_descr* %301, i32 %302)
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* %12, align 4
  %305 = icmp slt i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %297
  %307 = load i32, i32* %12, align 4
  store i32 %307, i32* %4, align 4
  br label %314

308:                                              ; preds = %297
  br label %309

309:                                              ; preds = %308, %290, %287, %283
  br label %310

310:                                              ; preds = %309, %219
  %311 = load i32, i32* %8, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %8, align 4
  br label %39

313:                                              ; preds = %39
  store i32 0, i32* %4, align 4
  br label %314

314:                                              ; preds = %313, %306, %280
  %315 = load i32, i32* %4, align 4
  ret i32 %315
}

declare dso_local i32 @create_bbt(%struct.mtd_info*, i32*, %struct.nand_bbt_descr*, i32) #1

declare dso_local i32 @read_abs_bbt(%struct.mtd_info*, i32*, %struct.nand_bbt_descr*, i32) #1

declare dso_local i32 @write_bbt(%struct.mtd_info*, i32*, %struct.nand_bbt_descr*, %struct.nand_bbt_descr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
