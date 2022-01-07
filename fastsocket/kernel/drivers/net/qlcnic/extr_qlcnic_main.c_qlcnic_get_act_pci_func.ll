; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_get_act_pci_func.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_get_act_pci_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.qlcnic_pci_info = type { i32 }

@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_NIU_MAX_GBE_PORTS = common dso_local global i32 0, align 4
@QLCNIC_NIU_MAX_XG_PORTS = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@QLCNIC_MAX_PCI_FUNC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_get_act_pci_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_act_pci_func(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_pci_info*, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %31, label %12

12:                                               ; preds = %1
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %30 [
    i32 129, label %18
    i32 128, label %24
  ]

18:                                               ; preds = %12
  %19 = load i32, i32* @QLCNIC_NIU_MAX_GBE_PORTS, align 4
  %20 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 8
  br label %30

24:                                               ; preds = %12
  %25 = load i32, i32* @QLCNIC_NIU_MAX_XG_PORTS, align 4
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i32 %25, i32* %29, align 8
  br label %30

30:                                               ; preds = %12, %24, %18
  store i32 0, i32* %2, align 4
  br label %56

31:                                               ; preds = %1
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %56

40:                                               ; preds = %31
  %41 = load i32, i32* @QLCNIC_MAX_PCI_FUNC, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.qlcnic_pci_info* @kcalloc(i32 %41, i32 4, i32 %42)
  store %struct.qlcnic_pci_info* %43, %struct.qlcnic_pci_info** %4, align 8
  %44 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %45 = icmp ne %struct.qlcnic_pci_info* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %56

49:                                               ; preds = %40
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %52 = call i32 @qlcnic_get_pci_info(%struct.qlcnic_adapter* %50, %struct.qlcnic_pci_info* %51)
  store i32 %52, i32* %5, align 4
  %53 = load %struct.qlcnic_pci_info*, %struct.qlcnic_pci_info** %4, align 8
  %54 = call i32 @kfree(%struct.qlcnic_pci_info* %53)
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %49, %46, %39, %30
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.qlcnic_pci_info* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @qlcnic_get_pci_info(%struct.qlcnic_adapter*, %struct.qlcnic_pci_info*) #1

declare dso_local i32 @kfree(%struct.qlcnic_pci_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
