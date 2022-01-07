; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_do_remove_driverfs_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_do_remove_driverfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdebug_driverfs_driver = common dso_local global i32 0, align 4
@driver_attr_map = common dso_local global i32 0, align 4
@driver_attr_ato = common dso_local global i32 0, align 4
@driver_attr_guard = common dso_local global i32 0, align 4
@driver_attr_dif = common dso_local global i32 0, align 4
@driver_attr_dix = common dso_local global i32 0, align 4
@driver_attr_sector_size = common dso_local global i32 0, align 4
@driver_attr_vpd_use_hostno = common dso_local global i32 0, align 4
@driver_attr_virtual_gb = common dso_local global i32 0, align 4
@driver_attr_scsi_level = common dso_local global i32 0, align 4
@driver_attr_opts = common dso_local global i32 0, align 4
@driver_attr_ptype = common dso_local global i32 0, align 4
@driver_attr_num_tgts = common dso_local global i32 0, align 4
@driver_attr_num_parts = common dso_local global i32 0, align 4
@driver_attr_no_uld = common dso_local global i32 0, align 4
@driver_attr_no_lun_0 = common dso_local global i32 0, align 4
@driver_attr_max_queue = common dso_local global i32 0, align 4
@driver_attr_max_luns = common dso_local global i32 0, align 4
@driver_attr_fake_rw = common dso_local global i32 0, align 4
@driver_attr_every_nth = common dso_local global i32 0, align 4
@driver_attr_dsense = common dso_local global i32 0, align 4
@driver_attr_dev_size_mb = common dso_local global i32 0, align 4
@driver_attr_delay = common dso_local global i32 0, align 4
@driver_attr_add_host = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @do_remove_driverfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_remove_driverfs_files() #0 {
  %1 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_map)
  %2 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_ato)
  %3 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_guard)
  %4 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_dif)
  %5 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_dix)
  %6 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_sector_size)
  %7 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_vpd_use_hostno)
  %8 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_virtual_gb)
  %9 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_scsi_level)
  %10 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_opts)
  %11 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_ptype)
  %12 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_num_tgts)
  %13 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_num_parts)
  %14 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_no_uld)
  %15 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_no_lun_0)
  %16 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_max_queue)
  %17 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_max_luns)
  %18 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_fake_rw)
  %19 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_every_nth)
  %20 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_dsense)
  %21 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_dev_size_mb)
  %22 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_delay)
  %23 = call i32 @driver_remove_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_add_host)
  ret void
}

declare dso_local i32 @driver_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
