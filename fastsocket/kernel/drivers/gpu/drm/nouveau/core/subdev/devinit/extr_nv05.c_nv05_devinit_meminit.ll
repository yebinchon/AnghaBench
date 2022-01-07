; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv05.c_nv05_devinit_meminit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/devinit/extr_nv05.c_nv05_devinit_meminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_devinit = type { i32 }
%struct.nv05_devinit_priv = type { i32 }
%struct.nouveau_bios = type { i32 }
%struct.io_mapping = type { i32 }
%struct.TYPE_2__ = type { i32 }

@nv05_devinit_meminit.default_config_tab = internal constant [8 x [2 x i32]] [[2 x i32] [i32 36, i32 0], [2 x i32] [i32 40, i32 0], [2 x i32] [i32 36, i32 1], [2 x i32] [i32 31, i32 0], [2 x i32] [i32 15, i32 0], [2 x i32] [i32 23, i32 0], [2 x i32] [i32 6, i32 0], [2 x i32] zeroinitializer], align 16
@.str = private unnamed_addr constant [18 x i8] c"failed to map fb\0A\00", align 1
@NV04_PFB_BOOT_0 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_UMA_ENABLE = common dso_local global i32 0, align 4
@NV04_PFB_DEBUG_0 = common dso_local global i32 0, align 4
@NV04_PFB_DEBUG_0_REFRESH_OFF = common dso_local global i32 0, align 4
@NV04_PFB_CFG0 = common dso_local global i32 0, align 4
@NV04_PFB_CFG0_SCRAMBLE = common dso_local global i32 0, align 4
@NV04_PFB_CFG1 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_WIDTH_128 = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_32MB = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_16MB = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_8MB = common dso_local global i32 0, align 4
@NV04_PFB_BOOT_0_RAM_AMOUNT_4MB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_devinit*)* @nv05_devinit_meminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv05_devinit_meminit(%struct.nouveau_devinit* %0) #0 {
  %2 = alloca %struct.nouveau_devinit*, align 8
  %3 = alloca %struct.nv05_devinit_priv*, align 8
  %4 = alloca %struct.nouveau_bios*, align 8
  %5 = alloca %struct.io_mapping*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.nouveau_devinit* %0, %struct.nouveau_devinit** %2, align 8
  %13 = load %struct.nouveau_devinit*, %struct.nouveau_devinit** %2, align 8
  %14 = bitcast %struct.nouveau_devinit* %13 to i8*
  %15 = bitcast i8* %14 to %struct.nv05_devinit_priv*
  store %struct.nv05_devinit_priv* %15, %struct.nv05_devinit_priv** %3, align 8
  %16 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %17 = call %struct.nouveau_bios* @nouveau_bios(%struct.nv05_devinit_priv* %16)
  store %struct.nouveau_bios* %17, %struct.nouveau_bios** %4, align 8
  store i64 3735928559, i64* %6, align 8
  %18 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %19 = call %struct.TYPE_2__* @nv_device(%struct.nv05_devinit_priv* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.io_mapping* @fbmem_init(i32 %21)
  store %struct.io_mapping* %22, %struct.io_mapping** %5, align 8
  %23 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %24 = icmp ne %struct.io_mapping* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %27 = call i32 @nv_error(%struct.nv05_devinit_priv* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %221

28:                                               ; preds = %1
  %29 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %30 = call i32 @nv_rd32(%struct.nv05_devinit_priv* %29, i32 1052672)
  %31 = and i32 %30, 60
  %32 = ashr i32 %31, 2
  store i32 %32, i32* %8, align 4
  %33 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %34 = call i64 @bmp_mem_init_table(%struct.nouveau_bios* %33)
  store i64 %34, i64* %7, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %28
  %37 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = add nsw i64 %42, 0
  %44 = call i32 @nv_ro08(%struct.nouveau_bios* %37, i64 %43)
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %44, i32* %45, align 4
  %46 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 2, %48
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %47, %50
  %52 = add nsw i64 %51, 1
  %53 = call i32 @nv_ro08(%struct.nouveau_bios* %46, i64 %52)
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  br label %68

55:                                               ; preds = %28
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @nv05_devinit_meminit.default_config_tab, i64 0, i64 %57
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i64 0, i64 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @nv05_devinit_meminit.default_config_tab, i64 0, i64 %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %55, %36
  %69 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %70 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %71 = call i32 @nv_rdvgas(%struct.nv05_devinit_priv* %70, i32 0, i32 1)
  %72 = or i32 %71, 32
  %73 = call i32 @nv_wrvgas(%struct.nv05_devinit_priv* %69, i32 0, i32 1, i32 %72)
  %74 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %75 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %76 = call i32 @nv_rd32(%struct.nv05_devinit_priv* %74, i32 %75)
  %77 = load i32, i32* @NV04_PFB_BOOT_0_UMA_ENABLE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %213

81:                                               ; preds = %68
  %82 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %83 = load i32, i32* @NV04_PFB_DEBUG_0, align 4
  %84 = load i32, i32* @NV04_PFB_DEBUG_0_REFRESH_OFF, align 4
  %85 = call i32 @nv_mask(%struct.nv05_devinit_priv* %82, i32 %83, i32 %84, i32 0)
  %86 = load i64, i64* %7, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %81
  store i32 0, i32* %10, align 4
  %89 = load i64, i64* %7, align 8
  %90 = add nsw i64 %89, 16
  store i64 %90, i64* %7, align 8
  br label %91

91:                                               ; preds = %103, %88
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %108

94:                                               ; preds = %91
  %95 = load %struct.nouveau_bios*, %struct.nouveau_bios** %4, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i64 @nv_ro32(%struct.nouveau_bios* %95, i64 %96)
  store i64 %97, i64* %12, align 8
  %98 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @NV04_PFB_SCRAMBLE(i32 %99)
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @nv_wr32(%struct.nv05_devinit_priv* %98, i32 %100, i64 %101)
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  %106 = load i64, i64* %7, align 8
  %107 = add nsw i64 %106, 4
  store i64 %107, i64* %7, align 8
  br label %91

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %81
  %110 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %111 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @nv_mask(%struct.nv05_devinit_priv* %110, i32 %111, i32 63, i32 %113)
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 128
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %121 = load i32, i32* @NV04_PFB_CFG0, align 4
  %122 = load i32, i32* @NV04_PFB_CFG0_SCRAMBLE, align 4
  %123 = call i32 @nv_mask(%struct.nv05_devinit_priv* %120, i32 %121, i32 0, i32 %122)
  br label %124

124:                                              ; preds = %119, %109
  %125 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %126 = load i32, i32* @NV04_PFB_CFG1, align 4
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 1
  %130 = shl i32 %129, 20
  %131 = call i32 @nv_mask(%struct.nv05_devinit_priv* %125, i32 %126, i32 7340033, i32 %130)
  %132 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %133 = load i32, i32* @NV04_PFB_CFG1, align 4
  %134 = call i32 @nv_mask(%struct.nv05_devinit_priv* %132, i32 %133, i32 0, i32 1)
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %144, %124
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 4
  br i1 %137, label %138, label %147

138:                                              ; preds = %135
  %139 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 4, %140
  %142 = load i64, i64* %6, align 8
  %143 = call i32 @fbmem_poke(%struct.io_mapping* %139, i32 %141, i64 %142)
  br label %144

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %135

147:                                              ; preds = %135
  %148 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %149 = call i64 @fbmem_peek(%struct.io_mapping* %148, i32 12)
  %150 = load i64, i64* %6, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %154 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %155 = load i32, i32* @NV04_PFB_BOOT_0_RAM_WIDTH_128, align 4
  %156 = call i32 @nv_mask(%struct.nv05_devinit_priv* %153, i32 %154, i32 %155, i32 0)
  br label %157

157:                                              ; preds = %152, %147
  %158 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %159 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %160 = call i32 @nv_rd32(%struct.nv05_devinit_priv* %158, i32 %159)
  %161 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %162 = and i32 %160, %161
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_32MB, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %157
  %167 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %168 = load i64, i64* %6, align 8
  %169 = add nsw i64 %168, 1
  store i64 %169, i64* %6, align 8
  %170 = call i32 @fbmem_readback(%struct.io_mapping* %167, i32 16777216, i64 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %166
  %173 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %174 = load i64, i64* %6, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %6, align 8
  %176 = call i32 @fbmem_readback(%struct.io_mapping* %173, i32 0, i64 %175)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %172, %166
  %179 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %180 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %181 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %182 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_16MB, align 4
  %183 = call i32 @nv_mask(%struct.nv05_devinit_priv* %179, i32 %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %178, %172, %157
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_16MB, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %200

188:                                              ; preds = %184
  %189 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %190 = load i64, i64* %6, align 8
  %191 = add nsw i64 %190, 1
  store i64 %191, i64* %6, align 8
  %192 = call i32 @fbmem_readback(%struct.io_mapping* %189, i32 8388608, i64 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %196 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %197 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %198 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_8MB, align 4
  %199 = call i32 @nv_mask(%struct.nv05_devinit_priv* %195, i32 %196, i32 %197, i32 %198)
  br label %200

200:                                              ; preds = %194, %188, %184
  %201 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %202 = load i64, i64* %6, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %6, align 8
  %204 = call i32 @fbmem_readback(%struct.io_mapping* %201, i32 4194304, i64 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %200
  %207 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %208 = load i32, i32* @NV04_PFB_BOOT_0, align 4
  %209 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT, align 4
  %210 = load i32, i32* @NV04_PFB_BOOT_0_RAM_AMOUNT_4MB, align 4
  %211 = call i32 @nv_mask(%struct.nv05_devinit_priv* %207, i32 %208, i32 %209, i32 %210)
  br label %212

212:                                              ; preds = %206, %200
  br label %213

213:                                              ; preds = %212, %80
  %214 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %215 = load %struct.nv05_devinit_priv*, %struct.nv05_devinit_priv** %3, align 8
  %216 = call i32 @nv_rdvgas(%struct.nv05_devinit_priv* %215, i32 0, i32 1)
  %217 = and i32 %216, -33
  %218 = call i32 @nv_wrvgas(%struct.nv05_devinit_priv* %214, i32 0, i32 1, i32 %217)
  %219 = load %struct.io_mapping*, %struct.io_mapping** %5, align 8
  %220 = call i32 @fbmem_fini(%struct.io_mapping* %219)
  br label %221

221:                                              ; preds = %213, %25
  ret void
}

declare dso_local %struct.nouveau_bios* @nouveau_bios(%struct.nv05_devinit_priv*) #1

declare dso_local %struct.io_mapping* @fbmem_init(i32) #1

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nv05_devinit_priv*) #1

declare dso_local i32 @nv_error(%struct.nv05_devinit_priv*, i8*) #1

declare dso_local i32 @nv_rd32(%struct.nv05_devinit_priv*, i32) #1

declare dso_local i64 @bmp_mem_init_table(%struct.nouveau_bios*) #1

declare dso_local i32 @nv_ro08(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_wrvgas(%struct.nv05_devinit_priv*, i32, i32, i32) #1

declare dso_local i32 @nv_rdvgas(%struct.nv05_devinit_priv*, i32, i32) #1

declare dso_local i32 @nv_mask(%struct.nv05_devinit_priv*, i32, i32, i32) #1

declare dso_local i64 @nv_ro32(%struct.nouveau_bios*, i64) #1

declare dso_local i32 @nv_wr32(%struct.nv05_devinit_priv*, i32, i64) #1

declare dso_local i32 @NV04_PFB_SCRAMBLE(i32) #1

declare dso_local i32 @fbmem_poke(%struct.io_mapping*, i32, i64) #1

declare dso_local i64 @fbmem_peek(%struct.io_mapping*, i32) #1

declare dso_local i32 @fbmem_readback(%struct.io_mapping*, i32, i64) #1

declare dso_local i32 @fbmem_fini(%struct.io_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
