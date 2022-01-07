; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_ext_tmds_info_from_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_ext_tmds_info_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_encoder = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.radeon_encoder_ext_tmds = type { i32, i32, i32 }
%struct.radeon_i2c_bus_rec = type { i32 }

@DDC_MONID = common dso_local global i32 0, align 4
@DVO_SIL164 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_legacy_get_ext_tmds_info_from_table(%struct.radeon_encoder* %0, %struct.radeon_encoder_ext_tmds* %1) #0 {
  %3 = alloca %struct.radeon_encoder*, align 8
  %4 = alloca %struct.radeon_encoder_ext_tmds*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.radeon_device*, align 8
  %7 = alloca %struct.radeon_i2c_bus_rec, align 4
  %8 = alloca %struct.radeon_i2c_bus_rec, align 4
  store %struct.radeon_encoder* %0, %struct.radeon_encoder** %3, align 8
  store %struct.radeon_encoder_ext_tmds* %1, %struct.radeon_encoder_ext_tmds** %4, align 8
  %9 = load %struct.radeon_encoder*, %struct.radeon_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %5, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 0
  %15 = load %struct.radeon_device*, %struct.radeon_device** %14, align 8
  store %struct.radeon_device* %15, %struct.radeon_device** %6, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %17 = load i32, i32* @DDC_MONID, align 4
  %18 = call i32 @combios_setup_i2c_bus(%struct.radeon_device* %16, i32 %17, i32 0, i32 0)
  %19 = getelementptr inbounds %struct.radeon_i2c_bus_rec, %struct.radeon_i2c_bus_rec* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = bitcast %struct.radeon_i2c_bus_rec* %7 to i8*
  %21 = bitcast %struct.radeon_i2c_bus_rec* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %23 = call i32 @radeon_i2c_lookup(%struct.radeon_device* %22, %struct.radeon_i2c_bus_rec* %7)
  %24 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %25 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.radeon_device*, %struct.radeon_device** %6, align 8
  %27 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %31 [
    i32 128, label %30
    i32 129, label %30
  ]

30:                                               ; preds = %2, %2
  br label %31

31:                                               ; preds = %2, %30
  %32 = load i32, i32* @DVO_SIL164, align 4
  %33 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %34 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.radeon_encoder_ext_tmds*, %struct.radeon_encoder_ext_tmds** %4, align 8
  %36 = getelementptr inbounds %struct.radeon_encoder_ext_tmds, %struct.radeon_encoder_ext_tmds* %35, i32 0, i32 0
  store i32 56, i32* %36, align 4
  br label %37

37:                                               ; preds = %31
  ret i32 1
}

declare dso_local i32 @combios_setup_i2c_bus(%struct.radeon_device*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @radeon_i2c_lookup(%struct.radeon_device*, %struct.radeon_i2c_bus_rec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
