; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_do_read_ops.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_do_read_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, i32, %struct.mtd_ecc_stats, %struct.nand_chip* }
%struct.mtd_ecc_stats = type { i64, i64 }
%struct.nand_chip = type { i32, i32, i32, i32, i32, i32, i32 (%struct.mtd_info.0*, i32)*, %struct.TYPE_6__*, i32, i32, %struct.TYPE_5__, i32 (%struct.mtd_info.7*, i32, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 (%struct.mtd_info.1*, %struct.nand_chip.2*, i32*, i32)*, i32 (%struct.mtd_info.3*, %struct.nand_chip.4*, i32, i32, i32*)*, i32 (%struct.mtd_info.5*, %struct.nand_chip.6*, i32*, i32)*, %struct.TYPE_4__* }
%struct.mtd_info.1 = type opaque
%struct.nand_chip.2 = type opaque
%struct.mtd_info.3 = type opaque
%struct.nand_chip.4 = type opaque
%struct.mtd_info.5 = type opaque
%struct.nand_chip.6 = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.mtd_info.7 = type opaque
%struct.mtd_oob_ops = type { i32, i32, i64, i32, i32, i32*, i32* }

@NAND_CMD_READ0 = common dso_local global i32 0, align 4
@MTD_OOB_RAW = common dso_local global i64 0, align 8
@NAND_NO_READRDY = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_ops*)* @nand_do_read_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_do_read_ops(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nand_chip*, align 8
  %15 = alloca %struct.mtd_ecc_stats, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_ops* %2, %struct.mtd_oob_ops** %7, align 8
  %25 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 3
  %27 = load %struct.nand_chip*, %struct.nand_chip** %26, align 8
  store %struct.nand_chip* %27, %struct.nand_chip** %14, align 8
  %28 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %32 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = shl i32 1, %34
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %37 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %38 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %19, align 4
  %40 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %41 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %20, align 4
  %43 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 2
  %45 = bitcast %struct.mtd_ecc_stats* %15 to i8*
  %46 = bitcast %struct.mtd_ecc_stats* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 16, i1 false)
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %49 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %47, %50
  store i32 %51, i32* %8, align 4
  %52 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 6
  %54 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %53, align 8
  %55 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %56 = bitcast %struct.mtd_info* %55 to %struct.mtd_info.0*
  %57 = load i32, i32* %8, align 4
  %58 = call i32 %54(%struct.mtd_info.0* %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %61 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = ashr i32 %59, %62
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %64, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %71 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %69, %73
  store i32 %74, i32* %11, align 4
  %75 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %76 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %23, align 8
  %78 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %79 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %78, i32 0, i32 5
  %80 = load i32*, i32** %79, align 8
  store i32* %80, i32** %22, align 8
  br label %81

81:                                               ; preds = %3, %341
  %82 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %83 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sub nsw i32 %84, %85
  %87 = load i32, i32* %19, align 4
  %88 = call i32 @min(i32 %86, i32 %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %91 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %89, %92
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %97 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %95, %98
  br i1 %99, label %103, label %100

100:                                              ; preds = %81
  %101 = load i32*, i32** %22, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %282

103:                                              ; preds = %100, %81
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32*, i32** %23, align 8
  br label %114

108:                                              ; preds = %103
  %109 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %110 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %109, i32 0, i32 7
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  br label %114

114:                                              ; preds = %108, %106
  %115 = phi i32* [ %107, %106 ], [ %113, %108 ]
  store i32* %115, i32** %21, align 8
  %116 = load i32, i32* %17, align 4
  %117 = call i64 @likely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %121 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %120, i32 0, i32 11
  %122 = load i32 (%struct.mtd_info.7*, i32, i32, i32)*, i32 (%struct.mtd_info.7*, i32, i32, i32)** %121, align 8
  %123 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %124 = bitcast %struct.mtd_info* %123 to %struct.mtd_info.7*
  %125 = load i32, i32* @NAND_CMD_READ0, align 4
  %126 = load i32, i32* %9, align 4
  %127 = call i32 %122(%struct.mtd_info.7* %124, i32 %125, i32 0, i32 %126)
  store i32 0, i32* %17, align 4
  br label %128

128:                                              ; preds = %119, %114
  %129 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %130 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MTD_OOB_RAW, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %128
  %138 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %139 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %138, i32 0, i32 10
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32 (%struct.mtd_info.1*, %struct.nand_chip.2*, i32*, i32)*, i32 (%struct.mtd_info.1*, %struct.nand_chip.2*, i32*, i32)** %140, align 8
  %142 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %143 = bitcast %struct.mtd_info* %142 to %struct.mtd_info.1*
  %144 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %145 = bitcast %struct.nand_chip* %144 to %struct.nand_chip.2*
  %146 = load i32*, i32** %21, align 8
  %147 = load i32, i32* %9, align 4
  %148 = call i32 %141(%struct.mtd_info.1* %143, %struct.nand_chip.2* %145, i32* %146, i32 %147)
  store i32 %148, i32* %18, align 4
  br label %185

149:                                              ; preds = %128
  %150 = load i32, i32* %13, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %172, label %152

152:                                              ; preds = %149
  %153 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %154 = call i64 @NAND_SUBPAGE_READ(%struct.nand_chip* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load i32*, i32** %22, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %172, label %159

159:                                              ; preds = %156
  %160 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %161 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %160, i32 0, i32 10
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32 (%struct.mtd_info.3*, %struct.nand_chip.4*, i32, i32, i32*)*, i32 (%struct.mtd_info.3*, %struct.nand_chip.4*, i32, i32, i32*)** %162, align 8
  %164 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %165 = bitcast %struct.mtd_info* %164 to %struct.mtd_info.3*
  %166 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %167 = bitcast %struct.nand_chip* %166 to %struct.nand_chip.4*
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i32*, i32** %21, align 8
  %171 = call i32 %163(%struct.mtd_info.3* %165, %struct.nand_chip.4* %167, i32 %168, i32 %169, i32* %170)
  store i32 %171, i32* %18, align 4
  br label %184

172:                                              ; preds = %156, %152, %149
  %173 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %174 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %173, i32 0, i32 10
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 2
  %176 = load i32 (%struct.mtd_info.5*, %struct.nand_chip.6*, i32*, i32)*, i32 (%struct.mtd_info.5*, %struct.nand_chip.6*, i32*, i32)** %175, align 8
  %177 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %178 = bitcast %struct.mtd_info* %177 to %struct.mtd_info.5*
  %179 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %180 = bitcast %struct.nand_chip* %179 to %struct.nand_chip.6*
  %181 = load i32*, i32** %21, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i32 %176(%struct.mtd_info.5* %178, %struct.nand_chip.6* %180, i32* %181, i32 %182)
  store i32 %183, i32* %18, align 4
  br label %184

184:                                              ; preds = %172, %159
  br label %185

185:                                              ; preds = %184, %137
  %186 = load i32, i32* %18, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  br label %342

189:                                              ; preds = %185
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %215, label %192

192:                                              ; preds = %189
  %193 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %194 = call i64 @NAND_SUBPAGE_READ(%struct.nand_chip* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %203, label %196

196:                                              ; preds = %192
  %197 = load i32*, i32** %22, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %10, align 4
  %201 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %202 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %201, i32 0, i32 4
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %199, %196, %192
  %204 = load i32*, i32** %23, align 8
  %205 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %206 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %205, i32 0, i32 7
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %11, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %12, align 4
  %214 = call i32 @memcpy(i32* %204, i32* %212, i32 %213)
  br label %215

215:                                              ; preds = %203, %189
  %216 = load i32, i32* %12, align 4
  %217 = load i32*, i32** %23, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store i32* %219, i32** %23, align 8
  %220 = load i32*, i32** %22, align 8
  %221 = ptrtoint i32* %220 to i32
  %222 = call i64 @unlikely(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %260

224:                                              ; preds = %215
  %225 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %226 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @MTD_OOB_RAW, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %251

230:                                              ; preds = %224
  %231 = load i32, i32* %20, align 4
  %232 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %233 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %232, i32 0, i32 10
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @min(i32 %231, i32 %237)
  store i32 %238, i32* %24, align 4
  %239 = load i32, i32* %24, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %250

241:                                              ; preds = %230
  %242 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %243 = load i32*, i32** %22, align 8
  %244 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %245 = load i32, i32* %24, align 4
  %246 = call i32* @nand_transfer_oob(%struct.nand_chip* %242, i32* %243, %struct.mtd_oob_ops* %244, i32 %245)
  store i32* %246, i32** %22, align 8
  %247 = load i32, i32* %24, align 4
  %248 = load i32, i32* %20, align 4
  %249 = sub nsw i32 %248, %247
  store i32 %249, i32* %20, align 4
  br label %250

250:                                              ; preds = %241, %230
  br label %259

251:                                              ; preds = %224
  %252 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %253 = load i32*, i32** %23, align 8
  %254 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %255 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %256 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32* @nand_transfer_oob(%struct.nand_chip* %252, i32* %253, %struct.mtd_oob_ops* %254, i32 %257)
  store i32* %258, i32** %23, align 8
  br label %259

259:                                              ; preds = %251, %250
  br label %260

260:                                              ; preds = %259, %215
  %261 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %262 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @NAND_NO_READRDY, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %281, label %267

267:                                              ; preds = %260
  %268 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %269 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %268, i32 0, i32 9
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %277, label %272

272:                                              ; preds = %267
  %273 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %274 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = call i32 @udelay(i32 %275)
  br label %280

277:                                              ; preds = %267
  %278 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %279 = call i32 @nand_wait_ready(%struct.mtd_info* %278)
  br label %280

280:                                              ; preds = %277, %272
  br label %281

281:                                              ; preds = %280, %260
  br label %298

282:                                              ; preds = %100
  %283 = load i32*, i32** %23, align 8
  %284 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %285 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %284, i32 0, i32 7
  %286 = load %struct.TYPE_6__*, %struct.TYPE_6__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %12, align 4
  %293 = call i32 @memcpy(i32* %283, i32* %291, i32 %292)
  %294 = load i32, i32* %12, align 4
  %295 = load i32*, i32** %23, align 8
  %296 = sext i32 %294 to i64
  %297 = getelementptr inbounds i32, i32* %295, i64 %296
  store i32* %297, i32** %23, align 8
  br label %298

298:                                              ; preds = %282, %281
  %299 = load i32, i32* %12, align 4
  %300 = load i32, i32* %19, align 4
  %301 = sub nsw i32 %300, %299
  store i32 %301, i32* %19, align 4
  %302 = load i32, i32* %19, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %298
  br label %342

305:                                              ; preds = %298
  store i32 0, i32* %11, align 4
  %306 = load i32, i32* %10, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %10, align 4
  %308 = load i32, i32* %10, align 4
  %309 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %310 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %308, %311
  store i32 %312, i32* %9, align 4
  %313 = load i32, i32* %9, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %331, label %315

315:                                              ; preds = %305
  %316 = load i32, i32* %8, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %8, align 4
  %318 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %319 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %318, i32 0, i32 6
  %320 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %319, align 8
  %321 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %322 = bitcast %struct.mtd_info* %321 to %struct.mtd_info.0*
  %323 = call i32 %320(%struct.mtd_info.0* %322, i32 -1)
  %324 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %325 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %324, i32 0, i32 6
  %326 = load i32 (%struct.mtd_info.0*, i32)*, i32 (%struct.mtd_info.0*, i32)** %325, align 8
  %327 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %328 = bitcast %struct.mtd_info* %327 to %struct.mtd_info.0*
  %329 = load i32, i32* %8, align 4
  %330 = call i32 %326(%struct.mtd_info.0* %328, i32 %329)
  br label %331

331:                                              ; preds = %315, %305
  %332 = load %struct.nand_chip*, %struct.nand_chip** %14, align 8
  %333 = call i32 @NAND_CANAUTOINCR(%struct.nand_chip* %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %340

335:                                              ; preds = %331
  %336 = load i32, i32* %9, align 4
  %337 = load i32, i32* %16, align 4
  %338 = and i32 %336, %337
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %341, label %340

340:                                              ; preds = %335, %331
  store i32 1, i32* %17, align 4
  br label %341

341:                                              ; preds = %340, %335
  br label %81

342:                                              ; preds = %304, %188
  %343 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %344 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = sext i32 %345 to i64
  %347 = load i32, i32* %19, align 4
  %348 = sext i32 %347 to i64
  %349 = sub i64 %346, %348
  %350 = trunc i64 %349 to i32
  %351 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %352 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %351, i32 0, i32 3
  store i32 %350, i32* %352, align 8
  %353 = load i32*, i32** %22, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %355, label %363

355:                                              ; preds = %342
  %356 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %357 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %20, align 4
  %360 = sub nsw i32 %358, %359
  %361 = load %struct.mtd_oob_ops*, %struct.mtd_oob_ops** %7, align 8
  %362 = getelementptr inbounds %struct.mtd_oob_ops, %struct.mtd_oob_ops* %361, i32 0, i32 4
  store i32 %360, i32* %362, align 4
  br label %363

363:                                              ; preds = %355, %342
  %364 = load i32, i32* %18, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = load i32, i32* %18, align 4
  store i32 %367, i32* %4, align 4
  br label %395

368:                                              ; preds = %363
  %369 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %370 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %369, i32 0, i32 2
  %371 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %15, i32 0, i32 1
  %374 = load i64, i64* %373, align 8
  %375 = sub nsw i64 %372, %374
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %380

377:                                              ; preds = %368
  %378 = load i32, i32* @EBADMSG, align 4
  %379 = sub nsw i32 0, %378
  store i32 %379, i32* %4, align 4
  br label %395

380:                                              ; preds = %368
  %381 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %382 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %381, i32 0, i32 2
  %383 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %382, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %15, i32 0, i32 0
  %386 = load i64, i64* %385, align 8
  %387 = sub nsw i64 %384, %386
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %380
  %390 = load i32, i32* @EUCLEAN, align 4
  %391 = sub nsw i32 0, %390
  br label %393

392:                                              ; preds = %380
  br label %393

393:                                              ; preds = %392, %389
  %394 = phi i32 [ %391, %389 ], [ 0, %392 ]
  store i32 %394, i32* %4, align 4
  br label %395

395:                                              ; preds = %393, %377, %366
  %396 = load i32, i32* %4, align 4
  ret i32 %396
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @min(i32, i32) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i64 @NAND_SUBPAGE_READ(%struct.nand_chip*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32* @nand_transfer_oob(%struct.nand_chip*, i32*, %struct.mtd_oob_ops*, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @nand_wait_ready(%struct.mtd_info*) #2

declare dso_local i32 @NAND_CANAUTOINCR(%struct.nand_chip*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
