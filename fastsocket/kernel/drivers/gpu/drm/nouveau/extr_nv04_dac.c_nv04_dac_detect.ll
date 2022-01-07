; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_dac.c_nv04_dac_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv04_dac.c_nv04_dac_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_connector = type { i32 }
%struct.nouveau_device = type { i32 }
%struct.nouveau_drm = type { i32 }

@NV_CIO_CR_MODE_INDEX = common dso_local global i32 0, align 4
@NV_VIO_SR_CLOCK_INDEX = common dso_local global i32 0, align 4
@NV_PRAMDAC_TEST_CONTROL = common dso_local global i32 0, align 4
@NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF = common dso_local global i32 0, align 4
@NV_CIO_CRE_PIXEL_INDEX = common dso_local global i32 0, align 4
@NV_CIO_CRE_PIXEL_FORMAT = common dso_local global i32 0, align 4
@NV_CIO_CRE_RPC1_INDEX = common dso_local global i32 0, align 4
@NV_PRMDIO_READ_MODE_ADDRESS = common dso_local global i32 0, align 4
@NV_PRMDIO_PALETTE_DATA = common dso_local global i32 0, align 4
@NV_PRMDIO_PIXEL_MASK = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL_BPC_8BITS = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL_TERMINATION_75OHM = common dso_local global i32 0, align 4
@NV_PRAMDAC_GENERAL_CONTROL_PIXMIX_ON = common dso_local global i32 0, align 4
@NV_PRMDIO_WRITE_MODE_ADDRESS = common dso_local global i32 0, align 4
@MAX_SAMPLE_PAIRS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Load detected on head A\0A\00", align 1
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_connector*)* @nv04_dac_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_dac_detect(%struct.drm_encoder* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.nouveau_device*, align 8
  %8 = alloca %struct.nouveau_drm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [2 x i32], align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %5, align 8
  %21 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %21, i32 0, i32 0
  %23 = load %struct.drm_device*, %struct.drm_device** %22, align 8
  store %struct.drm_device* %23, %struct.drm_device** %6, align 8
  %24 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %25 = call %struct.nouveau_device* @nouveau_dev(%struct.drm_device* %24)
  store %struct.nouveau_device* %25, %struct.nouveau_device** %7, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %27 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %26)
  store %struct.nouveau_drm* %27, %struct.nouveau_drm** %8, align 8
  store i32 1, i32* %19, align 4
  %28 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %29 = call i64 @nv_two_heads(%struct.drm_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %33 = call i32 @NVSetOwner(%struct.drm_device* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %36 = load i32, i32* @NV_CIO_CR_MODE_INDEX, align 4
  %37 = call i32 @NVReadVgaCrtc(%struct.drm_device* %35, i32 0, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %39 = load i32, i32* @NV_CIO_CR_MODE_INDEX, align 4
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, 128
  %42 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %38, i32 0, i32 %39, i32 %41)
  %43 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %44 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %45 = call i32 @NVReadVgaSeq(%struct.drm_device* %43, i32 0, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %47 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, -33
  %50 = call i32 @NVWriteVgaSeq(%struct.drm_device* %46, i32 0, i32 %47, i32 %49)
  %51 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %52 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %53 = call i32 @NVReadRAMDAC(%struct.drm_device* %51, i32 0, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %55 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL_PWRDWN_DAC_OFF, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 @NVWriteRAMDAC(%struct.drm_device* %54, i32 0, i32 %55, i32 %59)
  %61 = call i32 @msleep(i32 10)
  %62 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %63 = load i32, i32* @NV_CIO_CRE_PIXEL_INDEX, align 4
  %64 = call i32 @NVReadVgaCrtc(%struct.drm_device* %62, i32 0, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %66 = load i32, i32* @NV_CIO_CRE_PIXEL_INDEX, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @NV_CIO_CRE_PIXEL_FORMAT, align 4
  %69 = call i32 @MASK(i32 %68)
  %70 = or i32 128, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %67, %71
  %73 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %65, i32 0, i32 %66, i32 %72)
  %74 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %75 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %76 = call i32 @NVReadVgaCrtc(%struct.drm_device* %74, i32 0, i32 %75)
  store i32 %76, i32* %11, align 4
  %77 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %78 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, -193
  %81 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %77, i32 0, i32 %78, i32 %80)
  %82 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %83 = load i32, i32* @NV_PRMDIO_READ_MODE_ADDRESS, align 4
  %84 = call i32 @nv_wr08(%struct.nouveau_device* %82, i32 %83, i32 0)
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %95, %34
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %86, 3
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %90 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %91 = call i32 @nv_rd08(%struct.nouveau_device* %89, i32 %90)
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %93
  store i32 %91, i32* %94, align 4
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %85

98:                                               ; preds = %85
  %99 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %100 = load i32, i32* @NV_PRMDIO_PIXEL_MASK, align 4
  %101 = call i32 @nv_rd08(%struct.nouveau_device* %99, i32 %100)
  store i32 %101, i32* %14, align 4
  %102 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %103 = load i32, i32* @NV_PRMDIO_PIXEL_MASK, align 4
  %104 = call i32 @nv_wr08(%struct.nouveau_device* %102, i32 %103, i32 0)
  %105 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %106 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL, align 4
  %107 = call i32 @NVReadRAMDAC(%struct.drm_device* %105, i32 0, i32 %106)
  store i32 %107, i32* %16, align 4
  %108 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %109 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL, align 4
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_BPC_8BITS, align 4
  %112 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_TERMINATION_75OHM, align 4
  %113 = or i32 %111, %112
  %114 = xor i32 %113, -1
  %115 = and i32 %110, %114
  %116 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL_PIXMIX_ON, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @NVWriteRAMDAC(%struct.drm_device* %108, i32 0, i32 %109, i32 %117)
  store i32 8, i32* %18, align 4
  br label %119

119:                                              ; preds = %169, %98
  %120 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %121 = load i32, i32* @NV_PRMDIO_WRITE_MODE_ADDRESS, align 4
  %122 = call i32 @nv_wr08(%struct.nouveau_device* %120, i32 %121, i32 0)
  %123 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %124 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %125 = call i32 @nv_wr08(%struct.nouveau_device* %123, i32 %124, i32 0)
  %126 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %127 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %128 = call i32 @nv_wr08(%struct.nouveau_device* %126, i32 %127, i32 0)
  %129 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %130 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %131 = load i32, i32* %18, align 4
  %132 = call i32 @nv_wr08(%struct.nouveau_device* %129, i32 %130, i32 %131)
  store i32 0, i32* %17, align 4
  br label %133

133:                                              ; preds = %151, %119
  %134 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %136 = call i64 @sample_load_twice(%struct.drm_device* %134, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %172

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139
  %141 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %142, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load i32, i32* %17, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* @MAX_SAMPLE_PAIRS, align 4
  %150 = icmp slt i32 %148, %149
  br label %151

151:                                              ; preds = %146, %140
  %152 = phi i1 [ false, %140 ], [ %150, %146 ]
  br i1 %152, label %133, label %153

153:                                              ; preds = %151
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @MAX_SAMPLE_PAIRS, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i32 0, i32* %19, align 4
  br label %161

158:                                              ; preds = %153
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i64 0, i64 0
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %19, align 4
  br label %161

161:                                              ; preds = %158, %157
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %18, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %18, align 4
  %165 = icmp slt i32 %164, 24
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br label %169

169:                                              ; preds = %166, %162
  %170 = phi i1 [ false, %162 ], [ %168, %166 ]
  br i1 %170, label %119, label %171

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %171, %138
  %173 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %174 = load i32, i32* @NV_PRMDIO_PIXEL_MASK, align 4
  %175 = load i32, i32* %14, align 4
  %176 = call i32 @nv_wr08(%struct.nouveau_device* %173, i32 %174, i32 %175)
  %177 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %178 = load i32, i32* @NV_PRAMDAC_GENERAL_CONTROL, align 4
  %179 = load i32, i32* %16, align 4
  %180 = call i32 @NVWriteRAMDAC(%struct.drm_device* %177, i32 0, i32 %178, i32 %179)
  %181 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %182 = load i32, i32* @NV_PRMDIO_WRITE_MODE_ADDRESS, align 4
  %183 = call i32 @nv_wr08(%struct.nouveau_device* %181, i32 %182, i32 0)
  store i32 0, i32* %17, align 4
  br label %184

184:                                              ; preds = %195, %172
  %185 = load i32, i32* %17, align 4
  %186 = icmp slt i32 %185, 3
  br i1 %186, label %187, label %198

187:                                              ; preds = %184
  %188 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  %189 = load i32, i32* @NV_PRMDIO_PALETTE_DATA, align 4
  %190 = load i32, i32* %17, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @nv_wr08(%struct.nouveau_device* %188, i32 %189, i32 %193)
  br label %195

195:                                              ; preds = %187
  %196 = load i32, i32* %17, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %17, align 4
  br label %184

198:                                              ; preds = %184
  %199 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %200 = load i32, i32* @NV_PRAMDAC_TEST_CONTROL, align 4
  %201 = load i32, i32* %15, align 4
  %202 = call i32 @NVWriteRAMDAC(%struct.drm_device* %199, i32 0, i32 %200, i32 %201)
  %203 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %204 = load i32, i32* @NV_CIO_CRE_PIXEL_INDEX, align 4
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %203, i32 0, i32 %204, i32 %205)
  %207 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %208 = load i32, i32* @NV_CIO_CRE_RPC1_INDEX, align 4
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %207, i32 0, i32 %208, i32 %209)
  %211 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %212 = load i32, i32* @NV_VIO_SR_CLOCK_INDEX, align 4
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @NVWriteVgaSeq(%struct.drm_device* %211, i32 0, i32 %212, i32 %213)
  %215 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %216 = load i32, i32* @NV_CIO_CR_MODE_INDEX, align 4
  %217 = load i32, i32* %12, align 4
  %218 = call i32 @NVWriteVgaCrtc(%struct.drm_device* %215, i32 0, i32 %216, i32 %217)
  %219 = load i32, i32* %18, align 4
  %220 = icmp eq i32 %219, 24
  br i1 %220, label %221, label %225

221:                                              ; preds = %198
  %222 = load %struct.nouveau_drm*, %struct.nouveau_drm** %8, align 8
  %223 = call i32 @NV_DEBUG(%struct.nouveau_drm* %222, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %224 = load i32, i32* @connector_status_connected, align 4
  store i32 %224, i32* %3, align 4
  br label %227

225:                                              ; preds = %198
  %226 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %226, i32* %3, align 4
  br label %227

227:                                              ; preds = %225, %221
  %228 = load i32, i32* %3, align 4
  ret i32 %228
}

declare dso_local %struct.nouveau_device* @nouveau_dev(%struct.drm_device*) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i64 @nv_two_heads(%struct.drm_device*) #1

declare dso_local i32 @NVSetOwner(%struct.drm_device*, i32) #1

declare dso_local i32 @NVReadVgaCrtc(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaCrtc(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @NVReadVgaSeq(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteVgaSeq(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @NVReadRAMDAC(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @NVWriteRAMDAC(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @MASK(i32) #1

declare dso_local i32 @nv_wr08(%struct.nouveau_device*, i32, i32) #1

declare dso_local i32 @nv_rd08(%struct.nouveau_device*, i32) #1

declare dso_local i64 @sample_load_twice(%struct.drm_device*, i32*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
