; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_update_mng_vlan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_update_mng_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i64, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@E1000_MNG_DHCP_COOKIE_STATUS_VLAN = common dso_local global i32 0, align 4
@IGB_MNG_VLAN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*)* @igb_update_mng_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_update_mng_vlan(%struct.igb_adapter* %0) #0 {
  %2 = alloca %struct.igb_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %2, align 8
  %6 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %6, i32 0, i32 2
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %4, align 8
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_VLAN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @igb_vfta_set(%struct.e1000_hw* %24, i64 %25, i32 1)
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %34

30:                                               ; preds = %1
  %31 = load i64, i64* @IGB_MNG_VLAN_NONE, align 8
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @IGB_MNG_VLAN_NONE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.igb_adapter*, %struct.igb_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @vlan_group_get_device(i32 %45, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @igb_vfta_set(%struct.e1000_hw* %50, i64 %51, i32 0)
  br label %53

53:                                               ; preds = %49, %42, %38, %34
  ret void
}

declare dso_local i32 @igb_vfta_set(%struct.e1000_hw*, i64, i32) #1

declare dso_local i32 @vlan_group_get_device(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
