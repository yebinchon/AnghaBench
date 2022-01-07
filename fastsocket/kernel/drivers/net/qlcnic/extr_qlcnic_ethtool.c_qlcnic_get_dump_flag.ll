; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_dump_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_dump_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_dump = type { i32, i32, i64 }
%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { %struct.TYPE_4__*, i32, i64, i64 }
%struct.TYPE_4__ = type { i32, i64 }

@.str = private unnamed_addr constant [23 x i8] c"FW Dump not supported\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_dump*)* @qlcnic_get_dump_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_dump_flag(%struct.net_device* %0, %struct.ethtool_dump* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_dump*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_fw_dump*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_dump* %1, %struct.ethtool_dump** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 2
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %13, %struct.qlcnic_fw_dump** %7, align 8
  %14 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %15 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @netdev_err(i32 %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %2
  %26 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %27 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %32 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %37 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  br label %45

42:                                               ; preds = %25
  %43 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %30
  %46 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %47 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %61

53:                                               ; preds = %45
  %54 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %7, align 8
  %55 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %53, %50
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ethtool_dump*, %struct.ethtool_dump** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_dump, %struct.ethtool_dump* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %61, %18
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
