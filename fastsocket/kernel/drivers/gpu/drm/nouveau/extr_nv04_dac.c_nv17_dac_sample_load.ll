; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_dac.c_nv17_dac_sample_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_dac.c_nv17_dac_sample_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_gpio = type { i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)* }
%struct.dcb_output = type { i64 }
%struct.TYPE_6__ = type { %struct.dcb_output* }
%struct.TYPE_5__ = type { i64 }

@DCB_OUTPUT_TV = common dso_local global i64 0, align 8
@NV_PRAMDAC_TEST_CONTROL = common dso_local global i64 0, align 8
@NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF = common dso_local global i32 0, align 4
@NV_PBUS_POWERCTRL_2 = common dso_local global i32 0, align 4
@NV_PBUS_POWERCTRL_4 = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC1 = common dso_local global i32 0, align 4
@DCB_GPIO_TVDAC0 = common dso_local global i32 0, align 4
@NV_PRAMDAC_DACCLK = common dso_local global i64 0, align 8
@NV_CIO_CRE_RPC1_INDEX = common dso_local global i32 0, align 4
@NV_40 = common dso_local global i64 0, align 8
@NV_PRAMDAC_TESTPOINT_DATA = common dso_local global i64 0, align 8
@NV_PRAMDAC_TESTPOINT_DATA_NOTBLANK = common dso_local global i32 0, align 4
@NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv17_dac_sample_load(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.nouveau_drm*, align 8
  %5 = alloca %struct.nouveau_device*, align 8
  %6 = alloca %struct.nouveau_gpio*, align 8
  %7 = alloca %struct.dcb_output*, align 8
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
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %20 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %21 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %20, i32 0, i32 0
  %22 = load %struct.drm_device*, %struct.drm_device** %21, align 8
  store %struct.drm_device* %22, %struct.drm_device** %3, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %24 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %23)
  store %struct.nouveau_drm* %24, %struct.nouveau_drm** %4, align 8
  %25 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %26 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %25)
  store %struct.nouveau_device* %26, %struct.nouveau_device** %5, align 8
  %27 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %28 = call %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_device* %27)
  store %struct.nouveau_gpio* %28, %struct.nouveau_gpio** %6, align 8
  %29 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %30 = call %struct.TYPE_6__* @nouveau_encoder(%struct.drm_encoder* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.dcb_output*, %struct.dcb_output** %31, align 8
  store %struct.dcb_output* %32, %struct.dcb_output** %7, align 8
  %33 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %34 = call i32 @nv04_dac_output_offset(%struct.drm_encoder* %33)
  store i32 %34, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %35 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  %36 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %1
  store i32 167936160, i32* %9, align 4
  %41 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %42 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %48 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %46, %40
  br label %64

52:                                               ; preds = %1
  store i32 335872320, i32* %9, align 4
  %53 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %54 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %60 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %58, %52
  br label %64

64:                                               ; preds = %63, %51
  %65 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %66 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = call i32 @NVReadRAMDAC(%struct.drm_device* %65, i32 0, i64 %69)
  store i32 %70, i32* %14, align 4
  %71 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %72 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = call i32 @NVWriteRAMDAC(%struct.drm_device* %71, i32 0, i64 %75, i32 %79)
  %81 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %82 = load i32, i32* @NV_PBUS_POWERCTRL_2, align 4
  %83 = call i32 @nv_rd32(%struct.nouveau_device* %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %85 = load i32, i32* @NV_PBUS_POWERCTRL_2, align 4
  %86 = load i32, i32* %11, align 4
  %87 = and i32 %86, -671088641
  %88 = call i32 @nv_wr32(%struct.nouveau_device* %84, i32 %85, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 104
  br i1 %90, label %91, label %100

91:                                               ; preds = %64
  %92 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %93 = load i32, i32* @NV_PBUS_POWERCTRL_4, align 4
  %94 = call i32 @nv_rd32(%struct.nouveau_device* %92, i32 %93)
  store i32 %94, i32* %12, align 4
  %95 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %96 = load i32, i32* @NV_PBUS_POWERCTRL_4, align 4
  %97 = load i32, i32* %12, align 4
  %98 = and i32 %97, -49
  %99 = call i32 @nv_wr32(%struct.nouveau_device* %95, i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %91, %64
  %101 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %102 = icmp ne %struct.nouveau_gpio* %101, null
  br i1 %102, label %103, label %140

103:                                              ; preds = %100
  %104 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %105 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %104, i32 0, i32 0
  %106 = load i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32)** %105, align 8
  %107 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %108 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %109 = call i32 %106(%struct.nouveau_gpio* %107, i32 0, i32 %108, i32 255)
  store i32 %109, i32* %16, align 4
  %110 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %111 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %110, i32 0, i32 0
  %112 = load i32 (%struct.nouveau_gpio*, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32)** %111, align 8
  %113 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %114 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %115 = call i32 %112(%struct.nouveau_gpio* %113, i32 0, i32 %114, i32 255)
  store i32 %115, i32* %15, align 4
  %116 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %117 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %116, i32 0, i32 1
  %118 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %117, align 8
  %119 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %120 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %121 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  %122 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %125 = icmp eq i64 %123, %124
  %126 = zext i1 %125 to i32
  %127 = call i32 %118(%struct.nouveau_gpio* %119, i32 0, i32 %120, i32 255, i32 %126)
  %128 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %129 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %128, i32 0, i32 1
  %130 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %129, align 8
  %131 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %132 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %133 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  %134 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %137 = icmp eq i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 %130(%struct.nouveau_gpio* %131, i32 0, i32 %132, i32 255, i32 %138)
  br label %140

140:                                              ; preds = %103, %100
  %141 = call i32 @msleep(i32 4)
  %142 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %143 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = call i32 @NVReadRAMDAC(%struct.drm_device* %142, i32 0, i64 %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = and i32 %148, 256
  %150 = ashr i32 %149, 8
  store i32 %150, i32* %19, align 4
  %151 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %152 = load i32, i32* %19, align 4
  %153 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %154 = call i32 @NVReadVgaCrtc(%struct.drm_device* %151, i32 %152, i32 %153)
  %155 = and i32 %154, 192
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %140
  %158 = load i32, i32* %19, align 4
  %159 = xor i32 %158, 1
  store i32 %159, i32* %19, align 4
  br label %160

160:                                              ; preds = %157, %140
  %161 = load i32, i32* %13, align 4
  %162 = and i32 %161, -306
  %163 = load i32, i32* %19, align 4
  %164 = shl i32 %163, 8
  %165 = or i32 %162, %164
  store i32 %165, i32* %18, align 4
  %166 = load %struct.nouveau_drm*, %struct.nouveau_drm** %4, align 8
  %167 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call %struct.TYPE_5__* @nv_device(i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @NV_40, align 8
  %173 = icmp sge i64 %171, %172
  br i1 %173, label %174, label %187

174:                                              ; preds = %160
  %175 = load %struct.dcb_output*, %struct.dcb_output** %7, align 8
  %176 = getelementptr inbounds %struct.dcb_output, %struct.dcb_output* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @DCB_OUTPUT_TV, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %174
  %181 = load i32, i32* %18, align 4
  %182 = or i32 %181, 1703936
  store i32 %182, i32* %18, align 4
  br label %186

183:                                              ; preds = %174
  %184 = load i32, i32* %18, align 4
  %185 = and i32 %184, -1703937
  store i32 %185, i32* %18, align 4
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %160
  %188 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %189 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = load i32, i32* %18, align 4
  %194 = call i32 @NVWriteRAMDAC(%struct.drm_device* %188, i32 0, i64 %192, i32 %193)
  %195 = call i32 @msleep(i32 1)
  %196 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %197 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %197, %199
  %201 = call i32 @NVReadRAMDAC(%struct.drm_device* %196, i32 0, i64 %200)
  store i32 %201, i32* %17, align 4
  %202 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %203 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %203, %205
  %207 = load i32, i32* %17, align 4
  %208 = or i32 %207, 1
  %209 = call i32 @NVWriteRAMDAC(%struct.drm_device* %202, i32 0, i64 %206, i32 %208)
  %210 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %211 = load i32, i32* %19, align 4
  %212 = load i64, i64* @NV_PRAMDAC_TESTPOINT_DATA, align 8
  %213 = load i32, i32* @NV_PRAMDAC_TESTPOINT_DATA_NOTBLANK, align 4
  %214 = load i32, i32* %9, align 4
  %215 = or i32 %213, %214
  %216 = call i32 @NVWriteRAMDAC(%struct.drm_device* %210, i32 %211, i64 %212, i32 %215)
  %217 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %218 = load i32, i32* %19, align 4
  %219 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %220 = call i32 @NVReadRAMDAC(%struct.drm_device* %217, i32 %218, i64 %219)
  store i32 %220, i32* %17, align 4
  %221 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %222 = load i32, i32* %19, align 4
  %223 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %224 = load i32, i32* %17, align 4
  %225 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED, align 4
  %226 = or i32 %224, %225
  %227 = call i32 @NVWriteRAMDAC(%struct.drm_device* %221, i32 %222, i64 %223, i32 %226)
  %228 = call i32 @msleep(i32 5)
  %229 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %230 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %230, %232
  %234 = call i32 @NVReadRAMDAC(%struct.drm_device* %229, i32 0, i64 %233)
  store i32 %234, i32* %8, align 4
  %235 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %236 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %236, %238
  %240 = call i32 @NVReadRAMDAC(%struct.drm_device* %235, i32 0, i64 %239)
  %241 = load i32, i32* %8, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %8, align 4
  %243 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %244 = load i32, i32* %19, align 4
  %245 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %246 = call i32 @NVReadRAMDAC(%struct.drm_device* %243, i32 %244, i64 %245)
  store i32 %246, i32* %17, align 4
  %247 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %248 = load i32, i32* %19, align 4
  %249 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %250 = load i32, i32* %17, align 4
  %251 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL_TP_INS_EN_ASSERTED, align 4
  %252 = xor i32 %251, -1
  %253 = and i32 %250, %252
  %254 = call i32 @NVWriteRAMDAC(%struct.drm_device* %247, i32 %248, i64 %249, i32 %253)
  %255 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %256 = load i32, i32* %19, align 4
  %257 = load i64, i64* @NV_PRAMDAC_TESTPOINT_DATA, align 8
  %258 = call i32 @NVWriteRAMDAC(%struct.drm_device* %255, i32 %256, i64 %257, i32 0)
  %259 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %260 = load i64, i64* @NV_PRAMDAC_DACCLK, align 8
  %261 = load i32, i32* %10, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %260, %262
  %264 = load i32, i32* %13, align 4
  %265 = call i32 @NVWriteRAMDAC(%struct.drm_device* %259, i32 0, i64 %263, i32 %264)
  %266 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %267 = load i64, i64* @NV_PRAMDAC_TEST_CONTROL, align 8
  %268 = load i32, i32* %10, align 4
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %267, %269
  %271 = load i32, i32* %14, align 4
  %272 = call i32 @NVWriteRAMDAC(%struct.drm_device* %266, i32 0, i64 %270, i32 %271)
  %273 = load i32, i32* %10, align 4
  %274 = icmp eq i32 %273, 104
  br i1 %274, label %275, label %280

275:                                              ; preds = %187
  %276 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %277 = load i32, i32* @NV_PBUS_POWERCTRL_4, align 4
  %278 = load i32, i32* %12, align 4
  %279 = call i32 @nv_wr32(%struct.nouveau_device* %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %275, %187
  %281 = load %struct.nouveau_device*, %struct.nouveau_device** %5, align 8
  %282 = load i32, i32* @NV_PBUS_POWERCTRL_2, align 4
  %283 = load i32, i32* %11, align 4
  %284 = call i32 @nv_wr32(%struct.nouveau_device* %281, i32 %282, i32 %283)
  %285 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %286 = icmp ne %struct.nouveau_gpio* %285, null
  br i1 %286, label %287, label %302

287:                                              ; preds = %280
  %288 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %289 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %288, i32 0, i32 1
  %290 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %289, align 8
  %291 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %292 = load i32, i32* @DCB_GPIO_TVDAC1, align 4
  %293 = load i32, i32* %16, align 4
  %294 = call i32 %290(%struct.nouveau_gpio* %291, i32 0, i32 %292, i32 255, i32 %293)
  %295 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %296 = getelementptr inbounds %struct.nouveau_gpio, %struct.nouveau_gpio* %295, i32 0, i32 1
  %297 = load i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)*, i32 (%struct.nouveau_gpio*, i32, i32, i32, i32)** %296, align 8
  %298 = load %struct.nouveau_gpio*, %struct.nouveau_gpio** %6, align 8
  %299 = load i32, i32* @DCB_GPIO_TVDAC0, align 4
  %300 = load i32, i32* %15, align 4
  %301 = call i32 %297(%struct.nouveau_gpio* %298, i32 0, i32 %299, i32 255, i32 %300)
  br label %302

302:                                              ; preds = %287, %280
  %303 = load i32, i32* %8, align 4
  ret i32 %303
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_gpio* @nouveau_gpio(%struct.nouveau_device*) #1

declare dso_local %struct.TYPE_6__* @nouveau_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @nv04_dac_output_offset(%struct.drm_encoder*) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i64) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i64, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @nv_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
