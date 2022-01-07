; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c___qlcnic_pci_sriov_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c___qlcnic_pci_sriov_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@__QLCNIC_SRIOV_ENABLE = common dso_local global i32 0, align 4
@QLCNIC_SRIOV_PF_FUNC = common dso_local global i32 0, align 4
@QLCNIC_MGMT_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32)* @__qlcnic_pci_sriov_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qlcnic_pci_sriov_enable(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @__QLCNIC_SRIOV_ENABLE, align 4
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 1
  %10 = call i32 @set_bit(i32 %7, i32* %9)
  %11 = load i32, i32* @QLCNIC_SRIOV_PF_FUNC, align 4
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @qlcnic_sriov_init(%struct.qlcnic_adapter* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %45

22:                                               ; preds = %2
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %24 = call i32 @qlcnic_sriov_pf_create_flr_queue(%struct.qlcnic_adapter* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %42

28:                                               ; preds = %22
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %30 = call i32 @qlcnic_sriov_pf_init(%struct.qlcnic_adapter* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %39

34:                                               ; preds = %28
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @qlcnic_sriov_pf_enable(%struct.qlcnic_adapter* %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %56

39:                                               ; preds = %33
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = call i32 @qlcnic_sriov_pf_del_flr_queue(%struct.qlcnic_adapter* %40)
  br label %42

42:                                               ; preds = %39, %27
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %44 = call i32 @__qlcnic_sriov_cleanup(%struct.qlcnic_adapter* %43)
  br label %45

45:                                               ; preds = %42, %21
  %46 = load i32, i32* @__QLCNIC_SRIOV_ENABLE, align 4
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 1
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load i32, i32* @QLCNIC_MGMT_FUNC, align 4
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %34
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_init(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_create_flr_queue(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_pf_init(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_pf_enable(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_sriov_pf_del_flr_queue(%struct.qlcnic_adapter*) #1

declare dso_local i32 @__qlcnic_sriov_cleanup(%struct.qlcnic_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
