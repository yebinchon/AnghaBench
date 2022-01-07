; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_default_voltages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_atombios.c_radeon_atombios_get_default_voltages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.radeon_mode_info }
%struct.radeon_mode_info = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%union.firmware_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@FirmwareInfo = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i64*, i64*)* @radeon_atombios_get_default_voltages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_atombios_get_default_voltages(%struct.radeon_device* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.radeon_mode_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %union.firmware_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  store %struct.radeon_mode_info* %14, %struct.radeon_mode_info** %7, align 8
  %15 = load i32, i32* @DATA, align 4
  %16 = load i32, i32* @FirmwareInfo, align 4
  %17 = call i32 @GetIndexIntoMasterTable(i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i64*, i64** %5, align 8
  store i64 0, i64* %18, align 8
  %19 = load i64*, i64** %6, align 8
  store i64 0, i64* %19, align 8
  %20 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %7, align 8
  %21 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i64 @atom_parse_data_header(%struct.TYPE_6__* %22, i32 %23, i32* null, i32* %9, i32* %10, i64* %11)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %3
  %27 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %7, align 8
  %28 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %11, align 8
  %33 = add nsw i64 %31, %32
  %34 = inttoptr i64 %33 to %union.firmware_info*
  store %union.firmware_info* %34, %union.firmware_info** %12, align 8
  %35 = load %union.firmware_info*, %union.firmware_info** %12, align 8
  %36 = bitcast %union.firmware_info* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le16_to_cpu(i32 %38)
  %40 = load i64*, i64** %5, align 8
  store i64 %39, i64* %40, align 8
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %53

43:                                               ; preds = %26
  %44 = load i32, i32* %10, align 4
  %45 = icmp sge i32 %44, 2
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %union.firmware_info*, %union.firmware_info** %12, align 8
  %48 = bitcast %union.firmware_info* %47 to %struct.TYPE_5__*
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le16_to_cpu(i32 %50)
  %52 = load i64*, i64** %6, align 8
  store i64 %51, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %43, %26
  br label %54

54:                                               ; preds = %53, %3
  ret void
}

declare dso_local i32 @GetIndexIntoMasterTable(i32, i32) #1

declare dso_local i64 @atom_parse_data_header(%struct.TYPE_6__*, i32, i32*, i32*, i32*, i64*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
