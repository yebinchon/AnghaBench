; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_check_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_check_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_device_id = type { i32 }

@QLCNIC_FW_API = common dso_local global i32 0, align 4
@QLCNIC_DRV_OP_MODE = common dso_local global i32 0, align 4
@QLC_DEV_DRV_DEFAULT = common dso_local global i64 0, align 8
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@QLCNIC_NON_PRIV_FUNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"HAL Version: %d Non Privileged function\0A\00", align 1
@qlcnic_vf_ops = common dso_local global i32 0, align 4
@qlcnic_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.pci_device_id*)* @qlcnic_check_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_check_vf(%struct.qlcnic_adapter* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.pci_device_id*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %4, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = load i32, i32* @QLCNIC_FW_API, align 4
  %9 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %7, i32 %8)
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i8* %9, i8** %13, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = call i32 @qlcnic_get_func_no(%struct.qlcnic_adapter* %14)
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = load i32, i32* @QLCNIC_DRV_OP_MODE, align 4
  %18 = call i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %16, i32 %17)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @QLC_DEV_DRV_DEFAULT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  store i64 %24, i64* %6, align 8
  br label %33

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @QLC_DEV_GET_DRV(i64 %26, i32 %31)
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load i64, i64* @QLCNIC_NON_PRIV_FUNC, align 8
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i64 %38, i64* %42, align 8
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %44 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @dev_info(i32* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 0
  store i32* @qlcnic_vf_ops, i32** %54, align 8
  br label %58

55:                                               ; preds = %33
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %56, i32 0, i32 0
  store i32* @qlcnic_ops, i32** %57, align 8
  br label %58

58:                                               ; preds = %55, %37
  ret void
}

declare dso_local i8* @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_get_func_no(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLC_DEV_GET_DRV(i64, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
