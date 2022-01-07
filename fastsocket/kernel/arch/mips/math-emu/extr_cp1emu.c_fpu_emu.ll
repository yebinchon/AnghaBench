; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_cp1emu.c_fpu_emu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/math-emu/extr_cp1emu.c_fpu_emu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_91__ = type { i32 }
%struct.TYPE_90__ = type { i32 }
%struct.pt_regs = type { i32* }
%struct.mips_fpu_struct = type { i32, i32* }
%union.anon = type { %struct.TYPE_89__ }
%struct.TYPE_89__ = type { i32 }
%union.anon.0 = type { i32 (i32, i32)* }
%union.anon.1 = type { i32 (i32, i32)* }

@fpuemustats = common dso_local global %struct.TYPE_91__ zeroinitializer, align 4
@IEEE754_INEXACT = common dso_local global i32 0, align 4
@FPU_CSR_INE_X = common dso_local global i32 0, align 4
@FPU_CSR_INE_S = common dso_local global i32 0, align 4
@IEEE754_UNDERFLOW = common dso_local global i32 0, align 4
@FPU_CSR_UDF_X = common dso_local global i32 0, align 4
@FPU_CSR_UDF_S = common dso_local global i32 0, align 4
@IEEE754_OVERFLOW = common dso_local global i32 0, align 4
@FPU_CSR_OVF_X = common dso_local global i32 0, align 4
@FPU_CSR_OVF_S = common dso_local global i32 0, align 4
@IEEE754_ZERO_DIVIDE = common dso_local global i32 0, align 4
@FPU_CSR_DIV_X = common dso_local global i32 0, align 4
@FPU_CSR_DIV_S = common dso_local global i32 0, align 4
@IEEE754_INVALID_OPERATION = common dso_local global i32 0, align 4
@FPU_CSR_INV_X = common dso_local global i32 0, align 4
@FPU_CSR_INV_S = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@fcmp_op = common dso_local global i32 0, align 4
@cmptab = common dso_local global i32* null, align 8
@FPU_CSR_ALL_X = common dso_local global i32 0, align 4
@FPU_CSR_ALL_E = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@FPU_CSR_COND = common dso_local global i32 0, align 4
@fpucondbit = common dso_local global i32* null, align 8
@ieee754_csr = common dso_local global %struct.TYPE_90__ zeroinitializer, align 4
@ieee_rm = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, %struct.mips_fpu_struct*, i32)* @fpu_emu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpu_emu(%struct.pt_regs* %0, %struct.mips_fpu_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca %struct.mips_fpu_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.anon, align 4
  %12 = alloca %union.anon.0, align 8
  %13 = alloca %struct.TYPE_89__, align 4
  %14 = alloca %struct.TYPE_89__, align 4
  %15 = alloca %struct.TYPE_89__, align 4
  %16 = alloca %struct.TYPE_89__, align 4
  %17 = alloca %struct.TYPE_89__, align 4
  %18 = alloca %struct.TYPE_89__, align 4
  %19 = alloca %struct.TYPE_89__, align 4
  %20 = alloca %struct.TYPE_89__, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_89__, align 4
  %23 = alloca %struct.TYPE_89__, align 4
  %24 = alloca %union.anon.1, align 8
  %25 = alloca %struct.TYPE_89__, align 4
  %26 = alloca %struct.TYPE_89__, align 4
  %27 = alloca %struct.TYPE_89__, align 4
  %28 = alloca %struct.TYPE_89__, align 4
  %29 = alloca %struct.TYPE_89__, align 4
  %30 = alloca %struct.TYPE_89__, align 4
  %31 = alloca %struct.TYPE_89__, align 4
  %32 = alloca %struct.TYPE_89__, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_89__, align 4
  %35 = alloca %struct.TYPE_89__, align 4
  %36 = alloca %struct.TYPE_89__, align 4
  %37 = alloca %struct.TYPE_89__, align 4
  %38 = alloca %struct.TYPE_89__, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %5, align 8
  store %struct.mips_fpu_struct* %1, %struct.mips_fpu_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_91__, %struct.TYPE_91__* @fpuemustats, i32 0, i32 0), align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_91__, %struct.TYPE_91__* @fpuemustats, i32 0, i32 0), align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @MIPSInst_FFMT(i32 %41)
  %43 = and i32 %42, 15
  store i32 %43, i32* %8, align 4
  switch i32 %43, label %398 [
    i32 129, label %44
    i32 156, label %231
    i32 128, label %367
  ]

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @MIPSInst_FUNC(i32 %45)
  switch i32 %46, label %180 [
    i32 154, label %47
    i32 133, label %49
    i32 140, label %51
    i32 147, label %53
    i32 155, label %55
    i32 139, label %57
    i32 144, label %59
    i32 149, label %154
    i32 151, label %156
    i32 148, label %169
  ]

47:                                               ; preds = %44
  %48 = bitcast %union.anon.0* %12 to i32 (i32, i32)**
  store i32 (i32, i32)* @ieee754sp_add, i32 (i32, i32)** %48, align 8
  br label %66

49:                                               ; preds = %44
  %50 = bitcast %union.anon.0* %12 to i32 (i32, i32)**
  store i32 (i32, i32)* @ieee754sp_sub, i32 (i32, i32)** %50, align 8
  br label %66

51:                                               ; preds = %44
  %52 = bitcast %union.anon.0* %12 to i32 (i32, i32)**
  store i32 (i32, i32)* @ieee754sp_mul, i32 (i32, i32)** %52, align 8
  br label %66

53:                                               ; preds = %44
  %54 = bitcast %union.anon.0* %12 to i32 (i32, i32)**
  store i32 (i32, i32)* @ieee754sp_div, i32 (i32, i32)** %54, align 8
  br label %66

55:                                               ; preds = %44
  %56 = bitcast %union.anon.0* %12 to i32 (i32)**
  store i32 (i32)* @ieee754sp_abs, i32 (i32)** %56, align 8
  br label %88

57:                                               ; preds = %44
  %58 = bitcast %union.anon.0* %12 to i32 (i32)**
  store i32 (i32)* @ieee754sp_neg, i32 (i32)** %58, align 8
  br label %88

59:                                               ; preds = %44
  %60 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %61 = load i32, i32* %7, align 4
  %62 = call i64 @MIPSInst_FS(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %60, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SPFROMREG(i32 %64, i64 %62)
  br label %103

66:                                               ; preds = %53, %51, %49, %47
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @MIPSInst_FS(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %13, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SPFROMREG(i32 %70, i64 %68)
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @MIPSInst_FT(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %14, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @SPFROMREG(i32 %75, i64 %73)
  %77 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %78 = bitcast %union.anon.0* %12 to i32 (i32, i32)**
  %79 = load i32 (i32, i32)*, i32 (i32, i32)** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %13, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %14, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 %79(i32 %81, i32 %83)
  %85 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %15, i32 0, i32 0
  store i32 %84, i32* %85, align 4
  %86 = bitcast %struct.TYPE_89__* %77 to i8*
  %87 = bitcast %struct.TYPE_89__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %86, i8* align 4 %87, i64 4, i1 false)
  br label %103

88:                                               ; preds = %57, %55
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @MIPSInst_FS(i32 %89)
  %91 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %16, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SPFROMREG(i32 %92, i64 %90)
  %94 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %95 = bitcast %union.anon.0* %12 to i32 (i32)**
  %96 = load i32 (i32)*, i32 (i32)** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %16, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 %96(i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %17, i32 0, i32 0
  store i32 %99, i32* %100, align 4
  %101 = bitcast %struct.TYPE_89__* %94 to i8*
  %102 = bitcast %struct.TYPE_89__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 4, i1 false)
  br label %103

103:                                              ; preds = %383, %370, %361, %305, %290, %275, %253, %246, %225, %169, %156, %88, %66, %59
  %104 = load i32, i32* @IEEE754_INEXACT, align 4
  %105 = call i32 @ieee754_cxtest(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* @FPU_CSR_INE_X, align 4
  %109 = load i32, i32* @FPU_CSR_INE_S, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %9, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %107, %103
  %114 = load i32, i32* @IEEE754_UNDERFLOW, align 4
  %115 = call i32 @ieee754_cxtest(i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %113
  %118 = load i32, i32* @FPU_CSR_UDF_X, align 4
  %119 = load i32, i32* @FPU_CSR_UDF_S, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %117, %113
  %124 = load i32, i32* @IEEE754_OVERFLOW, align 4
  %125 = call i32 @ieee754_cxtest(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i32, i32* @FPU_CSR_OVF_X, align 4
  %129 = load i32, i32* @FPU_CSR_OVF_S, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %127, %123
  %134 = load i32, i32* @IEEE754_ZERO_DIVIDE, align 4
  %135 = call i32 @ieee754_cxtest(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32, i32* @FPU_CSR_DIV_X, align 4
  %139 = load i32, i32* @FPU_CSR_DIV_S, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %137, %133
  %144 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %145 = call i32 @ieee754_cxtest(i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32, i32* @FPU_CSR_INV_X, align 4
  %149 = load i32, i32* @FPU_CSR_INV_S, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %9, align 4
  br label %153

153:                                              ; preds = %147, %143
  br label %230

154:                                              ; preds = %44
  %155 = load i32, i32* @SIGILL, align 4
  store i32 %155, i32* %4, align 4
  br label %468

156:                                              ; preds = %44
  %157 = load i32, i32* %7, align 4
  %158 = call i64 @MIPSInst_FS(i32 %157)
  %159 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %18, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @SPFROMREG(i32 %160, i64 %158)
  %162 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %163 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %18, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ieee754dp_fsp(i32 %164)
  %166 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %19, i32 0, i32 0
  store i32 %165, i32* %166, align 4
  %167 = bitcast %struct.TYPE_89__* %162 to i8*
  %168 = bitcast %struct.TYPE_89__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %167, i8* align 4 %168, i64 4, i1 false)
  store i32 156, i32* %8, align 4
  br label %103

169:                                              ; preds = %44
  %170 = load i32, i32* %7, align 4
  %171 = call i64 @MIPSInst_FS(i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %20, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @SPFROMREG(i32 %173, i64 %171)
  %175 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %20, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @ieee754sp_tint(i32 %176)
  %178 = ptrtoint i8* %177 to i32
  %179 = bitcast %union.anon* %11 to i32*
  store i32 %178, i32* %179, align 4
  store i32 128, i32* %8, align 4
  br label %103

180:                                              ; preds = %44
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @MIPSInst_FUNC(i32 %181)
  %183 = load i32, i32* @fcmp_op, align 4
  %184 = icmp sge i32 %182, %183
  br i1 %184, label %185, label %227

185:                                              ; preds = %180
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @MIPSInst_FUNC(i32 %186)
  %188 = load i32, i32* @fcmp_op, align 4
  %189 = sub nsw i32 %187, %188
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %7, align 4
  %191 = call i64 @MIPSInst_FS(i32 %190)
  %192 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %22, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @SPFROMREG(i32 %193, i64 %191)
  %195 = load i32, i32* %7, align 4
  %196 = call i64 @MIPSInst_FT(i32 %195)
  %197 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %23, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @SPFROMREG(i32 %198, i64 %196)
  %200 = load i32*, i32** @cmptab, align 8
  %201 = load i32, i32* %21, align 4
  %202 = and i32 %201, 7
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %21, align 4
  %207 = and i32 %206, 8
  %208 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %22, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %23, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @ieee754sp_cmp(i32 %209, i32 %211, i32 %205, i32 %207)
  %213 = bitcast %union.anon* %11 to i32*
  store i32 %212, i32* %213, align 4
  store i32 -1, i32* %8, align 4
  %214 = load i32, i32* %21, align 4
  %215 = and i32 %214, 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %225

217:                                              ; preds = %185
  %218 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %219 = call i32 @ieee754_cxtest(i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %217
  %222 = load i32, i32* @FPU_CSR_INV_X, align 4
  %223 = load i32, i32* @FPU_CSR_INV_S, align 4
  %224 = or i32 %222, %223
  store i32 %224, i32* %9, align 4
  br label %226

225:                                              ; preds = %217, %185
  br label %103

226:                                              ; preds = %221
  br label %229

227:                                              ; preds = %180
  %228 = load i32, i32* @SIGILL, align 4
  store i32 %228, i32* %4, align 4
  br label %468

229:                                              ; preds = %226
  br label %230

230:                                              ; preds = %229, %153
  br label %400

231:                                              ; preds = %3
  %232 = load i32, i32* %7, align 4
  %233 = call i32 @MIPSInst_FUNC(i32 %232)
  switch i32 %233, label %316 [
    i32 154, label %234
    i32 133, label %236
    i32 140, label %238
    i32 147, label %240
    i32 155, label %242
    i32 139, label %244
    i32 144, label %246
    i32 149, label %290
    i32 151, label %303
    i32 148, label %305
  ]

234:                                              ; preds = %231
  %235 = bitcast %union.anon.1* %24 to i32 (i32, i32)**
  store i32 (i32, i32)* @ieee754dp_add, i32 (i32, i32)** %235, align 8
  br label %253

236:                                              ; preds = %231
  %237 = bitcast %union.anon.1* %24 to i32 (i32, i32)**
  store i32 (i32, i32)* @ieee754dp_sub, i32 (i32, i32)** %237, align 8
  br label %253

238:                                              ; preds = %231
  %239 = bitcast %union.anon.1* %24 to i32 (i32, i32)**
  store i32 (i32, i32)* @ieee754dp_mul, i32 (i32, i32)** %239, align 8
  br label %253

240:                                              ; preds = %231
  %241 = bitcast %union.anon.1* %24 to i32 (i32, i32)**
  store i32 (i32, i32)* @ieee754dp_div, i32 (i32, i32)** %241, align 8
  br label %253

242:                                              ; preds = %231
  %243 = bitcast %union.anon.1* %24 to i32 (i32)**
  store i32 (i32)* @ieee754dp_abs, i32 (i32)** %243, align 8
  br label %275

244:                                              ; preds = %231
  %245 = bitcast %union.anon.1* %24 to i32 (i32)**
  store i32 (i32)* @ieee754dp_neg, i32 (i32)** %245, align 8
  br label %275

246:                                              ; preds = %231
  %247 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %248 = load i32, i32* %7, align 4
  %249 = call i64 @MIPSInst_FS(i32 %248)
  %250 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %247, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @DPFROMREG(i32 %251, i64 %249)
  br label %103

253:                                              ; preds = %240, %238, %236, %234
  %254 = load i32, i32* %7, align 4
  %255 = call i64 @MIPSInst_FS(i32 %254)
  %256 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %25, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @DPFROMREG(i32 %257, i64 %255)
  %259 = load i32, i32* %7, align 4
  %260 = call i64 @MIPSInst_FT(i32 %259)
  %261 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %26, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @DPFROMREG(i32 %262, i64 %260)
  %264 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %265 = bitcast %union.anon.1* %24 to i32 (i32, i32)**
  %266 = load i32 (i32, i32)*, i32 (i32, i32)** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %25, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %26, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 %266(i32 %268, i32 %270)
  %272 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %27, i32 0, i32 0
  store i32 %271, i32* %272, align 4
  %273 = bitcast %struct.TYPE_89__* %264 to i8*
  %274 = bitcast %struct.TYPE_89__* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %273, i8* align 4 %274, i64 4, i1 false)
  br label %103

275:                                              ; preds = %244, %242
  %276 = load i32, i32* %7, align 4
  %277 = call i64 @MIPSInst_FS(i32 %276)
  %278 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %28, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @DPFROMREG(i32 %279, i64 %277)
  %281 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %282 = bitcast %union.anon.1* %24 to i32 (i32)**
  %283 = load i32 (i32)*, i32 (i32)** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %28, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 %283(i32 %285)
  %287 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %29, i32 0, i32 0
  store i32 %286, i32* %287, align 4
  %288 = bitcast %struct.TYPE_89__* %281 to i8*
  %289 = bitcast %struct.TYPE_89__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %288, i8* align 4 %289, i64 4, i1 false)
  br label %103

290:                                              ; preds = %231
  %291 = load i32, i32* %7, align 4
  %292 = call i64 @MIPSInst_FS(i32 %291)
  %293 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %30, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @DPFROMREG(i32 %294, i64 %292)
  %296 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %297 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %30, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @ieee754sp_fdp(i32 %298)
  %300 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %31, i32 0, i32 0
  store i32 %299, i32* %300, align 4
  %301 = bitcast %struct.TYPE_89__* %296 to i8*
  %302 = bitcast %struct.TYPE_89__* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %301, i8* align 4 %302, i64 4, i1 false)
  store i32 129, i32* %8, align 4
  br label %103

303:                                              ; preds = %231
  %304 = load i32, i32* @SIGILL, align 4
  store i32 %304, i32* %4, align 4
  br label %468

305:                                              ; preds = %231
  %306 = load i32, i32* %7, align 4
  %307 = call i64 @MIPSInst_FS(i32 %306)
  %308 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %32, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @DPFROMREG(i32 %309, i64 %307)
  %311 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %32, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = call i8* @ieee754dp_tint(i32 %312)
  %314 = ptrtoint i8* %313 to i32
  %315 = bitcast %union.anon* %11 to i32*
  store i32 %314, i32* %315, align 4
  store i32 128, i32* %8, align 4
  br label %103

316:                                              ; preds = %231
  %317 = load i32, i32* %7, align 4
  %318 = call i32 @MIPSInst_FUNC(i32 %317)
  %319 = load i32, i32* @fcmp_op, align 4
  %320 = icmp sge i32 %318, %319
  br i1 %320, label %321, label %363

321:                                              ; preds = %316
  %322 = load i32, i32* %7, align 4
  %323 = call i32 @MIPSInst_FUNC(i32 %322)
  %324 = load i32, i32* @fcmp_op, align 4
  %325 = sub nsw i32 %323, %324
  store i32 %325, i32* %33, align 4
  %326 = load i32, i32* %7, align 4
  %327 = call i64 @MIPSInst_FS(i32 %326)
  %328 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %34, i32 0, i32 0
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @DPFROMREG(i32 %329, i64 %327)
  %331 = load i32, i32* %7, align 4
  %332 = call i64 @MIPSInst_FT(i32 %331)
  %333 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %35, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @DPFROMREG(i32 %334, i64 %332)
  %336 = load i32*, i32** @cmptab, align 8
  %337 = load i32, i32* %33, align 4
  %338 = and i32 %337, 7
  %339 = zext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %336, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %33, align 4
  %343 = and i32 %342, 8
  %344 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %34, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %35, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @ieee754dp_cmp(i32 %345, i32 %347, i32 %341, i32 %343)
  %349 = bitcast %union.anon* %11 to i32*
  store i32 %348, i32* %349, align 4
  store i32 -1, i32* %8, align 4
  %350 = load i32, i32* %33, align 4
  %351 = and i32 %350, 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %321
  %354 = load i32, i32* @IEEE754_INVALID_OPERATION, align 4
  %355 = call i32 @ieee754_cxtest(i32 %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %353
  %358 = load i32, i32* @FPU_CSR_INV_X, align 4
  %359 = load i32, i32* @FPU_CSR_INV_S, align 4
  %360 = or i32 %358, %359
  store i32 %360, i32* %9, align 4
  br label %362

361:                                              ; preds = %353, %321
  br label %103

362:                                              ; preds = %357
  br label %365

363:                                              ; preds = %316
  %364 = load i32, i32* @SIGILL, align 4
  store i32 %364, i32* %4, align 4
  br label %468

365:                                              ; preds = %362
  br label %366

366:                                              ; preds = %365
  br label %400

367:                                              ; preds = %3
  %368 = load i32, i32* %7, align 4
  %369 = call i32 @MIPSInst_FUNC(i32 %368)
  switch i32 %369, label %396 [
    i32 149, label %370
    i32 151, label %383
  ]

370:                                              ; preds = %367
  %371 = load i32, i32* %7, align 4
  %372 = call i64 @MIPSInst_FS(i32 %371)
  %373 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %36, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @SPFROMREG(i32 %374, i64 %372)
  %376 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %377 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %36, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @ieee754sp_fint(i32 %378)
  %380 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %37, i32 0, i32 0
  store i32 %379, i32* %380, align 4
  %381 = bitcast %struct.TYPE_89__* %376 to i8*
  %382 = bitcast %struct.TYPE_89__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %381, i8* align 4 %382, i64 4, i1 false)
  store i32 129, i32* %8, align 4
  br label %103

383:                                              ; preds = %367
  %384 = load i32, i32* %7, align 4
  %385 = call i64 @MIPSInst_FS(i32 %384)
  %386 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %36, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @SPFROMREG(i32 %387, i64 %385)
  %389 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %390 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %36, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @ieee754dp_fint(i32 %391)
  %393 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %38, i32 0, i32 0
  store i32 %392, i32* %393, align 4
  %394 = bitcast %struct.TYPE_89__* %389 to i8*
  %395 = bitcast %struct.TYPE_89__* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %394, i8* align 4 %395, i64 4, i1 false)
  store i32 156, i32* %8, align 4
  br label %103

396:                                              ; preds = %367
  %397 = load i32, i32* @SIGILL, align 4
  store i32 %397, i32* %4, align 4
  br label %468

398:                                              ; preds = %3
  %399 = load i32, i32* @SIGILL, align 4
  store i32 %399, i32* %4, align 4
  br label %468

400:                                              ; preds = %366, %230
  %401 = load %struct.mips_fpu_struct*, %struct.mips_fpu_struct** %6, align 8
  %402 = getelementptr inbounds %struct.mips_fpu_struct, %struct.mips_fpu_struct* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @FPU_CSR_ALL_X, align 4
  %405 = xor i32 %404, -1
  %406 = and i32 %403, %405
  %407 = load i32, i32* %9, align 4
  %408 = or i32 %406, %407
  %409 = load %struct.mips_fpu_struct*, %struct.mips_fpu_struct** %6, align 8
  %410 = getelementptr inbounds %struct.mips_fpu_struct, %struct.mips_fpu_struct* %409, i32 0, i32 0
  store i32 %408, i32* %410, align 8
  %411 = load %struct.mips_fpu_struct*, %struct.mips_fpu_struct** %6, align 8
  %412 = getelementptr inbounds %struct.mips_fpu_struct, %struct.mips_fpu_struct* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = lshr i32 %413, 5
  %415 = load %struct.mips_fpu_struct*, %struct.mips_fpu_struct** %6, align 8
  %416 = getelementptr inbounds %struct.mips_fpu_struct, %struct.mips_fpu_struct* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = and i32 %414, %417
  %419 = load i32, i32* @FPU_CSR_ALL_E, align 4
  %420 = and i32 %418, %419
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %400
  %423 = load i32, i32* @SIGFPE, align 4
  store i32 %423, i32* %4, align 4
  br label %468

424:                                              ; preds = %400
  %425 = load i32, i32* %8, align 4
  switch i32 %425, label %465 [
    i32 -1, label %426
    i32 156, label %445
    i32 129, label %452
    i32 128, label %459
  ]

426:                                              ; preds = %424
  %427 = load i32, i32* @FPU_CSR_COND, align 4
  store i32 %427, i32* %10, align 4
  %428 = bitcast %union.anon* %11 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %437

431:                                              ; preds = %426
  %432 = load i32, i32* %10, align 4
  %433 = load %struct.mips_fpu_struct*, %struct.mips_fpu_struct** %6, align 8
  %434 = getelementptr inbounds %struct.mips_fpu_struct, %struct.mips_fpu_struct* %433, i32 0, i32 0
  %435 = load i32, i32* %434, align 8
  %436 = or i32 %435, %432
  store i32 %436, i32* %434, align 8
  br label %444

437:                                              ; preds = %426
  %438 = load i32, i32* %10, align 4
  %439 = xor i32 %438, -1
  %440 = load %struct.mips_fpu_struct*, %struct.mips_fpu_struct** %6, align 8
  %441 = getelementptr inbounds %struct.mips_fpu_struct, %struct.mips_fpu_struct* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = and i32 %442, %439
  store i32 %443, i32* %441, align 8
  br label %444

444:                                              ; preds = %437, %431
  br label %467

445:                                              ; preds = %424
  %446 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %447 = load i32, i32* %7, align 4
  %448 = call i32 @MIPSInst_FD(i32 %447)
  %449 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %446, i32 0, i32 0
  %450 = load i32, i32* %449, align 4
  %451 = call i32 @DPTOREG(i32 %450, i32 %448)
  br label %467

452:                                              ; preds = %424
  %453 = bitcast %union.anon* %11 to %struct.TYPE_89__*
  %454 = load i32, i32* %7, align 4
  %455 = call i32 @MIPSInst_FD(i32 %454)
  %456 = getelementptr inbounds %struct.TYPE_89__, %struct.TYPE_89__* %453, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @SPTOREG(i32 %457, i32 %455)
  br label %467

459:                                              ; preds = %424
  %460 = bitcast %union.anon* %11 to i32*
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* %7, align 4
  %463 = call i32 @MIPSInst_FD(i32 %462)
  %464 = call i32 @SITOREG(i32 %461, i32 %463)
  br label %467

465:                                              ; preds = %424
  %466 = load i32, i32* @SIGILL, align 4
  store i32 %466, i32* %4, align 4
  br label %468

467:                                              ; preds = %459, %452, %445, %444
  store i32 0, i32* %4, align 4
  br label %468

468:                                              ; preds = %467, %465, %422, %398, %396, %363, %303, %227, %154
  %469 = load i32, i32* %4, align 4
  ret i32 %469
}

declare dso_local i32 @MIPSInst_FFMT(i32) #1

declare dso_local i32 @MIPSInst_FUNC(i32) #1

declare dso_local i32 @ieee754sp_add(i32, i32) #1

declare dso_local i32 @ieee754sp_sub(i32, i32) #1

declare dso_local i32 @ieee754sp_mul(i32, i32) #1

declare dso_local i32 @ieee754sp_div(i32, i32) #1

declare dso_local i32 @ieee754sp_abs(i32) #1

declare dso_local i32 @ieee754sp_neg(i32) #1

declare dso_local i32 @SPFROMREG(i32, i64) #1

declare dso_local i64 @MIPSInst_FS(i32) #1

declare dso_local i64 @MIPSInst_FT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ieee754_cxtest(i32) #1

declare dso_local i32 @ieee754dp_fsp(i32) #1

declare dso_local i8* @ieee754sp_tint(i32) #1

declare dso_local i32 @ieee754sp_cmp(i32, i32, i32, i32) #1

declare dso_local i32 @ieee754dp_add(i32, i32) #1

declare dso_local i32 @ieee754dp_sub(i32, i32) #1

declare dso_local i32 @ieee754dp_mul(i32, i32) #1

declare dso_local i32 @ieee754dp_div(i32, i32) #1

declare dso_local i32 @ieee754dp_abs(i32) #1

declare dso_local i32 @ieee754dp_neg(i32) #1

declare dso_local i32 @DPFROMREG(i32, i64) #1

declare dso_local i32 @ieee754sp_fdp(i32) #1

declare dso_local i8* @ieee754dp_tint(i32) #1

declare dso_local i32 @ieee754dp_cmp(i32, i32, i32, i32) #1

declare dso_local i32 @ieee754sp_fint(i32) #1

declare dso_local i32 @ieee754dp_fint(i32) #1

declare dso_local i32 @DPTOREG(i32, i32) #1

declare dso_local i32 @MIPSInst_FD(i32) #1

declare dso_local i32 @SPTOREG(i32, i32) #1

declare dso_local i32 @SITOREG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
