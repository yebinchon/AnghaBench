; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_avivo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atombios_encoders.c_radeon_atom_encoder_dpms_avivo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_encoder = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@COMMAND = common dso_local global i32 0, align 4
@TMDSAOutputControl = common dso_local global i32 0, align 4
@DVOOutputControl = common dso_local global i32 0, align 4
@LCD1OutputControl = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD_SUPPORT = common dso_local global i32 0, align 4
@LVTMAOutputControl = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV_SUPPORT = common dso_local global i32 0, align 4
@TV1OutputControl = common dso_local global i32 0, align 4
@ATOM_DEVICE_CV_SUPPORT = common dso_local global i32 0, align 4
@CV1OutputControl = common dso_local global i32 0, align 4
@DAC1OutputControl = common dso_local global i32 0, align 4
@DAC2OutputControl = common dso_local global i32 0, align 4
@ATOM_ENABLE = common dso_local global i32 0, align 4
@RADEON_BIOS_3_SCRATCH = common dso_local global i32 0, align 4
@ATOM_S3_DFP2I_ACTIVE = common dso_local global i32 0, align 4
@ATOM_LCD_BLON = common dso_local global i32 0, align 4
@ATOM_DISABLE = common dso_local global i32 0, align 4
@ATOM_LCD_BLOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @radeon_atom_encoder_dpms_avivo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atom_encoder_dpms_avivo(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_encoder*, align 8
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %5, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %6, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %17)
  store %struct.radeon_encoder* %18, %struct.radeon_encoder** %7, align 8
  store i32 0, i32* %9, align 4
  %19 = call i32 @memset(%struct.TYPE_5__* %8, i32 0, i32 4)
  %20 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %107 [
    i32 128, label %23
    i32 131, label %23
    i32 135, label %27
    i32 136, label %27
    i32 132, label %27
    i32 130, label %31
    i32 129, label %35
    i32 138, label %51
    i32 134, label %51
    i32 137, label %79
    i32 133, label %79
  ]

23:                                               ; preds = %2, %2
  %24 = load i32, i32* @COMMAND, align 4
  %25 = load i32, i32* @TMDSAOutputControl, align 4
  %26 = call i32 @GetIndexIntoMasterTable(i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  br label %108

27:                                               ; preds = %2, %2, %2
  %28 = load i32, i32* @COMMAND, align 4
  %29 = load i32, i32* @DVOOutputControl, align 4
  %30 = call i32 @GetIndexIntoMasterTable(i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  br label %108

31:                                               ; preds = %2
  %32 = load i32, i32* @COMMAND, align 4
  %33 = load i32, i32* @LCD1OutputControl, align 4
  %34 = call i32 @GetIndexIntoMasterTable(i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %108

35:                                               ; preds = %2
  %36 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %37 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @COMMAND, align 4
  %44 = load i32, i32* @LCD1OutputControl, align 4
  %45 = call i32 @GetIndexIntoMasterTable(i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  br label %50

46:                                               ; preds = %35
  %47 = load i32, i32* @COMMAND, align 4
  %48 = load i32, i32* @LVTMAOutputControl, align 4
  %49 = call i32 @GetIndexIntoMasterTable(i32 %47, i32 %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %46, %42
  br label %108

51:                                               ; preds = %2, %2
  %52 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %53 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @COMMAND, align 4
  %60 = load i32, i32* @TV1OutputControl, align 4
  %61 = call i32 @GetIndexIntoMasterTable(i32 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %78

62:                                               ; preds = %51
  %63 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %64 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load i32, i32* @COMMAND, align 4
  %71 = load i32, i32* @CV1OutputControl, align 4
  %72 = call i32 @GetIndexIntoMasterTable(i32 %70, i32 %71)
  store i32 %72, i32* %9, align 4
  br label %77

73:                                               ; preds = %62
  %74 = load i32, i32* @COMMAND, align 4
  %75 = load i32, i32* @DAC1OutputControl, align 4
  %76 = call i32 @GetIndexIntoMasterTable(i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %58
  br label %108

79:                                               ; preds = %2, %2
  %80 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %81 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ATOM_DEVICE_TV_SUPPORT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load i32, i32* @COMMAND, align 4
  %88 = load i32, i32* @TV1OutputControl, align 4
  %89 = call i32 @GetIndexIntoMasterTable(i32 %87, i32 %88)
  store i32 %89, i32* %9, align 4
  br label %106

90:                                               ; preds = %79
  %91 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %92 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ATOM_DEVICE_CV_SUPPORT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %90
  %98 = load i32, i32* @COMMAND, align 4
  %99 = load i32, i32* @CV1OutputControl, align 4
  %100 = call i32 @GetIndexIntoMasterTable(i32 %98, i32 %99)
  store i32 %100, i32* %9, align 4
  br label %105

101:                                              ; preds = %90
  %102 = load i32, i32* @COMMAND, align 4
  %103 = load i32, i32* @DAC2OutputControl, align 4
  %104 = call i32 @GetIndexIntoMasterTable(i32 %102, i32 %103)
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %101, %97
  br label %106

106:                                              ; preds = %105, %86
  br label %108

107:                                              ; preds = %2
  br label %189

108:                                              ; preds = %106, %78, %50, %31, %27, %23
  %109 = load i32, i32* %4, align 4
  switch i32 %109, label %189 [
    i32 141, label %110
    i32 140, label %162
    i32 139, label %162
    i32 142, label %162
  ]

110:                                              ; preds = %108
  %111 = load i32, i32* @ATOM_ENABLE, align 4
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %111, i32* %112, align 4
  %113 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %114 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 136
  br i1 %116, label %117, label %136

117:                                              ; preds = %110
  %118 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %119 = call i32 @RREG32(i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @ATOM_S3_DFP2I_ACTIVE, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = call i32 @WREG32(i32 %120, i32 %124)
  %126 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %127 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %9, align 4
  %131 = bitcast %struct.TYPE_5__* %8 to i32*
  %132 = call i32 @atom_execute_table(i32 %129, i32 %130, i32* %131)
  %133 = load i32, i32* @RADEON_BIOS_3_SCRATCH, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @WREG32(i32 %133, i32 %134)
  br label %144

136:                                              ; preds = %110
  %137 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %138 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %9, align 4
  %142 = bitcast %struct.TYPE_5__* %8 to i32*
  %143 = call i32 @atom_execute_table(i32 %140, i32 %141, i32* %142)
  br label %144

144:                                              ; preds = %136, %117
  %145 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %146 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %144
  %152 = load i32, i32* @ATOM_LCD_BLON, align 4
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %152, i32* %153, align 4
  %154 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %155 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %9, align 4
  %159 = bitcast %struct.TYPE_5__* %8 to i32*
  %160 = call i32 @atom_execute_table(i32 %157, i32 %158, i32* %159)
  br label %161

161:                                              ; preds = %151, %144
  br label %189

162:                                              ; preds = %108, %108, %108
  %163 = load i32, i32* @ATOM_DISABLE, align 4
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %163, i32* %164, align 4
  %165 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %166 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %9, align 4
  %170 = bitcast %struct.TYPE_5__* %8 to i32*
  %171 = call i32 @atom_execute_table(i32 %168, i32 %169, i32* %170)
  %172 = load %struct.radeon_encoder*, %struct.radeon_encoder** %7, align 8
  %173 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ATOM_DEVICE_LCD_SUPPORT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %162
  %179 = load i32, i32* @ATOM_LCD_BLOFF, align 4
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 %179, i32* %180, align 4
  %181 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %182 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %9, align 4
  %186 = bitcast %struct.TYPE_5__* %8 to i32*
  %187 = call i32 @atom_execute_table(i32 %184, i32 %185, i32* %186)
  br label %188

188:                                              ; preds = %178, %162
  br label %189

189:                                              ; preds = %107, %108, %188, %161
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @atom_execute_table(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
