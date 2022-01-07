; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_fe_program_cfoe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005-fe.c_af9005_fe_program_cfoe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Invalid bandwith %d.\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @af9005_fe_program_cfoe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_fe_program_cfoe(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [4 x i64], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %22 [
    i32 130, label %19
    i32 129, label %20
    i32 128, label %21
  ]

19:                                               ; preds = %2
  store i32 44938972, i32* %12, align 4
  store i32 11236115, i32* %13, align 4
  store i32 11234743, i32* %14, align 4
  store i32 11233372, i32* %15, align 4
  store i32 22469486, i32* %16, align 4
  store i32 5617372, i32* %17, align 4
  br label %27

20:                                               ; preds = %2
  store i32 52428801, i32* %12, align 4
  store i32 13108800, i32* %13, align 4
  store i32 13107200, i32* %14, align 4
  store i32 13105600, i32* %15, align 4
  store i32 26214400, i32* %16, align 4
  store i32 6553600, i32* %17, align 4
  br label %27

21:                                               ; preds = %2
  store i32 59918630, i32* %12, align 4
  store i32 14981486, i32* %13, align 4
  store i32 14979657, i32* %14, align 4
  store i32 14977829, i32* %15, align 4
  store i32 29959315, i32* %16, align 4
  store i32 7489829, i32* %17, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %378

27:                                               ; preds = %21, %20, %19
  %28 = load i32, i32* %12, align 4
  %29 = and i32 %28, 255
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 65280
  %33 = ashr i32 %32, 8
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, 16711680
  %37 = ashr i32 %36, 16
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* %12, align 4
  %40 = and i32 %39, 50331648
  %41 = ashr i32 %40, 24
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64 %43, i64* %44, align 16
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  store i64 %45, i64* %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  store i64 %47, i64* %48, align 16
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  store i64 %49, i64* %50, align 8
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %53 = load i64, i64* %52, align 16
  %54 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %51, i32 44544, i64 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %27
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %378

59:                                               ; preds = %27
  %60 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %61 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %60, i32 44545, i64 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %3, align 4
  br label %378

68:                                               ; preds = %59
  %69 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %71 = load i64, i64* %70, align 16
  %72 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %69, i32 44546, i64 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i32, i32* %11, align 4
  store i32 %76, i32* %3, align 4
  br label %378

77:                                               ; preds = %68
  %78 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %79 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %78, i32 44547, i64 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %378

86:                                               ; preds = %77
  %87 = load i32, i32* %16, align 4
  %88 = and i32 %87, 63
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %6, align 8
  %90 = load i32, i32* %16, align 4
  %91 = and i32 %90, 16320
  %92 = ashr i32 %91, 6
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %7, align 8
  %94 = load i32, i32* %16, align 4
  %95 = and i32 %94, 4177920
  %96 = ashr i32 %95, 14
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %8, align 8
  %98 = load i32, i32* %16, align 4
  %99 = and i32 %98, 29360128
  %100 = ashr i32 %99, 22
  %101 = sext i32 %100 to i64
  store i64 %101, i64* %9, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64 %102, i64* %103, align 16
  %104 = load i64, i64* %8, align 8
  %105 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  store i64 %104, i64* %105, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  store i64 %106, i64* %107, align 16
  %108 = load i64, i64* %6, align 8
  %109 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  store i64 %108, i64* %109, align 8
  %110 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %111 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %112 = load i64, i64* %111, align 16
  %113 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %110, i32 44548, i64 %112)
  store i32 %113, i32* %11, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %86
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %3, align 4
  br label %378

118:                                              ; preds = %86
  %119 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %120 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %119, i32 44549, i64 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %3, align 4
  br label %378

127:                                              ; preds = %118
  %128 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %129 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %130 = load i64, i64* %129, align 16
  %131 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %128, i32 44550, i64 %130)
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %3, align 4
  br label %378

136:                                              ; preds = %127
  %137 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %138 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %137, i32 44551, i64 %139)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %136
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %3, align 4
  br label %378

145:                                              ; preds = %136
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, 255
  %148 = sext i32 %147 to i64
  store i64 %148, i64* %6, align 8
  %149 = load i32, i32* %13, align 4
  %150 = and i32 %149, 65280
  %151 = ashr i32 %150, 8
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %7, align 8
  %153 = load i32, i32* %13, align 4
  %154 = and i32 %153, 16760832
  %155 = ashr i32 %154, 16
  %156 = sext i32 %155 to i64
  store i64 %156, i64* %8, align 8
  %157 = load i32, i32* %13, align 4
  %158 = and i32 %157, 50331648
  %159 = ashr i32 %158, 24
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %9, align 8
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64 %161, i64* %162, align 16
  %163 = load i64, i64* %8, align 8
  %164 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  store i64 %163, i64* %164, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  store i64 %165, i64* %166, align 16
  %167 = load i64, i64* %6, align 8
  %168 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  store i64 %167, i64* %168, align 8
  %169 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %170 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %171 = load i64, i64* %170, align 16
  %172 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %169, i32 44552, i64 %171)
  store i32 %172, i32* %11, align 4
  %173 = load i32, i32* %11, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %145
  %176 = load i32, i32* %11, align 4
  store i32 %176, i32* %3, align 4
  br label %378

177:                                              ; preds = %145
  %178 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %179 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %180 = load i64, i64* %179, align 8
  %181 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %178, i32 44553, i64 %180)
  store i32 %181, i32* %11, align 4
  %182 = load i32, i32* %11, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* %11, align 4
  store i32 %185, i32* %3, align 4
  br label %378

186:                                              ; preds = %177
  %187 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %188 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %189 = load i64, i64* %188, align 16
  %190 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %187, i32 44554, i64 %189)
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load i32, i32* %11, align 4
  store i32 %194, i32* %3, align 4
  br label %378

195:                                              ; preds = %186
  %196 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %197 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %196, i32 44555, i64 %198)
  store i32 %199, i32* %11, align 4
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %195
  %203 = load i32, i32* %11, align 4
  store i32 %203, i32* %3, align 4
  br label %378

204:                                              ; preds = %195
  %205 = load i32, i32* %14, align 4
  %206 = and i32 %205, 255
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %6, align 8
  %208 = load i32, i32* %14, align 4
  %209 = and i32 %208, 65280
  %210 = ashr i32 %209, 8
  %211 = sext i32 %210 to i64
  store i64 %211, i64* %7, align 8
  %212 = load i32, i32* %14, align 4
  %213 = and i32 %212, 16760832
  %214 = ashr i32 %213, 16
  %215 = sext i32 %214 to i64
  store i64 %215, i64* %8, align 8
  %216 = load i32, i32* %14, align 4
  %217 = and i32 %216, 50331648
  %218 = ashr i32 %217, 24
  %219 = sext i32 %218 to i64
  store i64 %219, i64* %9, align 8
  %220 = load i64, i64* %9, align 8
  %221 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64 %220, i64* %221, align 16
  %222 = load i64, i64* %8, align 8
  %223 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  store i64 %222, i64* %223, align 8
  %224 = load i64, i64* %7, align 8
  %225 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  store i64 %224, i64* %225, align 16
  %226 = load i64, i64* %6, align 8
  %227 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  store i64 %226, i64* %227, align 8
  %228 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %229 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %230 = load i64, i64* %229, align 16
  %231 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %228, i32 44556, i64 %230)
  store i32 %231, i32* %11, align 4
  %232 = load i32, i32* %11, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %204
  %235 = load i32, i32* %11, align 4
  store i32 %235, i32* %3, align 4
  br label %378

236:                                              ; preds = %204
  %237 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %238 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %239 = load i64, i64* %238, align 8
  %240 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %237, i32 44557, i64 %239)
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %236
  %244 = load i32, i32* %11, align 4
  store i32 %244, i32* %3, align 4
  br label %378

245:                                              ; preds = %236
  %246 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %247 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %248 = load i64, i64* %247, align 16
  %249 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %246, i32 44558, i64 %248)
  store i32 %249, i32* %11, align 4
  %250 = load i32, i32* %11, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %254

252:                                              ; preds = %245
  %253 = load i32, i32* %11, align 4
  store i32 %253, i32* %3, align 4
  br label %378

254:                                              ; preds = %245
  %255 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %256 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %257 = load i64, i64* %256, align 8
  %258 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %255, i32 44559, i64 %257)
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = load i32, i32* %11, align 4
  store i32 %262, i32* %3, align 4
  br label %378

263:                                              ; preds = %254
  %264 = load i32, i32* %15, align 4
  %265 = and i32 %264, 255
  %266 = sext i32 %265 to i64
  store i64 %266, i64* %6, align 8
  %267 = load i32, i32* %15, align 4
  %268 = and i32 %267, 65280
  %269 = ashr i32 %268, 8
  %270 = sext i32 %269 to i64
  store i64 %270, i64* %7, align 8
  %271 = load i32, i32* %15, align 4
  %272 = and i32 %271, 16760832
  %273 = ashr i32 %272, 16
  %274 = sext i32 %273 to i64
  store i64 %274, i64* %8, align 8
  %275 = load i32, i32* %15, align 4
  %276 = and i32 %275, 50331648
  %277 = ashr i32 %276, 24
  %278 = sext i32 %277 to i64
  store i64 %278, i64* %9, align 8
  %279 = load i64, i64* %9, align 8
  %280 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64 %279, i64* %280, align 16
  %281 = load i64, i64* %8, align 8
  %282 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  store i64 %281, i64* %282, align 8
  %283 = load i64, i64* %7, align 8
  %284 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  store i64 %283, i64* %284, align 16
  %285 = load i64, i64* %6, align 8
  %286 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  store i64 %285, i64* %286, align 8
  %287 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %288 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %289 = load i64, i64* %288, align 16
  %290 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %287, i32 44560, i64 %289)
  store i32 %290, i32* %11, align 4
  %291 = load i32, i32* %11, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %295

293:                                              ; preds = %263
  %294 = load i32, i32* %11, align 4
  store i32 %294, i32* %3, align 4
  br label %378

295:                                              ; preds = %263
  %296 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %297 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %298 = load i64, i64* %297, align 8
  %299 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %296, i32 44561, i64 %298)
  store i32 %299, i32* %11, align 4
  %300 = load i32, i32* %11, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %304

302:                                              ; preds = %295
  %303 = load i32, i32* %11, align 4
  store i32 %303, i32* %3, align 4
  br label %378

304:                                              ; preds = %295
  %305 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %306 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %307 = load i64, i64* %306, align 16
  %308 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %305, i32 44562, i64 %307)
  store i32 %308, i32* %11, align 4
  %309 = load i32, i32* %11, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %304
  %312 = load i32, i32* %11, align 4
  store i32 %312, i32* %3, align 4
  br label %378

313:                                              ; preds = %304
  %314 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %315 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %314, i32 44563, i64 %316)
  store i32 %317, i32* %11, align 4
  %318 = load i32, i32* %11, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %313
  %321 = load i32, i32* %11, align 4
  store i32 %321, i32* %3, align 4
  br label %378

322:                                              ; preds = %313
  %323 = load i32, i32* %17, align 4
  %324 = and i32 %323, 63
  %325 = sext i32 %324 to i64
  store i64 %325, i64* %6, align 8
  %326 = load i32, i32* %17, align 4
  %327 = and i32 %326, 16320
  %328 = ashr i32 %327, 6
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %7, align 8
  %330 = load i32, i32* %17, align 4
  %331 = and i32 %330, 4177920
  %332 = ashr i32 %331, 14
  %333 = sext i32 %332 to i64
  store i64 %333, i64* %8, align 8
  %334 = load i32, i32* %17, align 4
  %335 = and i32 %334, 29360128
  %336 = ashr i32 %335, 22
  %337 = sext i32 %336 to i64
  store i64 %337, i64* %9, align 8
  %338 = load i64, i64* %9, align 8
  %339 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  store i64 %338, i64* %339, align 16
  %340 = load i64, i64* %8, align 8
  %341 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  store i64 %340, i64* %341, align 8
  %342 = load i64, i64* %7, align 8
  %343 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  store i64 %342, i64* %343, align 16
  %344 = load i64, i64* %6, align 8
  %345 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  store i64 %344, i64* %345, align 8
  %346 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %347 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 0
  %348 = load i64, i64* %347, align 16
  %349 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %346, i32 44564, i64 %348)
  store i32 %349, i32* %11, align 4
  %350 = load i32, i32* %11, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %354

352:                                              ; preds = %322
  %353 = load i32, i32* %11, align 4
  store i32 %353, i32* %3, align 4
  br label %378

354:                                              ; preds = %322
  %355 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %356 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 1
  %357 = load i64, i64* %356, align 8
  %358 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %355, i32 44565, i64 %357)
  store i32 %358, i32* %11, align 4
  %359 = load i32, i32* %11, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %363

361:                                              ; preds = %354
  %362 = load i32, i32* %11, align 4
  store i32 %362, i32* %3, align 4
  br label %378

363:                                              ; preds = %354
  %364 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %365 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 2
  %366 = load i64, i64* %365, align 16
  %367 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %364, i32 44566, i64 %366)
  store i32 %367, i32* %11, align 4
  %368 = load i32, i32* %11, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %363
  %371 = load i32, i32* %11, align 4
  store i32 %371, i32* %3, align 4
  br label %378

372:                                              ; preds = %363
  %373 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %374 = getelementptr inbounds [4 x i64], [4 x i64]* %10, i64 0, i64 3
  %375 = load i64, i64* %374, align 8
  %376 = call i32 @af9005_write_ofdm_register(%struct.dvb_usb_device* %373, i32 44567, i64 %375)
  store i32 %376, i32* %11, align 4
  %377 = load i32, i32* %11, align 4
  store i32 %377, i32* %3, align 4
  br label %378

378:                                              ; preds = %372, %370, %361, %352, %320, %311, %302, %293, %261, %252, %243, %234, %202, %193, %184, %175, %143, %134, %125, %116, %84, %75, %66, %57, %22
  %379 = load i32, i32* %3, align 4
  ret i32 %379
}

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @af9005_write_ofdm_register(%struct.dvb_usb_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
