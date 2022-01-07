; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_volume_sysfs_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_vmt.c_volume_sysfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume = type { i32 }

@attr_vol_upd_marker = common dso_local global i32 0, align 4
@attr_vol_data_bytes = common dso_local global i32 0, align 4
@attr_vol_usable_eb_size = common dso_local global i32 0, align 4
@attr_vol_alignment = common dso_local global i32 0, align 4
@attr_vol_corrupted = common dso_local global i32 0, align 4
@attr_vol_name = common dso_local global i32 0, align 4
@attr_vol_type = common dso_local global i32 0, align 4
@attr_vol_reserved_ebs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_volume*)* @volume_sysfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @volume_sysfs_close(%struct.ubi_volume* %0) #0 {
  %2 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_volume* %0, %struct.ubi_volume** %2, align 8
  %3 = load %struct.ubi_volume*, %struct.ubi_volume** %2, align 8
  %4 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %3, i32 0, i32 0
  %5 = call i32 @device_remove_file(i32* %4, i32* @attr_vol_upd_marker)
  %6 = load %struct.ubi_volume*, %struct.ubi_volume** %2, align 8
  %7 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %6, i32 0, i32 0
  %8 = call i32 @device_remove_file(i32* %7, i32* @attr_vol_data_bytes)
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %2, align 8
  %10 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %9, i32 0, i32 0
  %11 = call i32 @device_remove_file(i32* %10, i32* @attr_vol_usable_eb_size)
  %12 = load %struct.ubi_volume*, %struct.ubi_volume** %2, align 8
  %13 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %12, i32 0, i32 0
  %14 = call i32 @device_remove_file(i32* %13, i32* @attr_vol_alignment)
  %15 = load %struct.ubi_volume*, %struct.ubi_volume** %2, align 8
  %16 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %15, i32 0, i32 0
  %17 = call i32 @device_remove_file(i32* %16, i32* @attr_vol_corrupted)
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %2, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 0
  %20 = call i32 @device_remove_file(i32* %19, i32* @attr_vol_name)
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %2, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 0
  %23 = call i32 @device_remove_file(i32* %22, i32* @attr_vol_type)
  %24 = load %struct.ubi_volume*, %struct.ubi_volume** %2, align 8
  %25 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %24, i32 0, i32 0
  %26 = call i32 @device_remove_file(i32* %25, i32* @attr_vol_reserved_ebs)
  %27 = load %struct.ubi_volume*, %struct.ubi_volume** %2, align 8
  %28 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %27, i32 0, i32 0
  %29 = call i32 @device_unregister(i32* %28)
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
