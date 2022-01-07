; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_vf.c_e1000_init_mac_params_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_vf.c_e1000_init_mac_params_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@e1000_reset_hw_vf = common dso_local global i32 0, align 4
@e1000_init_hw_vf = common dso_local global i32 0, align 4
@e1000_check_for_link_vf = common dso_local global i32 0, align 4
@e1000_get_link_up_info_vf = common dso_local global i32 0, align 4
@e1000_update_mc_addr_list_vf = common dso_local global i32 0, align 4
@e1000_rar_set_vf = common dso_local global i32 0, align 4
@e1000_read_mac_addr_vf = common dso_local global i32 0, align 4
@e1000_set_vfta_vf = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_init_mac_params_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_init_mac_params_vf(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  store %struct.e1000_mac_info* %5, %struct.e1000_mac_info** %3, align 8
  %6 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %6, i32 0, i32 0
  store i32 128, i32* %7, align 4
  %8 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %8, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = load i32, i32* @e1000_reset_hw_vf, align 4
  %11 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %12 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 7
  store i32 %10, i32* %13, align 4
  %14 = load i32, i32* @e1000_init_hw_vf, align 4
  %15 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 6
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @e1000_check_for_link_vf, align 4
  %19 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %20 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @e1000_get_link_up_info_vf, align 4
  %23 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %24 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* @e1000_update_mc_addr_list_vf, align 4
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* @e1000_rar_set_vf, align 4
  %31 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* @e1000_read_mac_addr_vf, align 4
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* @e1000_set_vfta_vf, align 4
  %39 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
