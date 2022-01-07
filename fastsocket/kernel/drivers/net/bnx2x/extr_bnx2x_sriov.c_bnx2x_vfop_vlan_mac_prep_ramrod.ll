; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_vlan_mac_prep_ramrod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_vlan_mac_prep_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_vlan_mac_ramrod_params = type { i32, %struct.bnx2x_vlan_mac_data }
%struct.bnx2x_vlan_mac_data = type { i32, i32 }
%struct.bnx2x_vfop_vlan_mac_flags = type { i64, i64, i64, i64 }

@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@RAMROD_EXEC = common dso_local global i32 0, align 4
@BNX2X_DONT_CONSUME_CAM_CREDIT = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_DEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vfop_vlan_mac_flags*)* @bnx2x_vfop_vlan_mac_prep_ramrod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vfop_vlan_mac_prep_ramrod(%struct.bnx2x_vlan_mac_ramrod_params* %0, %struct.bnx2x_vfop_vlan_mac_flags* %1) #0 {
  %3 = alloca %struct.bnx2x_vlan_mac_ramrod_params*, align 8
  %4 = alloca %struct.bnx2x_vfop_vlan_mac_flags*, align 8
  %5 = alloca %struct.bnx2x_vlan_mac_data*, align 8
  store %struct.bnx2x_vlan_mac_ramrod_params* %0, %struct.bnx2x_vlan_mac_ramrod_params** %3, align 8
  store %struct.bnx2x_vfop_vlan_mac_flags* %1, %struct.bnx2x_vfop_vlan_mac_flags** %4, align 8
  %6 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %6, i32 0, i32 1
  store %struct.bnx2x_vlan_mac_data* %7, %struct.bnx2x_vlan_mac_data** %5, align 8
  %8 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %3, align 8
  %9 = call i32 @memset(%struct.bnx2x_vlan_mac_ramrod_params* %8, i32 0, i32 12)
  %10 = load %struct.bnx2x_vfop_vlan_mac_flags*, %struct.bnx2x_vfop_vlan_mac_flags** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2x_vfop_vlan_mac_flags, %struct.bnx2x_vfop_vlan_mac_flags* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %16 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %16, i32 0, i32 0
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.bnx2x_vfop_vlan_mac_flags*, %struct.bnx2x_vfop_vlan_mac_flags** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vfop_vlan_mac_flags, %struct.bnx2x_vfop_vlan_mac_flags* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i32, i32* @RAMROD_EXEC, align 4
  %26 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %3, align 8
  %27 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %26, i32 0, i32 0
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.bnx2x_vfop_vlan_mac_flags*, %struct.bnx2x_vfop_vlan_mac_flags** %4, align 8
  %31 = getelementptr inbounds %struct.bnx2x_vfop_vlan_mac_flags, %struct.bnx2x_vfop_vlan_mac_flags* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* @BNX2X_DONT_CONSUME_CAM_CREDIT, align 4
  %36 = load %struct.bnx2x_vlan_mac_data*, %struct.bnx2x_vlan_mac_data** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2x_vlan_mac_data, %struct.bnx2x_vlan_mac_data* %36, i32 0, i32 1
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.bnx2x_vfop_vlan_mac_flags*, %struct.bnx2x_vfop_vlan_mac_flags** %4, align 8
  %41 = getelementptr inbounds %struct.bnx2x_vfop_vlan_mac_flags, %struct.bnx2x_vfop_vlan_mac_flags* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  br label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @BNX2X_VLAN_MAC_DEL, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.bnx2x_vlan_mac_data*, %struct.bnx2x_vlan_mac_data** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2x_vlan_mac_data, %struct.bnx2x_vlan_mac_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local i32 @memset(%struct.bnx2x_vlan_mac_ramrod_params*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
