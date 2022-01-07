; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_afmt_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_display.c_radeon_afmt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32, i32 }

@RADEON_MAX_AFMT_BLOCKS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EVERGREEN_CRTC0_REGISTER_OFFSET = common dso_local global i32 0, align 4
@EVERGREEN_CRTC1_REGISTER_OFFSET = common dso_local global i32 0, align 4
@EVERGREEN_CRTC2_REGISTER_OFFSET = common dso_local global i32 0, align 4
@EVERGREEN_CRTC3_REGISTER_OFFSET = common dso_local global i32 0, align 4
@EVERGREEN_CRTC4_REGISTER_OFFSET = common dso_local global i32 0, align 4
@EVERGREEN_CRTC5_REGISTER_OFFSET = common dso_local global i32 0, align 4
@DCE3_HDMI_OFFSET0 = common dso_local global i32 0, align 4
@DCE3_HDMI_OFFSET1 = common dso_local global i32 0, align 4
@DCE2_HDMI_OFFSET0 = common dso_local global i32 0, align 4
@CHIP_R600 = common dso_local global i64 0, align 8
@DCE2_HDMI_OFFSET1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @radeon_afmt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_afmt_init(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @RADEON_MAX_AFMT_BLOCKS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %10 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %12, i64 %14
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %15, align 8
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = call i64 @ASIC_IS_DCE6(%struct.radeon_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %374

24:                                               ; preds = %19
  %25 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %26 = call i64 @ASIC_IS_DCE4(%struct.radeon_device* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %226

28:                                               ; preds = %24
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 4, i32 %29)
  %31 = bitcast i8* %30 to %struct.TYPE_3__*
  %32 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %35, i64 0
  store %struct.TYPE_3__* %31, %struct.TYPE_3__** %36, align 8
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %40, i64 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = icmp ne %struct.TYPE_3__* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %28
  %45 = load i32, i32* @EVERGREEN_CRTC0_REGISTER_OFFSET, align 4
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %49, i64 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %45, i32* %52, align 4
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %44, %28
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kzalloc(i32 4, i32 %61)
  %63 = bitcast i8* %62 to %struct.TYPE_3__*
  %64 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %65 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %67, i64 1
  store %struct.TYPE_3__* %63, %struct.TYPE_3__** %68, align 8
  %69 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %72, i64 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = icmp ne %struct.TYPE_3__* %74, null
  br i1 %75, label %76, label %92

76:                                               ; preds = %60
  %77 = load i32, i32* @EVERGREEN_CRTC1_REGISTER_OFFSET, align 4
  %78 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %81, i64 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  store i32 %77, i32* %84, align 4
  %85 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %88, i64 1
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 1, i32* %91, align 4
  br label %92

92:                                               ; preds = %76, %60
  %93 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %94 = call i32 @ASIC_IS_DCE41(%struct.radeon_device* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %225, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @GFP_KERNEL, align 4
  %98 = call i8* @kzalloc(i32 4, i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_3__*
  %100 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %101 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %103, i64 2
  store %struct.TYPE_3__* %99, %struct.TYPE_3__** %104, align 8
  %105 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %106 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %108, i64 2
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = icmp ne %struct.TYPE_3__* %110, null
  br i1 %111, label %112, label %128

112:                                              ; preds = %96
  %113 = load i32, i32* @EVERGREEN_CRTC2_REGISTER_OFFSET, align 4
  %114 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %115 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %117, i64 2
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i32 %113, i32* %120, align 4
  %121 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %122 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %124, i64 2
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  store i32 2, i32* %127, align 4
  br label %128

128:                                              ; preds = %112, %96
  %129 = load i32, i32* @GFP_KERNEL, align 4
  %130 = call i8* @kzalloc(i32 4, i32 %129)
  %131 = bitcast i8* %130 to %struct.TYPE_3__*
  %132 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %133 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %135, i64 3
  store %struct.TYPE_3__* %131, %struct.TYPE_3__** %136, align 8
  %137 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %140, i64 3
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = icmp ne %struct.TYPE_3__* %142, null
  br i1 %143, label %144, label %160

144:                                              ; preds = %128
  %145 = load i32, i32* @EVERGREEN_CRTC3_REGISTER_OFFSET, align 4
  %146 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %147 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %149, i64 3
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  store i32 %145, i32* %152, align 4
  %153 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %154 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %156, i64 3
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i32 3, i32* %159, align 4
  br label %160

160:                                              ; preds = %144, %128
  %161 = load i32, i32* @GFP_KERNEL, align 4
  %162 = call i8* @kzalloc(i32 4, i32 %161)
  %163 = bitcast i8* %162 to %struct.TYPE_3__*
  %164 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %165 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %167, i64 4
  store %struct.TYPE_3__* %163, %struct.TYPE_3__** %168, align 8
  %169 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %170 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %172, i64 4
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = icmp ne %struct.TYPE_3__* %174, null
  br i1 %175, label %176, label %192

176:                                              ; preds = %160
  %177 = load i32, i32* @EVERGREEN_CRTC4_REGISTER_OFFSET, align 4
  %178 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %179 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %181, i64 4
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i32 %177, i32* %184, align 4
  %185 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %188, i64 4
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  store i32 4, i32* %191, align 4
  br label %192

192:                                              ; preds = %176, %160
  %193 = load i32, i32* @GFP_KERNEL, align 4
  %194 = call i8* @kzalloc(i32 4, i32 %193)
  %195 = bitcast i8* %194 to %struct.TYPE_3__*
  %196 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %197 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %199, i64 5
  store %struct.TYPE_3__* %195, %struct.TYPE_3__** %200, align 8
  %201 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %202 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %204, i64 5
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %205, align 8
  %207 = icmp ne %struct.TYPE_3__* %206, null
  br i1 %207, label %208, label %224

208:                                              ; preds = %192
  %209 = load i32, i32* @EVERGREEN_CRTC5_REGISTER_OFFSET, align 4
  %210 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %211 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %213, i64 5
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 1
  store i32 %209, i32* %216, align 4
  %217 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %218 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %220, i64 5
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  store i32 5, i32* %223, align 4
  br label %224

224:                                              ; preds = %208, %192
  br label %225

225:                                              ; preds = %224, %92
  br label %373

226:                                              ; preds = %24
  %227 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %228 = call i64 @ASIC_IS_DCE3(%struct.radeon_device* %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %295

230:                                              ; preds = %226
  %231 = load i32, i32* @GFP_KERNEL, align 4
  %232 = call i8* @kzalloc(i32 4, i32 %231)
  %233 = bitcast i8* %232 to %struct.TYPE_3__*
  %234 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %235 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %237, i64 0
  store %struct.TYPE_3__* %233, %struct.TYPE_3__** %238, align 8
  %239 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %240 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %242, i64 0
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %243, align 8
  %245 = icmp ne %struct.TYPE_3__* %244, null
  br i1 %245, label %246, label %262

246:                                              ; preds = %230
  %247 = load i32, i32* @DCE3_HDMI_OFFSET0, align 4
  %248 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %249 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %251, i64 0
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i32 0, i32 1
  store i32 %247, i32* %254, align 4
  %255 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %256 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %258, i64 0
  %260 = load %struct.TYPE_3__*, %struct.TYPE_3__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %260, i32 0, i32 0
  store i32 0, i32* %261, align 4
  br label %262

262:                                              ; preds = %246, %230
  %263 = load i32, i32* @GFP_KERNEL, align 4
  %264 = call i8* @kzalloc(i32 4, i32 %263)
  %265 = bitcast i8* %264 to %struct.TYPE_3__*
  %266 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %267 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %269, i64 1
  store %struct.TYPE_3__* %265, %struct.TYPE_3__** %270, align 8
  %271 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %272 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %274, i64 1
  %276 = load %struct.TYPE_3__*, %struct.TYPE_3__** %275, align 8
  %277 = icmp ne %struct.TYPE_3__* %276, null
  br i1 %277, label %278, label %294

278:                                              ; preds = %262
  %279 = load i32, i32* @DCE3_HDMI_OFFSET1, align 4
  %280 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %281 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %283, i64 1
  %285 = load %struct.TYPE_3__*, %struct.TYPE_3__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 1
  store i32 %279, i32* %286, align 4
  %287 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %288 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %290, i64 1
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  store i32 1, i32* %293, align 4
  br label %294

294:                                              ; preds = %278, %262
  br label %372

295:                                              ; preds = %226
  %296 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %297 = call i64 @ASIC_IS_DCE2(%struct.radeon_device* %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %371

299:                                              ; preds = %295
  %300 = load i32, i32* @GFP_KERNEL, align 4
  %301 = call i8* @kzalloc(i32 4, i32 %300)
  %302 = bitcast i8* %301 to %struct.TYPE_3__*
  %303 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %304 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %303, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %306, i64 0
  store %struct.TYPE_3__* %302, %struct.TYPE_3__** %307, align 8
  %308 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %309 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %311, i64 0
  %313 = load %struct.TYPE_3__*, %struct.TYPE_3__** %312, align 8
  %314 = icmp ne %struct.TYPE_3__* %313, null
  br i1 %314, label %315, label %331

315:                                              ; preds = %299
  %316 = load i32, i32* @DCE2_HDMI_OFFSET0, align 4
  %317 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %318 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %320, i64 0
  %322 = load %struct.TYPE_3__*, %struct.TYPE_3__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 1
  store i32 %316, i32* %323, align 4
  %324 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %325 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %327, i64 0
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 0
  store i32 0, i32* %330, align 4
  br label %331

331:                                              ; preds = %315, %299
  %332 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %333 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %332, i32 0, i32 0
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @CHIP_R600, align 8
  %336 = icmp sge i64 %334, %335
  br i1 %336, label %337, label %370

337:                                              ; preds = %331
  %338 = load i32, i32* @GFP_KERNEL, align 4
  %339 = call i8* @kzalloc(i32 4, i32 %338)
  %340 = bitcast i8* %339 to %struct.TYPE_3__*
  %341 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %342 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %341, i32 0, i32 1
  %343 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %344, i64 1
  store %struct.TYPE_3__* %340, %struct.TYPE_3__** %345, align 8
  %346 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %347 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %349, i64 1
  %351 = load %struct.TYPE_3__*, %struct.TYPE_3__** %350, align 8
  %352 = icmp ne %struct.TYPE_3__* %351, null
  br i1 %352, label %353, label %369

353:                                              ; preds = %337
  %354 = load i32, i32* @DCE2_HDMI_OFFSET1, align 4
  %355 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %356 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %358, i64 1
  %360 = load %struct.TYPE_3__*, %struct.TYPE_3__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 1
  store i32 %354, i32* %361, align 4
  %362 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %363 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %365, i64 1
  %367 = load %struct.TYPE_3__*, %struct.TYPE_3__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 0
  store i32 1, i32* %368, align 4
  br label %369

369:                                              ; preds = %353, %337
  br label %370

370:                                              ; preds = %369, %331
  br label %371

371:                                              ; preds = %370, %295
  br label %372

372:                                              ; preds = %371, %294
  br label %373

373:                                              ; preds = %372, %225
  br label %374

374:                                              ; preds = %373, %23
  ret void
}

declare dso_local i64 @ASIC_IS_DCE6(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE4(%struct.radeon_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ASIC_IS_DCE41(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE3(%struct.radeon_device*) #1

declare dso_local i64 @ASIC_IS_DCE2(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
