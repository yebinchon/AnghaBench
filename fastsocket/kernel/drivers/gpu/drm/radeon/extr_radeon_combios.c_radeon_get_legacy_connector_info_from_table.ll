; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_get_legacy_connector_info_from_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_get_legacy_connector_info_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.radeon_i2c_bus_rec = type { i32 }
%struct.radeon_hpd = type { i8* }

@radeon_connector_table = common dso_local global i32 0, align 4
@CT_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Connector Table: %d (generic)\0A\00", align 1
@RADEON_SINGLE_CRTC = common dso_local global i32 0, align 4
@DDC_VGA = common dso_local global i32 0, align 4
@RADEON_HPD_NONE = common dso_local global i8* null, align 8
@ATOM_DEVICE_CRT1_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_VGA = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_VGA = common dso_local global i32 0, align 4
@RADEON_IS_MOBILITY = common dso_local global i32 0, align 4
@DDC_NONE_DETECTED = common dso_local global i32 0, align 4
@ATOM_DEVICE_LCD1_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_LVDS = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_LVDS = common dso_local global i32 0, align 4
@DDC_DVI = common dso_local global i32 0, align 4
@RADEON_HPD_1 = common dso_local global i8* null, align 8
@ATOM_DEVICE_DFP1_SUPPORT = common dso_local global i32 0, align 4
@ATOM_DEVICE_CRT2_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVII = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I = common dso_local global i32 0, align 4
@CHIP_R100 = common dso_local global i32 0, align 4
@CHIP_R200 = common dso_local global i32 0, align 4
@ATOM_DEVICE_TV1_SUPPORT = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_SVIDEO = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_SVIDEO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Connector Table: %d (ibook)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Connector Table: %d (powerbook external tmds)\0A\00", align 1
@RADEON_HPD_2 = common dso_local global i8* null, align 8
@ATOM_DEVICE_DFP2_SUPPORT = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Connector Table: %d (powerbook internal tmds)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Connector Table: %d (powerbook vga)\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Connector Table: %d (mini external tmds)\0A\00", align 1
@DDC_CRT2 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"Connector Table: %d (mini internal tmds)\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Connector Table: %d (imac g5 isight)\0A\00", align 1
@DDC_MONID = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DVID = common dso_local global i32 0, align 4
@CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Connector Table: %d (emac)\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Connector Table: %d (rn50-power)\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Connector Table: %d (mac x800)\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Connector Table: %d (mac g5 9600)\0A\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"Connector Table: %d (SAM440ep embedded board)\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"Connector Table: %d (mac g4 silver)\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Connector table: %d (invalid)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_get_legacy_connector_info_from_table(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_i2c_bus_rec, align 4
  %6 = alloca %struct.radeon_hpd, align 8
  %7 = alloca %struct.radeon_i2c_bus_rec, align 4
  %8 = alloca %struct.radeon_i2c_bus_rec, align 4
  %9 = alloca %struct.radeon_i2c_bus_rec, align 4
  %10 = alloca %struct.radeon_i2c_bus_rec, align 4
  %11 = alloca %struct.radeon_i2c_bus_rec, align 4
  %12 = alloca %struct.radeon_i2c_bus_rec, align 4
  %13 = alloca %struct.radeon_i2c_bus_rec, align 4
  %14 = alloca %struct.radeon_i2c_bus_rec, align 4
  %15 = alloca %struct.radeon_i2c_bus_rec, align 4
  %16 = alloca %struct.radeon_i2c_bus_rec, align 4
  %17 = alloca %struct.radeon_i2c_bus_rec, align 4
  %18 = alloca %struct.radeon_i2c_bus_rec, align 4
  %19 = alloca %struct.radeon_i2c_bus_rec, align 4
  %20 = alloca %struct.radeon_i2c_bus_rec, align 4
  %21 = alloca %struct.radeon_i2c_bus_rec, align 4
  %22 = alloca %struct.radeon_i2c_bus_rec, align 4
  %23 = alloca %struct.radeon_i2c_bus_rec, align 4
  %24 = alloca %struct.radeon_i2c_bus_rec, align 4
  %25 = alloca %struct.radeon_i2c_bus_rec, align 4
  %26 = alloca %struct.radeon_i2c_bus_rec, align 4
  %27 = alloca %struct.radeon_i2c_bus_rec, align 4
  %28 = alloca %struct.radeon_i2c_bus_rec, align 4
  %29 = alloca %struct.radeon_i2c_bus_rec, align 4
  %30 = alloca %struct.radeon_i2c_bus_rec, align 4
  %31 = alloca %struct.radeon_i2c_bus_rec, align 4
  %32 = alloca %struct.radeon_i2c_bus_rec, align 4
  %33 = alloca %struct.radeon_i2c_bus_rec, align 4
  %34 = alloca %struct.radeon_i2c_bus_rec, align 4
  %35 = alloca %struct.radeon_i2c_bus_rec, align 4
  %36 = alloca %struct.radeon_i2c_bus_rec, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %37 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %38 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %37, i32 0, i32 0
  %39 = load %struct.radeon_device*, %struct.radeon_device** %38, align 8
  store %struct.radeon_device* %39, %struct.radeon_device** %4, align 8
  %40 = load i32, i32* @radeon_connector_table, align 4
  %41 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %42 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CT_NONE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %1
  %51 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  store i32 140, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %1
  %55 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %56 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %1000 [
    i32 140, label %59
    i32 139, label %213
    i32 132, label %271
    i32 131, label %337
    i32 130, label %403
    i32 134, label %461
    i32 133, label %508
    i32 138, label %555
    i32 141, label %613
    i32 129, label %671
    i32 135, label %715
    i32 136, label %775
    i32 128, label %849
    i32 137, label %934
  ]

59:                                               ; preds = %54
  %60 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %66 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @RADEON_SINGLE_CRTC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %59
  %72 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %73 = load i32, i32* @DDC_VGA, align 4
  %74 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %72, i32 %73, i32 0, i32 0)
  %75 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %7, i32 0, i32 0
  store i32 %74, i32* %75, align 4
  %76 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %77 = bitcast %struct.radeon_i2c_bus_rec* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  %78 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %79 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %78, i8** %79, align 8
  %80 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %81 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %82 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %83 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %81, i32 %82, i32 1)
  %84 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %85 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %80, i32 %83, i32 %84)
  %86 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %87 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %88 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %89 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %90 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %86, i32 0, i32 %87, i32 %88, %struct.radeon_i2c_bus_rec* %5, i32 %89, %struct.radeon_hpd* %6)
  br label %185

91:                                               ; preds = %59
  %92 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %93 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @RADEON_IS_MOBILITY, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %91
  %99 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %100 = load i32, i32* @DDC_NONE_DETECTED, align 4
  %101 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %99, i32 %100, i32 0, i32 0)
  %102 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %8, i32 0, i32 0
  store i32 %101, i32* %102, align 4
  %103 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %104 = bitcast %struct.radeon_i2c_bus_rec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 %104, i64 4, i1 false)
  %105 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %106 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %105, i8** %106, align 8
  %107 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %108 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %109 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %110 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %108, i32 %109, i32 0)
  %111 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %112 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %107, i32 %110, i32 %111)
  %113 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %114 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %115 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %116 = load i32, i32* @CONNECTOR_OBJECT_ID_LVDS, align 4
  %117 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %113, i32 0, i32 %114, i32 %115, %struct.radeon_i2c_bus_rec* %5, i32 %116, %struct.radeon_hpd* %6)
  %118 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %119 = load i32, i32* @DDC_VGA, align 4
  %120 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %118, i32 %119, i32 0, i32 0)
  %121 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %9, i32 0, i32 0
  store i32 %120, i32* %121, align 4
  %122 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %123 = bitcast %struct.radeon_i2c_bus_rec* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 4, i1 false)
  %124 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %125 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %124, i8** %125, align 8
  %126 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %127 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %128 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %129 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %127, i32 %128, i32 1)
  %130 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %131 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %126, i32 %129, i32 %130)
  %132 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %133 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %134 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %135 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %136 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %132, i32 1, i32 %133, i32 %134, %struct.radeon_i2c_bus_rec* %5, i32 %135, %struct.radeon_hpd* %6)
  br label %184

137:                                              ; preds = %91
  %138 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %139 = load i32, i32* @DDC_DVI, align 4
  %140 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %138, i32 %139, i32 0, i32 0)
  %141 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %10, i32 0, i32 0
  store i32 %140, i32* %141, align 4
  %142 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %143 = bitcast %struct.radeon_i2c_bus_rec* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 4, i1 false)
  %144 = load i8*, i8** @RADEON_HPD_1, align 8
  %145 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %144, i8** %145, align 8
  %146 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %147 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %148 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %149 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %147, i32 %148, i32 0)
  %150 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %151 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %146, i32 %149, i32 %150)
  %152 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %153 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %154 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %155 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %153, i32 %154, i32 2)
  %156 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %157 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %152, i32 %155, i32 %156)
  %158 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %159 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %160 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %163 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %164 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %158, i32 0, i32 %161, i32 %162, %struct.radeon_i2c_bus_rec* %5, i32 %163, %struct.radeon_hpd* %6)
  %165 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %166 = load i32, i32* @DDC_VGA, align 4
  %167 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %165, i32 %166, i32 0, i32 0)
  %168 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %11, i32 0, i32 0
  store i32 %167, i32* %168, align 4
  %169 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %170 = bitcast %struct.radeon_i2c_bus_rec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 4 %170, i64 4, i1 false)
  %171 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %172 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %171, i8** %172, align 8
  %173 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %174 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %175 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %176 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %174, i32 %175, i32 1)
  %177 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %178 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %173, i32 %176, i32 %177)
  %179 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %180 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %181 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %182 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %183 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %179, i32 1, i32 %180, i32 %181, %struct.radeon_i2c_bus_rec* %5, i32 %182, %struct.radeon_hpd* %6)
  br label %184

184:                                              ; preds = %137, %98
  br label %185

185:                                              ; preds = %184, %71
  %186 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %187 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @CHIP_R100, align 4
  %190 = icmp ne i32 %188, %189
  br i1 %190, label %191, label %212

191:                                              ; preds = %185
  %192 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %193 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @CHIP_R200, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %212

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %198, align 4
  %199 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %200 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %199, i8** %200, align 8
  %201 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %202 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %203 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %204 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %202, i32 %203, i32 2)
  %205 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %206 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %201, i32 %204, i32 %205)
  %207 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %208 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %209 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %210 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %211 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %207, i32 2, i32 %208, i32 %209, %struct.radeon_i2c_bus_rec* %5, i32 %210, %struct.radeon_hpd* %6)
  br label %212

212:                                              ; preds = %197, %191, %185
  br label %1006

213:                                              ; preds = %54
  %214 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @DRM_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %217)
  %219 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %220 = load i32, i32* @DDC_DVI, align 4
  %221 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %219, i32 %220, i32 0, i32 0)
  %222 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %12, i32 0, i32 0
  store i32 %221, i32* %222, align 4
  %223 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %224 = bitcast %struct.radeon_i2c_bus_rec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %223, i8* align 4 %224, i64 4, i1 false)
  %225 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %226 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %225, i8** %226, align 8
  %227 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %228 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %229 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %230 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %228, i32 %229, i32 0)
  %231 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %232 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %227, i32 %230, i32 %231)
  %233 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %234 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %235 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %236 = load i32, i32* @CONNECTOR_OBJECT_ID_LVDS, align 4
  %237 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %233, i32 0, i32 %234, i32 %235, %struct.radeon_i2c_bus_rec* %5, i32 %236, %struct.radeon_hpd* %6)
  %238 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %239 = load i32, i32* @DDC_VGA, align 4
  %240 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %238, i32 %239, i32 0, i32 0)
  %241 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %13, i32 0, i32 0
  store i32 %240, i32* %241, align 4
  %242 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %243 = bitcast %struct.radeon_i2c_bus_rec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %242, i8* align 4 %243, i64 4, i1 false)
  %244 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %245 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %244, i8** %245, align 8
  %246 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %247 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %248 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %249 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %247, i32 %248, i32 2)
  %250 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %251 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %246, i32 %249, i32 %250)
  %252 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %253 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %254 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %255 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %256 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %252, i32 1, i32 %253, i32 %254, %struct.radeon_i2c_bus_rec* %5, i32 %255, %struct.radeon_hpd* %6)
  %257 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %257, align 4
  %258 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %259 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %258, i8** %259, align 8
  %260 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %261 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %262 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %263 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %261, i32 %262, i32 2)
  %264 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %265 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %260, i32 %263, i32 %264)
  %266 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %267 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %268 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %269 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %270 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %266, i32 2, i32 %267, i32 %268, %struct.radeon_i2c_bus_rec* %5, i32 %269, %struct.radeon_hpd* %6)
  br label %1006

271:                                              ; preds = %54
  %272 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %273 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %275)
  %277 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %278 = load i32, i32* @DDC_DVI, align 4
  %279 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %277, i32 %278, i32 0, i32 0)
  %280 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %14, i32 0, i32 0
  store i32 %279, i32* %280, align 4
  %281 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %282 = bitcast %struct.radeon_i2c_bus_rec* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %281, i8* align 4 %282, i64 4, i1 false)
  %283 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %284 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %283, i8** %284, align 8
  %285 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %286 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %287 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %288 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %286, i32 %287, i32 0)
  %289 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %290 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %285, i32 %288, i32 %289)
  %291 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %292 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %293 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %294 = load i32, i32* @CONNECTOR_OBJECT_ID_LVDS, align 4
  %295 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %291, i32 0, i32 %292, i32 %293, %struct.radeon_i2c_bus_rec* %5, i32 %294, %struct.radeon_hpd* %6)
  %296 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %297 = load i32, i32* @DDC_VGA, align 4
  %298 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %296, i32 %297, i32 0, i32 0)
  %299 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %15, i32 0, i32 0
  store i32 %298, i32* %299, align 4
  %300 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %301 = bitcast %struct.radeon_i2c_bus_rec* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %300, i8* align 4 %301, i64 4, i1 false)
  %302 = load i8*, i8** @RADEON_HPD_2, align 8
  %303 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %302, i8** %303, align 8
  %304 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %305 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %306 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %307 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %305, i32 %306, i32 0)
  %308 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %309 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %304, i32 %307, i32 %308)
  %310 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %311 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %312 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %313 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %311, i32 %312, i32 1)
  %314 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %315 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %310, i32 %313, i32 %314)
  %316 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %317 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %318 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %319 = or i32 %317, %318
  %320 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %321 = load i32, i32* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I, align 4
  %322 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %316, i32 1, i32 %319, i32 %320, %struct.radeon_i2c_bus_rec* %5, i32 %321, %struct.radeon_hpd* %6)
  %323 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %323, align 4
  %324 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %325 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %324, i8** %325, align 8
  %326 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %327 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %328 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %329 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %327, i32 %328, i32 2)
  %330 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %331 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %326, i32 %329, i32 %330)
  %332 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %333 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %334 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %335 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %336 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %332, i32 2, i32 %333, i32 %334, %struct.radeon_i2c_bus_rec* %5, i32 %335, %struct.radeon_hpd* %6)
  br label %1006

337:                                              ; preds = %54
  %338 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %339 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %338, i32 0, i32 1
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %341)
  %343 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %344 = load i32, i32* @DDC_DVI, align 4
  %345 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %343, i32 %344, i32 0, i32 0)
  %346 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %16, i32 0, i32 0
  store i32 %345, i32* %346, align 4
  %347 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %348 = bitcast %struct.radeon_i2c_bus_rec* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %347, i8* align 4 %348, i64 4, i1 false)
  %349 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %350 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %349, i8** %350, align 8
  %351 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %352 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %353 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %354 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %352, i32 %353, i32 0)
  %355 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %356 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %351, i32 %354, i32 %355)
  %357 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %358 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %359 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %360 = load i32, i32* @CONNECTOR_OBJECT_ID_LVDS, align 4
  %361 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %357, i32 0, i32 %358, i32 %359, %struct.radeon_i2c_bus_rec* %5, i32 %360, %struct.radeon_hpd* %6)
  %362 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %363 = load i32, i32* @DDC_VGA, align 4
  %364 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %362, i32 %363, i32 0, i32 0)
  %365 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %17, i32 0, i32 0
  store i32 %364, i32* %365, align 4
  %366 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %367 = bitcast %struct.radeon_i2c_bus_rec* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %366, i8* align 4 %367, i64 4, i1 false)
  %368 = load i8*, i8** @RADEON_HPD_1, align 8
  %369 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %368, i8** %369, align 8
  %370 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %371 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %372 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %373 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %371, i32 %372, i32 0)
  %374 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %375 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %370, i32 %373, i32 %374)
  %376 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %377 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %378 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %379 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %377, i32 %378, i32 1)
  %380 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %381 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %376, i32 %379, i32 %380)
  %382 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %383 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %384 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %385 = or i32 %383, %384
  %386 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %387 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %388 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %382, i32 1, i32 %385, i32 %386, %struct.radeon_i2c_bus_rec* %5, i32 %387, %struct.radeon_hpd* %6)
  %389 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %389, align 4
  %390 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %391 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %390, i8** %391, align 8
  %392 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %393 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %394 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %395 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %393, i32 %394, i32 2)
  %396 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %397 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %392, i32 %395, i32 %396)
  %398 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %399 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %400 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %401 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %402 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %398, i32 2, i32 %399, i32 %400, %struct.radeon_i2c_bus_rec* %5, i32 %401, %struct.radeon_hpd* %6)
  br label %1006

403:                                              ; preds = %54
  %404 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %405 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %407)
  %409 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %410 = load i32, i32* @DDC_DVI, align 4
  %411 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %409, i32 %410, i32 0, i32 0)
  %412 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %18, i32 0, i32 0
  store i32 %411, i32* %412, align 4
  %413 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %414 = bitcast %struct.radeon_i2c_bus_rec* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %413, i8* align 4 %414, i64 4, i1 false)
  %415 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %416 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %415, i8** %416, align 8
  %417 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %418 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %419 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %420 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %418, i32 %419, i32 0)
  %421 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %422 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %417, i32 %420, i32 %421)
  %423 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %424 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %425 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %426 = load i32, i32* @CONNECTOR_OBJECT_ID_LVDS, align 4
  %427 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %423, i32 0, i32 %424, i32 %425, %struct.radeon_i2c_bus_rec* %5, i32 %426, %struct.radeon_hpd* %6)
  %428 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %429 = load i32, i32* @DDC_VGA, align 4
  %430 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %428, i32 %429, i32 0, i32 0)
  %431 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %19, i32 0, i32 0
  store i32 %430, i32* %431, align 4
  %432 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %433 = bitcast %struct.radeon_i2c_bus_rec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %432, i8* align 4 %433, i64 4, i1 false)
  %434 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %435 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %434, i8** %435, align 8
  %436 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %437 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %438 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %439 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %437, i32 %438, i32 1)
  %440 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %441 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %436, i32 %439, i32 %440)
  %442 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %443 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %444 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %445 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %446 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %442, i32 1, i32 %443, i32 %444, %struct.radeon_i2c_bus_rec* %5, i32 %445, %struct.radeon_hpd* %6)
  %447 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %447, align 4
  %448 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %449 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %448, i8** %449, align 8
  %450 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %451 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %452 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %453 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %451, i32 %452, i32 2)
  %454 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %455 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %450, i32 %453, i32 %454)
  %456 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %457 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %458 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %459 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %460 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %456, i32 2, i32 %457, i32 %458, %struct.radeon_i2c_bus_rec* %5, i32 %459, %struct.radeon_hpd* %6)
  br label %1006

461:                                              ; preds = %54
  %462 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %463 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %462, i32 0, i32 1
  %464 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %465)
  %467 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %468 = load i32, i32* @DDC_CRT2, align 4
  %469 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %467, i32 %468, i32 0, i32 0)
  %470 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %20, i32 0, i32 0
  store i32 %469, i32* %470, align 4
  %471 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %472 = bitcast %struct.radeon_i2c_bus_rec* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %471, i8* align 4 %472, i64 4, i1 false)
  %473 = load i8*, i8** @RADEON_HPD_2, align 8
  %474 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %473, i8** %474, align 8
  %475 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %476 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %477 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %478 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %476, i32 %477, i32 0)
  %479 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %480 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %475, i32 %478, i32 %479)
  %481 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %482 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %483 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %484 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %482, i32 %483, i32 2)
  %485 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %486 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %481, i32 %484, i32 %485)
  %487 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %488 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %489 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %490 = or i32 %488, %489
  %491 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %492 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %493 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %487, i32 0, i32 %490, i32 %491, %struct.radeon_i2c_bus_rec* %5, i32 %492, %struct.radeon_hpd* %6)
  %494 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %494, align 4
  %495 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %496 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %495, i8** %496, align 8
  %497 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %498 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %499 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %500 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %498, i32 %499, i32 2)
  %501 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %502 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %497, i32 %500, i32 %501)
  %503 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %504 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %505 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %506 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %507 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %503, i32 1, i32 %504, i32 %505, %struct.radeon_i2c_bus_rec* %5, i32 %506, %struct.radeon_hpd* %6)
  br label %1006

508:                                              ; preds = %54
  %509 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %510 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %509, i32 0, i32 1
  %511 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = call i32 @DRM_INFO(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %512)
  %514 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %515 = load i32, i32* @DDC_CRT2, align 4
  %516 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %514, i32 %515, i32 0, i32 0)
  %517 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %21, i32 0, i32 0
  store i32 %516, i32* %517, align 4
  %518 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %519 = bitcast %struct.radeon_i2c_bus_rec* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %518, i8* align 4 %519, i64 4, i1 false)
  %520 = load i8*, i8** @RADEON_HPD_1, align 8
  %521 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %520, i8** %521, align 8
  %522 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %523 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %524 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %525 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %523, i32 %524, i32 0)
  %526 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %527 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %522, i32 %525, i32 %526)
  %528 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %529 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %530 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %531 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %529, i32 %530, i32 2)
  %532 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %533 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %528, i32 %531, i32 %532)
  %534 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %535 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %536 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %537 = or i32 %535, %536
  %538 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %539 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %540 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %534, i32 0, i32 %537, i32 %538, %struct.radeon_i2c_bus_rec* %5, i32 %539, %struct.radeon_hpd* %6)
  %541 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %541, align 4
  %542 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %543 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %542, i8** %543, align 8
  %544 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %545 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %546 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %547 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %545, i32 %546, i32 2)
  %548 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %549 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %544, i32 %547, i32 %548)
  %550 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %551 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %552 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %553 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %554 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %550, i32 1, i32 %551, i32 %552, %struct.radeon_i2c_bus_rec* %5, i32 %553, %struct.radeon_hpd* %6)
  br label %1006

555:                                              ; preds = %54
  %556 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %557 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %556, i32 0, i32 1
  %558 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %557, i32 0, i32 0
  %559 = load i32, i32* %558, align 4
  %560 = call i32 @DRM_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %559)
  %561 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %562 = load i32, i32* @DDC_MONID, align 4
  %563 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %561, i32 %562, i32 0, i32 0)
  %564 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %22, i32 0, i32 0
  store i32 %563, i32* %564, align 4
  %565 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %566 = bitcast %struct.radeon_i2c_bus_rec* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %565, i8* align 4 %566, i64 4, i1 false)
  %567 = load i8*, i8** @RADEON_HPD_1, align 8
  %568 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %567, i8** %568, align 8
  %569 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %570 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %571 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %572 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %570, i32 %571, i32 0)
  %573 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %574 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %569, i32 %572, i32 %573)
  %575 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %576 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %577 = load i32, i32* @DRM_MODE_CONNECTOR_DVID, align 4
  %578 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_D, align 4
  %579 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %575, i32 0, i32 %576, i32 %577, %struct.radeon_i2c_bus_rec* %5, i32 %578, %struct.radeon_hpd* %6)
  %580 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %581 = load i32, i32* @DDC_DVI, align 4
  %582 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %580, i32 %581, i32 0, i32 0)
  %583 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %23, i32 0, i32 0
  store i32 %582, i32* %583, align 4
  %584 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %585 = bitcast %struct.radeon_i2c_bus_rec* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %584, i8* align 4 %585, i64 4, i1 false)
  %586 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %587 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %586, i8** %587, align 8
  %588 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %589 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %590 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %591 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %589, i32 %590, i32 2)
  %592 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %593 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %588, i32 %591, i32 %592)
  %594 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %595 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %596 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %597 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %598 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %594, i32 1, i32 %595, i32 %596, %struct.radeon_i2c_bus_rec* %5, i32 %597, %struct.radeon_hpd* %6)
  %599 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %599, align 4
  %600 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %601 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %600, i8** %601, align 8
  %602 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %603 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %604 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %605 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %603, i32 %604, i32 2)
  %606 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %607 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %602, i32 %605, i32 %606)
  %608 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %609 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %610 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %611 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %612 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %608, i32 2, i32 %609, i32 %610, %struct.radeon_i2c_bus_rec* %5, i32 %611, %struct.radeon_hpd* %6)
  br label %1006

613:                                              ; preds = %54
  %614 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %615 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %614, i32 0, i32 1
  %616 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 4
  %618 = call i32 @DRM_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %617)
  %619 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %620 = load i32, i32* @DDC_VGA, align 4
  %621 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %619, i32 %620, i32 0, i32 0)
  %622 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %24, i32 0, i32 0
  store i32 %621, i32* %622, align 4
  %623 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %624 = bitcast %struct.radeon_i2c_bus_rec* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %623, i8* align 4 %624, i64 4, i1 false)
  %625 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %626 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %625, i8** %626, align 8
  %627 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %628 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %629 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %630 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %628, i32 %629, i32 1)
  %631 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %632 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %627, i32 %630, i32 %631)
  %633 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %634 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %635 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %636 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %637 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %633, i32 0, i32 %634, i32 %635, %struct.radeon_i2c_bus_rec* %5, i32 %636, %struct.radeon_hpd* %6)
  %638 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %639 = load i32, i32* @DDC_CRT2, align 4
  %640 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %638, i32 %639, i32 0, i32 0)
  %641 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %25, i32 0, i32 0
  store i32 %640, i32* %641, align 4
  %642 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %643 = bitcast %struct.radeon_i2c_bus_rec* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %642, i8* align 4 %643, i64 4, i1 false)
  %644 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %645 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %644, i8** %645, align 8
  %646 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %647 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %648 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %649 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %647, i32 %648, i32 2)
  %650 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %651 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %646, i32 %649, i32 %650)
  %652 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %653 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %654 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %655 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %656 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %652, i32 1, i32 %653, i32 %654, %struct.radeon_i2c_bus_rec* %5, i32 %655, %struct.radeon_hpd* %6)
  %657 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %657, align 4
  %658 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %659 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %658, i8** %659, align 8
  %660 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %661 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %662 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %663 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %661, i32 %662, i32 2)
  %664 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %665 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %660, i32 %663, i32 %664)
  %666 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %667 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %668 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %669 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %670 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %666, i32 2, i32 %667, i32 %668, %struct.radeon_i2c_bus_rec* %5, i32 %669, %struct.radeon_hpd* %6)
  br label %1006

671:                                              ; preds = %54
  %672 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %673 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %672, i32 0, i32 1
  %674 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 4
  %676 = call i32 @DRM_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %675)
  %677 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %678 = load i32, i32* @DDC_VGA, align 4
  %679 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %677, i32 %678, i32 0, i32 0)
  %680 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %26, i32 0, i32 0
  store i32 %679, i32* %680, align 4
  %681 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %682 = bitcast %struct.radeon_i2c_bus_rec* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %681, i8* align 4 %682, i64 4, i1 false)
  %683 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %684 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %683, i8** %684, align 8
  %685 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %686 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %687 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %688 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %686, i32 %687, i32 1)
  %689 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %690 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %685, i32 %688, i32 %689)
  %691 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %692 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %693 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %694 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %695 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %691, i32 0, i32 %692, i32 %693, %struct.radeon_i2c_bus_rec* %5, i32 %694, %struct.radeon_hpd* %6)
  %696 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %697 = load i32, i32* @DDC_CRT2, align 4
  %698 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %696, i32 %697, i32 0, i32 0)
  %699 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %27, i32 0, i32 0
  store i32 %698, i32* %699, align 4
  %700 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %701 = bitcast %struct.radeon_i2c_bus_rec* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %700, i8* align 4 %701, i64 4, i1 false)
  %702 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %703 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %702, i8** %703, align 8
  %704 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %705 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %706 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %707 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %705, i32 %706, i32 2)
  %708 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %709 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %704, i32 %707, i32 %708)
  %710 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %711 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %712 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %713 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %714 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %710, i32 1, i32 %711, i32 %712, %struct.radeon_i2c_bus_rec* %5, i32 %713, %struct.radeon_hpd* %6)
  br label %1006

715:                                              ; preds = %54
  %716 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %717 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %716, i32 0, i32 1
  %718 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %717, i32 0, i32 0
  %719 = load i32, i32* %718, align 4
  %720 = call i32 @DRM_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0), i32 %719)
  %721 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %722 = load i32, i32* @DDC_DVI, align 4
  %723 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %721, i32 %722, i32 0, i32 0)
  %724 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %28, i32 0, i32 0
  store i32 %723, i32* %724, align 4
  %725 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %726 = bitcast %struct.radeon_i2c_bus_rec* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %725, i8* align 4 %726, i64 4, i1 false)
  %727 = load i8*, i8** @RADEON_HPD_1, align 8
  %728 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %727, i8** %728, align 8
  %729 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %730 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %731 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %732 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %730, i32 %731, i32 0)
  %733 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %734 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %729, i32 %732, i32 %733)
  %735 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %736 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %737 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %738 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %736, i32 %737, i32 1)
  %739 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %740 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %735, i32 %738, i32 %739)
  %741 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %742 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %743 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %744 = or i32 %742, %743
  %745 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %746 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %747 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %741, i32 0, i32 %744, i32 %745, %struct.radeon_i2c_bus_rec* %5, i32 %746, %struct.radeon_hpd* %6)
  %748 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %749 = load i32, i32* @DDC_MONID, align 4
  %750 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %748, i32 %749, i32 0, i32 0)
  %751 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %29, i32 0, i32 0
  store i32 %750, i32* %751, align 4
  %752 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %753 = bitcast %struct.radeon_i2c_bus_rec* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %752, i8* align 4 %753, i64 4, i1 false)
  %754 = load i8*, i8** @RADEON_HPD_2, align 8
  %755 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %754, i8** %755, align 8
  %756 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %757 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %758 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %759 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %757, i32 %758, i32 0)
  %760 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %761 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %756, i32 %759, i32 %760)
  %762 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %763 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %764 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %765 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %763, i32 %764, i32 2)
  %766 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %767 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %762, i32 %765, i32 %766)
  %768 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %769 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %770 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %771 = or i32 %769, %770
  %772 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %773 = load i32, i32* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I, align 4
  %774 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %768, i32 1, i32 %771, i32 %772, %struct.radeon_i2c_bus_rec* %5, i32 %773, %struct.radeon_hpd* %6)
  br label %1006

775:                                              ; preds = %54
  %776 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %777 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %776, i32 0, i32 1
  %778 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %777, i32 0, i32 0
  %779 = load i32, i32* %778, align 4
  %780 = call i32 @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i32 %779)
  %781 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %782 = load i32, i32* @DDC_DVI, align 4
  %783 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %781, i32 %782, i32 0, i32 0)
  %784 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %30, i32 0, i32 0
  store i32 %783, i32* %784, align 4
  %785 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %786 = bitcast %struct.radeon_i2c_bus_rec* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %785, i8* align 4 %786, i64 4, i1 false)
  %787 = load i8*, i8** @RADEON_HPD_1, align 8
  %788 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %787, i8** %788, align 8
  %789 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %790 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %791 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %792 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %790, i32 %791, i32 0)
  %793 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %794 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %789, i32 %792, i32 %793)
  %795 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %796 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %797 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %798 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %796, i32 %797, i32 2)
  %799 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %800 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %795, i32 %798, i32 %799)
  %801 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %802 = load i32, i32* @ATOM_DEVICE_DFP2_SUPPORT, align 4
  %803 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %804 = or i32 %802, %803
  %805 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %806 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %807 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %801, i32 0, i32 %804, i32 %805, %struct.radeon_i2c_bus_rec* %5, i32 %806, %struct.radeon_hpd* %6)
  %808 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %809 = load i32, i32* @DDC_VGA, align 4
  %810 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %808, i32 %809, i32 0, i32 0)
  %811 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %31, i32 0, i32 0
  store i32 %810, i32* %811, align 4
  %812 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %813 = bitcast %struct.radeon_i2c_bus_rec* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %812, i8* align 4 %813, i64 4, i1 false)
  %814 = load i8*, i8** @RADEON_HPD_2, align 8
  %815 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %814, i8** %815, align 8
  %816 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %817 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %818 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %819 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %817, i32 %818, i32 0)
  %820 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %821 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %816, i32 %819, i32 %820)
  %822 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %823 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %824 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %825 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %823, i32 %824, i32 1)
  %826 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %827 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %822, i32 %825, i32 %826)
  %828 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %829 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %830 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %831 = or i32 %829, %830
  %832 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %833 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %834 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %828, i32 1, i32 %831, i32 %832, %struct.radeon_i2c_bus_rec* %5, i32 %833, %struct.radeon_hpd* %6)
  %835 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %835, align 4
  %836 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %837 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %836, i8** %837, align 8
  %838 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %839 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %840 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %841 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %839, i32 %840, i32 2)
  %842 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %843 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %838, i32 %841, i32 %842)
  %844 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %845 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %846 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %847 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %848 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %844, i32 2, i32 %845, i32 %846, %struct.radeon_i2c_bus_rec* %5, i32 %847, %struct.radeon_hpd* %6)
  br label %1006

849:                                              ; preds = %54
  %850 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %851 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %850, i32 0, i32 1
  %852 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %851, i32 0, i32 0
  %853 = load i32, i32* %852, align 4
  %854 = call i32 @DRM_INFO(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i64 0, i64 0), i32 %853)
  %855 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %856 = load i32, i32* @DDC_NONE_DETECTED, align 4
  %857 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %855, i32 %856, i32 0, i32 0)
  %858 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %32, i32 0, i32 0
  store i32 %857, i32* %858, align 4
  %859 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %860 = bitcast %struct.radeon_i2c_bus_rec* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %859, i8* align 4 %860, i64 4, i1 false)
  %861 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %862 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %861, i8** %862, align 8
  %863 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %864 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %865 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %866 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %864, i32 %865, i32 0)
  %867 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %868 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %863, i32 %866, i32 %867)
  %869 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %870 = load i32, i32* @ATOM_DEVICE_LCD1_SUPPORT, align 4
  %871 = load i32, i32* @DRM_MODE_CONNECTOR_LVDS, align 4
  %872 = load i32, i32* @CONNECTOR_OBJECT_ID_LVDS, align 4
  %873 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %869, i32 0, i32 %870, i32 %871, %struct.radeon_i2c_bus_rec* %5, i32 %872, %struct.radeon_hpd* %6)
  %874 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %875 = load i32, i32* @DDC_DVI, align 4
  %876 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %874, i32 %875, i32 0, i32 0)
  %877 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %33, i32 0, i32 0
  store i32 %876, i32* %877, align 4
  %878 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %879 = bitcast %struct.radeon_i2c_bus_rec* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %878, i8* align 4 %879, i64 4, i1 false)
  %880 = load i8*, i8** @RADEON_HPD_1, align 8
  %881 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %880, i8** %881, align 8
  %882 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %883 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %884 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %885 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %883, i32 %884, i32 0)
  %886 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %887 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %882, i32 %885, i32 %886)
  %888 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %889 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %890 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %891 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %889, i32 %890, i32 2)
  %892 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %893 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %888, i32 %891, i32 %892)
  %894 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %895 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %896 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %897 = or i32 %895, %896
  %898 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %899 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %900 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %894, i32 1, i32 %897, i32 %898, %struct.radeon_i2c_bus_rec* %5, i32 %899, %struct.radeon_hpd* %6)
  %901 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %902 = load i32, i32* @DDC_VGA, align 4
  %903 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %901, i32 %902, i32 0, i32 0)
  %904 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %34, i32 0, i32 0
  store i32 %903, i32* %904, align 4
  %905 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %906 = bitcast %struct.radeon_i2c_bus_rec* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %905, i8* align 4 %906, i64 4, i1 false)
  %907 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %908 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %907, i8** %908, align 8
  %909 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %910 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %911 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %912 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %910, i32 %911, i32 1)
  %913 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %914 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %909, i32 %912, i32 %913)
  %915 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %916 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %917 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %918 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %919 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %915, i32 2, i32 %916, i32 %917, %struct.radeon_i2c_bus_rec* %5, i32 %918, %struct.radeon_hpd* %6)
  %920 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %920, align 4
  %921 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %922 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %921, i8** %922, align 8
  %923 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %924 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %925 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %926 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %924, i32 %925, i32 2)
  %927 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %928 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %923, i32 %926, i32 %927)
  %929 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %930 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %931 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %932 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %933 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %929, i32 3, i32 %930, i32 %931, %struct.radeon_i2c_bus_rec* %5, i32 %932, %struct.radeon_hpd* %6)
  br label %1006

934:                                              ; preds = %54
  %935 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %936 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %935, i32 0, i32 1
  %937 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %936, i32 0, i32 0
  %938 = load i32, i32* %937, align 4
  %939 = call i32 @DRM_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %938)
  %940 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %941 = load i32, i32* @DDC_DVI, align 4
  %942 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %940, i32 %941, i32 0, i32 0)
  %943 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %35, i32 0, i32 0
  store i32 %942, i32* %943, align 4
  %944 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %945 = bitcast %struct.radeon_i2c_bus_rec* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %944, i8* align 4 %945, i64 4, i1 false)
  %946 = load i8*, i8** @RADEON_HPD_1, align 8
  %947 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %946, i8** %947, align 8
  %948 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %949 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %950 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %951 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %949, i32 %950, i32 0)
  %952 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %953 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %948, i32 %951, i32 %952)
  %954 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %955 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %956 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %957 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %955, i32 %956, i32 2)
  %958 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %959 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %954, i32 %957, i32 %958)
  %960 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %961 = load i32, i32* @ATOM_DEVICE_DFP1_SUPPORT, align 4
  %962 = load i32, i32* @ATOM_DEVICE_CRT2_SUPPORT, align 4
  %963 = or i32 %961, %962
  %964 = load i32, i32* @DRM_MODE_CONNECTOR_DVII, align 4
  %965 = load i32, i32* @CONNECTOR_OBJECT_ID_SINGLE_LINK_DVI_I, align 4
  %966 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %960, i32 0, i32 %963, i32 %964, %struct.radeon_i2c_bus_rec* %5, i32 %965, %struct.radeon_hpd* %6)
  %967 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %968 = load i32, i32* @DDC_VGA, align 4
  %969 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %967, i32 %968, i32 0, i32 0)
  %970 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %36, i32 0, i32 0
  store i32 %969, i32* %970, align 4
  %971 = bitcast %struct.radeon_i2c_bus_rec* %5 to i8*
  %972 = bitcast %struct.radeon_i2c_bus_rec* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %971, i8* align 4 %972, i64 4, i1 false)
  %973 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %974 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %973, i8** %974, align 8
  %975 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %976 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %977 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %978 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %976, i32 %977, i32 1)
  %979 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %980 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %975, i32 %978, i32 %979)
  %981 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %982 = load i32, i32* @ATOM_DEVICE_CRT1_SUPPORT, align 4
  %983 = load i32, i32* @DRM_MODE_CONNECTOR_VGA, align 4
  %984 = load i32, i32* @CONNECTOR_OBJECT_ID_VGA, align 4
  %985 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %981, i32 1, i32 %982, i32 %983, %struct.radeon_i2c_bus_rec* %5, i32 %984, %struct.radeon_hpd* %6)
  %986 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %5, i32 0, i32 0
  store i32 0, i32* %986, align 4
  %987 = load i8*, i8** @RADEON_HPD_NONE, align 8
  %988 = getelementptr inbounds %struct.radeon_hpd, %struct.radeon_hpd* %6, i32 0, i32 0
  store i8* %987, i8** %988, align 8
  %989 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %990 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %991 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %992 = call i32 @radeon_get_encoder_enum(%struct.drm_device* %990, i32 %991, i32 2)
  %993 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %994 = call i32 @radeon_add_legacy_encoder(%struct.drm_device* %989, i32 %992, i32 %993)
  %995 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %996 = load i32, i32* @ATOM_DEVICE_TV1_SUPPORT, align 4
  %997 = load i32, i32* @DRM_MODE_CONNECTOR_SVIDEO, align 4
  %998 = load i32, i32* @CONNECTOR_OBJECT_ID_SVIDEO, align 4
  %999 = call i32 @radeon_add_legacy_connector(%struct.drm_device* %995, i32 2, i32 %996, i32 %997, %struct.radeon_i2c_bus_rec* %5, i32 %998, %struct.radeon_hpd* %6)
  br label %1006

1000:                                             ; preds = %54
  %1001 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %1002 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %1001, i32 0, i32 1
  %1003 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1002, i32 0, i32 0
  %1004 = load i32, i32* %1003, align 4
  %1005 = call i32 @DRM_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i32 %1004)
  store i32 0, i32* %2, align 4
  br label %1009

1006:                                             ; preds = %934, %849, %775, %715, %671, %613, %555, %508, %461, %403, %337, %271, %213, %212
  %1007 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %1008 = call i32 @radeon_link_encoder_connector(%struct.drm_device* %1007)
  store i32 1, i32* %2, align 4
  br label %1009

1009:                                             ; preds = %1006, %1000
  %1010 = load i32, i32* %2, align 4
  ret i32 %1010
}

declare dso_local i32 @DRM_INFO(i8*, i32) #1

declare dso_local i32 @combios_setup_i2c_bus(%struct.radeon_device*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @radeon_add_legacy_encoder(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @radeon_get_encoder_enum(%struct.drm_device*, i32, i32) #1

declare dso_local i32 @radeon_add_legacy_connector(%struct.drm_device*, i32, i32, i32, %struct.radeon_i2c_bus_rec*, i32, %struct.radeon_hpd*) #1

declare dso_local i32 @radeon_link_encoder_connector(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
