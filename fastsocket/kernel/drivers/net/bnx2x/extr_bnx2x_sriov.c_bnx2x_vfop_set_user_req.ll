; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_set_user_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sriov.c_bnx2x_vfop_set_user_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vfop_filter = type { i32, i32, i32, i64 }
%struct.bnx2x_vlan_mac_data = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BNX2X_VLAN_MAC_ADD = common dso_local global i32 0, align 4
@BNX2X_VLAN_MAC_DEL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid filter type, skipping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_vfop_filter*, %struct.bnx2x_vlan_mac_data*)* @bnx2x_vfop_set_user_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vfop_set_user_req(%struct.bnx2x* %0, %struct.bnx2x_vfop_filter* %1, %struct.bnx2x_vlan_mac_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_vfop_filter*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_data*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_vfop_filter* %1, %struct.bnx2x_vfop_filter** %6, align 8
  store %struct.bnx2x_vlan_mac_data* %2, %struct.bnx2x_vlan_mac_data** %7, align 8
  %8 = load %struct.bnx2x_vfop_filter*, %struct.bnx2x_vfop_filter** %6, align 8
  %9 = getelementptr inbounds %struct.bnx2x_vfop_filter, %struct.bnx2x_vfop_filter* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @BNX2X_VLAN_MAC_ADD, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @BNX2X_VLAN_MAC_DEL, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  %18 = load %struct.bnx2x_vlan_mac_data*, %struct.bnx2x_vlan_mac_data** %7, align 8
  %19 = getelementptr inbounds %struct.bnx2x_vlan_mac_data, %struct.bnx2x_vlan_mac_data* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bnx2x_vfop_filter*, %struct.bnx2x_vfop_filter** %6, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vfop_filter, %struct.bnx2x_vfop_filter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %42 [
    i32 129, label %23
    i32 128, label %34
  ]

23:                                               ; preds = %16
  %24 = load %struct.bnx2x_vlan_mac_data*, %struct.bnx2x_vlan_mac_data** %7, align 8
  %25 = getelementptr inbounds %struct.bnx2x_vlan_mac_data, %struct.bnx2x_vlan_mac_data* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bnx2x_vfop_filter*, %struct.bnx2x_vfop_filter** %6, align 8
  %30 = getelementptr inbounds %struct.bnx2x_vfop_filter, %struct.bnx2x_vfop_filter* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %28, i32 %31, i32 %32)
  br label %44

34:                                               ; preds = %16
  %35 = load %struct.bnx2x_vfop_filter*, %struct.bnx2x_vfop_filter** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2x_vfop_filter, %struct.bnx2x_vfop_filter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bnx2x_vlan_mac_data*, %struct.bnx2x_vlan_mac_data** %7, align 8
  %39 = getelementptr inbounds %struct.bnx2x_vlan_mac_data, %struct.bnx2x_vlan_mac_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  br label %44

42:                                               ; preds = %16
  %43 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %45

44:                                               ; preds = %34, %23
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %42
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
