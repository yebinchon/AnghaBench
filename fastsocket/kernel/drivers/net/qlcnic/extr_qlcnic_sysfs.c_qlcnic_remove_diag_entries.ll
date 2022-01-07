; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_remove_diag_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sysfs.c_qlcnic_remove_diag_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@bin_attr_port_stats = common dso_local global i32 0, align 4
@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@dev_attr_diag_mode = common dso_local global i32 0, align 4
@bin_attr_crb = common dso_local global i32 0, align 4
@bin_attr_mem = common dso_local global i32 0, align 4
@dev_attr_beacon = common dso_local global i32 0, align 4
@dev_attr_max_rss = common dso_local global i32 0, align 4
@dev_attr_elb_mode = common dso_local global i32 0, align 4
@bin_attr_pci_config = common dso_local global i32 0, align 4
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@bin_attr_esw_config = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@bin_attr_npar_config = common dso_local global i32 0, align 4
@bin_attr_pm_config = common dso_local global i32 0, align 4
@bin_attr_esw_stats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_remove_diag_entries(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %4 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %4, i32 0, i32 2
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @device_remove_bin_file(%struct.device* %8, i32* @bin_attr_port_stats)
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @device_remove_file(%struct.device* %19, i32* @dev_attr_diag_mode)
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @device_remove_bin_file(%struct.device* %21, i32* @bin_attr_crb)
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call i32 @device_remove_bin_file(%struct.device* %23, i32* @bin_attr_mem)
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 @device_remove_file(%struct.device* %25, i32* @dev_attr_beacon)
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = call i32 @device_remove_file(%struct.device* %27, i32* @dev_attr_max_rss)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = call i32 @device_remove_file(%struct.device* %29, i32* @dev_attr_elb_mode)
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = call i32 @device_remove_bin_file(%struct.device* %31, i32* @bin_attr_pci_config)
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %18
  br label %58

40:                                               ; preds = %18
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 @device_remove_bin_file(%struct.device* %41, i32* @bin_attr_esw_config)
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %58

51:                                               ; preds = %40
  %52 = load %struct.device*, %struct.device** %3, align 8
  %53 = call i32 @device_remove_bin_file(%struct.device* %52, i32* @bin_attr_npar_config)
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = call i32 @device_remove_bin_file(%struct.device* %54, i32* @bin_attr_pm_config)
  %56 = load %struct.device*, %struct.device** %3, align 8
  %57 = call i32 @device_remove_bin_file(%struct.device* %56, i32* @bin_attr_esw_stats)
  br label %58

58:                                               ; preds = %51, %50, %39, %17
  ret void
}

declare dso_local i32 @device_remove_bin_file(%struct.device*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
