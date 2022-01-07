; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_tv_dac_info_from_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_legacy_get_tv_dac_info_from_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i32 }
%struct.radeon_encoder_tv_dac = type { i32, i32, i32 }

@default_tvdac_adj = common dso_local global i32* null, align 8
@RADEON_IS_MOBILITY = common dso_local global i32 0, align 4
@CHIP_RV250 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_encoder_tv_dac*)* @radeon_legacy_get_tv_dac_info_from_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_legacy_get_tv_dac_info_from_table(%struct.radeon_device* %0, %struct.radeon_encoder_tv_dac* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.radeon_encoder_tv_dac*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.radeon_encoder_tv_dac* %1, %struct.radeon_encoder_tv_dac** %4, align 8
  %5 = load i32*, i32** @default_tvdac_adj, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds i32, i32* %5, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @RADEON_IS_MOBILITY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CHIP_RV250, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %4, align 8
  %27 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %26, i32 0, i32 0
  store i32 8912896, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %19, %2
  %29 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %4, align 8
  %30 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %4, align 8
  %35 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.radeon_encoder_tv_dac*, %struct.radeon_encoder_tv_dac** %4, align 8
  %38 = getelementptr inbounds %struct.radeon_encoder_tv_dac, %struct.radeon_encoder_tv_dac* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
