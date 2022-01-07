; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv42_tv_sample_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv17_tv.c_nv42_tv_sample_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)* }

@NV_PRAMDAC_DACCLK = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC1 = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC0 = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_HTOTAL = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_HSYNC_START = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_HSYNC_END = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL = common dso_local global i32 0, align 4
@NV_PRAMDAC_TEST_CONTROL = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_DISPEN_POS = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_WIDTH_12 = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_READ_PROG = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_HSYNC_POS = common dso_local global i32 0, align 4
@NV_PRAMDAC_FP_TG_CONTROL_VSYNC_POS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*)* @nv42_tv_sample_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv42_tv_sample_load(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %3, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %25 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %24)
  store %struct.nouveau_drm* %25, %struct.nouveau_drm** %4, align 8
  %26 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.nouveau_gpio* @nouveau_gpio(i32 %28)
  store %struct.nouveau_gpio* %29, %struct.nouveau_gpio** %5, align 8
  %30 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %31 = call i32 @nv04_dac_output_offset(%struct.drm_encoder* %30)
  store i32 %31, i32* %7, align 4
  store i32 0, i32* %19, align 4
  store i32 136555650, i32* %6, align 4
  %32 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %33 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %39 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %1
  %43 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %44 = load i32, i32* @NV_PRAMDAC_DACCLK, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @NVReadRAMDAC(%struct.drm_device* %43, i32 0, i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 256
  %50 = ashr i32 %49, 8
  store i32 %50, i32* %20, align 4
  %51 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %52 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %51, i32 0, i32 0
  %53 = load i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32)** %52, align 8
  %54 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %55 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %56 = call i32 %53(%struct.nouveau_gpio* %54, i32 0, i32 %55, i32 255)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %58 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %57, i32 0, i32 0
  %59 = load i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32)** %58, align 8
  %60 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %61 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %62 = call i32 %59(%struct.nouveau_gpio* %60, i32 0, i32 %61, i32 255)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* @NV_PRAMDAC_FP_HTOTAL, align 4
  %66 = call i32 @NVReadRAMDAC(%struct.drm_device* %63, i32 %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_START, align 4
  %70 = call i32 @NVReadRAMDAC(%struct.drm_device* %67, i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_END, align 4
  %74 = call i32 @NVReadRAMDAC(%struct.drm_device* %71, i32 %72, i32 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL, align 4
  %78 = call i32 @NVReadRAMDAC(%struct.drm_device* %75, i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %80 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @NVReadRAMDAC(%struct.drm_device* %79, i32 0, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %85 = load i32, i32* %20, align 4
  %86 = call i32 @NVReadRAMDAC(%struct.drm_device* %84, i32 %85, i32 6818844)
  store i32 %86, i32* %17, align 4
  %87 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %88 = load i32, i32* %20, align 4
  %89 = call i32 @NVReadRAMDAC(%struct.drm_device* %87, i32 %88, i32 6818836)
  store i32 %89, i32* %16, align 4
  %90 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %91 = load i32, i32* %20, align 4
  %92 = call i32 @NVReadRAMDAC(%struct.drm_device* %90, i32 %91, i32 6818924)
  store i32 %92, i32* %18, align 4
  %93 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %94 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %93, i32 0, i32 1
  %95 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %94, align 8
  %96 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %97 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %98 = call i32 %95(%struct.nouveau_gpio* %96, i32 0, i32 %97, i32 255, i32 1)
  %99 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %100 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %99, i32 0, i32 1
  %101 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %100, align 8
  %102 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %103 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %104 = call i32 %101(%struct.nouveau_gpio* %102, i32 0, i32 %103, i32 255, i32 1)
  %105 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* @NV_PRAMDAC_FP_HTOTAL, align 4
  %108 = call i32 @NVWriteRAMDAC(%struct.drm_device* %105, i32 %106, i32 %107, i32 1343)
  %109 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_START, align 4
  %112 = call i32 @NVWriteRAMDAC(%struct.drm_device* %109, i32 %110, i32 %111, i32 1047)
  %113 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_END, align 4
  %116 = call i32 @NVWriteRAMDAC(%struct.drm_device* %113, i32 %114, i32 %115, i32 1183)
  %117 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL, align 4
  %120 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_DISPEN_POS, align 4
  %121 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_WIDTH_12, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_READ_PROG, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_HSYNC_POS, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL_VSYNC_POS, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @NVWriteRAMDAC(%struct.drm_device* %117, i32 %118, i32 %119, i32 %128)
  %130 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %131 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @NVWriteRAMDAC(%struct.drm_device* %130, i32 0, i32 %133, i32 0)
  %135 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %136 = load i32, i32* @NV_PRAMDAC_DACCLK, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %15, align 4
  %140 = and i32 %139, -256
  %141 = or i32 %140, 34
  %142 = call i32 @NVWriteRAMDAC(%struct.drm_device* %135, i32 0, i32 %138, i32 %141)
  %143 = call i32 @msleep(i32 1)
  %144 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %145 = load i32, i32* @NV_PRAMDAC_DACCLK, align 4
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %15, align 4
  %149 = and i32 %148, -256
  %150 = or i32 %149, 33
  %151 = call i32 @NVWriteRAMDAC(%struct.drm_device* %144, i32 0, i32 %147, i32 %150)
  %152 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %153 = load i32, i32* %20, align 4
  %154 = call i32 @NVWriteRAMDAC(%struct.drm_device* %152, i32 %153, i32 6818844, i32 1048576)
  %155 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %156 = load i32, i32* %20, align 4
  %157 = call i32 @NVWriteRAMDAC(%struct.drm_device* %155, i32 %156, i32 6818836, i32 262144)
  %158 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %159 = load i32, i32* %20, align 4
  %160 = load i32, i32* %6, align 4
  %161 = ashr i32 %160, 10
  %162 = and i32 %161, 1023
  %163 = call i32 @NVWriteRAMDAC(%struct.drm_device* %158, i32 %159, i32 6818924, i32 %162)
  %164 = call i32 @msleep(i32 20)
  %165 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %166 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %166, %167
  %169 = call i32 @NVReadRAMDAC(%struct.drm_device* %165, i32 0, i32 %168)
  %170 = and i32 %169, 1073741824
  %171 = load i32, i32* %19, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %19, align 4
  %173 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %6, align 4
  %176 = and i32 %175, 1023
  %177 = call i32 @NVWriteRAMDAC(%struct.drm_device* %173, i32 %174, i32 6818924, i32 %176)
  %178 = call i32 @msleep(i32 20)
  %179 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %180 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %180, %181
  %183 = call i32 @NVReadRAMDAC(%struct.drm_device* %179, i32 0, i32 %182)
  %184 = and i32 %183, -1610612736
  %185 = load i32, i32* %19, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %19, align 4
  %187 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @NVWriteRAMDAC(%struct.drm_device* %187, i32 %188, i32 6818844, i32 %189)
  %191 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %16, align 4
  %194 = call i32 @NVWriteRAMDAC(%struct.drm_device* %191, i32 %192, i32 6818836, i32 %193)
  %195 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %196 = load i32, i32* %20, align 4
  %197 = load i32, i32* %18, align 4
  %198 = call i32 @NVWriteRAMDAC(%struct.drm_device* %195, i32 %196, i32 6818924, i32 %197)
  %199 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %200 = load i32, i32* @NV_PRAMDAC_DACCLK, align 4
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %200, %201
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @NVWriteRAMDAC(%struct.drm_device* %199, i32 0, i32 %202, i32 %203)
  %205 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %206 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %206, %207
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @NVWriteRAMDAC(%struct.drm_device* %205, i32 0, i32 %208, i32 %209)
  %211 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* @NV_PRAMDAC_FP_TG_CONTROL, align 4
  %214 = load i32, i32* %13, align 4
  %215 = call i32 @NVWriteRAMDAC(%struct.drm_device* %211, i32 %212, i32 %213, i32 %214)
  %216 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_END, align 4
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @NVWriteRAMDAC(%struct.drm_device* %216, i32 %217, i32 %218, i32 %219)
  %221 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %222 = load i32, i32* %20, align 4
  %223 = load i32, i32* @NV_PRAMDAC_FP_HSYNC_START, align 4
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @NVWriteRAMDAC(%struct.drm_device* %221, i32 %222, i32 %223, i32 %224)
  %226 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %227 = load i32, i32* %20, align 4
  %228 = load i32, i32* @NV_PRAMDAC_FP_HTOTAL, align 4
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @NVWriteRAMDAC(%struct.drm_device* %226, i32 %227, i32 %228, i32 %229)
  %231 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %232 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %231, i32 0, i32 1
  %233 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %232, align 8
  %234 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %235 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %236 = load i32, i32* %9, align 4
  %237 = call i32 %233(%struct.nouveau_gpio* %234, i32 0, i32 %235, i32 255, i32 %236)
  %238 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %239 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %238, i32 0, i32 1
  %240 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %239, align 8
  %241 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %5, align 8
  %242 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %243 = load i32, i32* %8, align 4
  %244 = call i32 %240(%struct.nouveau_gpio* %241, i32 0, i32 %242, i32 255, i32 %243)
  %245 = load i32, i32* %19, align 4
  ret i32 %245
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(i32) #1

declare dso_local i32 @nv04_dac_output_offset(%struct.drm_encoder*) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
