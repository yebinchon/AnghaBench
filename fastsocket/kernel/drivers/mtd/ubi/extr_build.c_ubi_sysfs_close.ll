; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_sysfs_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/ubi/extr_build.c_ubi_sysfs_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }

@dev_mtd_num = common dso_local global i32 0, align 4
@dev_bgt_enabled = common dso_local global i32 0, align 4
@dev_min_io_size = common dso_local global i32 0, align 4
@dev_max_vol_count = common dso_local global i32 0, align 4
@dev_bad_peb_count = common dso_local global i32 0, align 4
@dev_reserved_for_bad = common dso_local global i32 0, align 4
@dev_max_ec = common dso_local global i32 0, align 4
@dev_volumes_count = common dso_local global i32 0, align 4
@dev_total_eraseblocks = common dso_local global i32 0, align 4
@dev_avail_eraseblocks = common dso_local global i32 0, align 4
@dev_eraseblock_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ubi_device*)* @ubi_sysfs_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubi_sysfs_close(%struct.ubi_device* %0) #0 {
  %2 = alloca %struct.ubi_device*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %2, align 8
  %3 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %4 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %3, i32 0, i32 0
  %5 = call i32 @device_remove_file(i32* %4, i32* @dev_mtd_num)
  %6 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %7 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %6, i32 0, i32 0
  %8 = call i32 @device_remove_file(i32* %7, i32* @dev_bgt_enabled)
  %9 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 0
  %11 = call i32 @device_remove_file(i32* %10, i32* @dev_min_io_size)
  %12 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %13 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %12, i32 0, i32 0
  %14 = call i32 @device_remove_file(i32* %13, i32* @dev_max_vol_count)
  %15 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 0
  %17 = call i32 @device_remove_file(i32* %16, i32* @dev_bad_peb_count)
  %18 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %19 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %18, i32 0, i32 0
  %20 = call i32 @device_remove_file(i32* %19, i32* @dev_reserved_for_bad)
  %21 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 0
  %23 = call i32 @device_remove_file(i32* %22, i32* @dev_max_ec)
  %24 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %25 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %24, i32 0, i32 0
  %26 = call i32 @device_remove_file(i32* %25, i32* @dev_volumes_count)
  %27 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %28 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %27, i32 0, i32 0
  %29 = call i32 @device_remove_file(i32* %28, i32* @dev_total_eraseblocks)
  %30 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %31 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %30, i32 0, i32 0
  %32 = call i32 @device_remove_file(i32* %31, i32* @dev_avail_eraseblocks)
  %33 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 0
  %35 = call i32 @device_remove_file(i32* %34, i32* @dev_eraseblock_size)
  %36 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %37 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %36, i32 0, i32 0
  %38 = call i32 @device_unregister(i32* %37)
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
