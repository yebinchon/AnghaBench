; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_do_create_driverfs_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_debug.c_do_create_driverfs_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sdebug_driverfs_driver = common dso_local global i32 0, align 4
@driver_attr_add_host = common dso_local global i32 0, align 4
@driver_attr_delay = common dso_local global i32 0, align 4
@driver_attr_dev_size_mb = common dso_local global i32 0, align 4
@driver_attr_dsense = common dso_local global i32 0, align 4
@driver_attr_every_nth = common dso_local global i32 0, align 4
@driver_attr_fake_rw = common dso_local global i32 0, align 4
@driver_attr_max_luns = common dso_local global i32 0, align 4
@driver_attr_max_queue = common dso_local global i32 0, align 4
@driver_attr_no_lun_0 = common dso_local global i32 0, align 4
@driver_attr_no_uld = common dso_local global i32 0, align 4
@driver_attr_num_parts = common dso_local global i32 0, align 4
@driver_attr_num_tgts = common dso_local global i32 0, align 4
@driver_attr_ptype = common dso_local global i32 0, align 4
@driver_attr_opts = common dso_local global i32 0, align 4
@driver_attr_scsi_level = common dso_local global i32 0, align 4
@driver_attr_virtual_gb = common dso_local global i32 0, align 4
@driver_attr_vpd_use_hostno = common dso_local global i32 0, align 4
@driver_attr_sector_size = common dso_local global i32 0, align 4
@driver_attr_dix = common dso_local global i32 0, align 4
@driver_attr_dif = common dso_local global i32 0, align 4
@driver_attr_guard = common dso_local global i32 0, align 4
@driver_attr_ato = common dso_local global i32 0, align 4
@driver_attr_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @do_create_driverfs_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_create_driverfs_files() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_add_host)
  store i32 %2, i32* %1, align 4
  %3 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_delay)
  %4 = load i32, i32* %1, align 4
  %5 = or i32 %4, %3
  store i32 %5, i32* %1, align 4
  %6 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_dev_size_mb)
  %7 = load i32, i32* %1, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %1, align 4
  %9 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_dsense)
  %10 = load i32, i32* %1, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_every_nth)
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_fake_rw)
  %16 = load i32, i32* %1, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %1, align 4
  %18 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_max_luns)
  %19 = load i32, i32* %1, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %1, align 4
  %21 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_max_queue)
  %22 = load i32, i32* %1, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %1, align 4
  %24 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_no_lun_0)
  %25 = load i32, i32* %1, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %1, align 4
  %27 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_no_uld)
  %28 = load i32, i32* %1, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %1, align 4
  %30 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_num_parts)
  %31 = load i32, i32* %1, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %1, align 4
  %33 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_num_tgts)
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %1, align 4
  %36 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_ptype)
  %37 = load i32, i32* %1, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %1, align 4
  %39 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_opts)
  %40 = load i32, i32* %1, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %1, align 4
  %42 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_scsi_level)
  %43 = load i32, i32* %1, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %1, align 4
  %45 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_virtual_gb)
  %46 = load i32, i32* %1, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %1, align 4
  %48 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_vpd_use_hostno)
  %49 = load i32, i32* %1, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %1, align 4
  %51 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_sector_size)
  %52 = load i32, i32* %1, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %1, align 4
  %54 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_dix)
  %55 = load i32, i32* %1, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %1, align 4
  %57 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_dif)
  %58 = load i32, i32* %1, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %1, align 4
  %60 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_guard)
  %61 = load i32, i32* %1, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %1, align 4
  %63 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_ato)
  %64 = load i32, i32* %1, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %1, align 4
  %66 = call i32 @driver_create_file(i32* @sdebug_driverfs_driver, i32* @driver_attr_map)
  %67 = load i32, i32* %1, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %1, align 4
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare dso_local i32 @driver_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
