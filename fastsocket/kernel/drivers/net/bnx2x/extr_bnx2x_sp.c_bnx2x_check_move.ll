; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_check_move.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_check_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, %union.bnx2x_classification_ramrod_data*)*, %struct.bnx2x_vlan_mac_registry_elem* (%struct.bnx2x.1*, %struct.bnx2x_vlan_mac_obj*, %union.bnx2x_classification_ramrod_data*)* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_vlan_mac_registry_elem = type { i32 }
%struct.bnx2x.1 = type opaque
%union.bnx2x_classification_ramrod_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj*, %union.bnx2x_classification_ramrod_data*)* @bnx2x_check_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_check_move(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj* %2, %union.bnx2x_classification_ramrod_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %9 = alloca %union.bnx2x_classification_ramrod_data*, align 8
  %10 = alloca %struct.bnx2x_vlan_mac_registry_elem*, align 8
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store %struct.bnx2x_vlan_mac_obj* %2, %struct.bnx2x_vlan_mac_obj** %8, align 8
  store %union.bnx2x_classification_ramrod_data* %3, %union.bnx2x_classification_ramrod_data** %9, align 8
  %12 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %12, i32 0, i32 1
  %14 = load %struct.bnx2x_vlan_mac_registry_elem* (%struct.bnx2x.1*, %struct.bnx2x_vlan_mac_obj*, %union.bnx2x_classification_ramrod_data*)*, %struct.bnx2x_vlan_mac_registry_elem* (%struct.bnx2x.1*, %struct.bnx2x_vlan_mac_obj*, %union.bnx2x_classification_ramrod_data*)** %13, align 8
  %15 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %16 = bitcast %struct.bnx2x* %15 to %struct.bnx2x.1*
  %17 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %18 = load %union.bnx2x_classification_ramrod_data*, %union.bnx2x_classification_ramrod_data** %9, align 8
  %19 = call %struct.bnx2x_vlan_mac_registry_elem* %14(%struct.bnx2x.1* %16, %struct.bnx2x_vlan_mac_obj* %17, %union.bnx2x_classification_ramrod_data* %18)
  store %struct.bnx2x_vlan_mac_registry_elem* %19, %struct.bnx2x_vlan_mac_registry_elem** %10, align 8
  %20 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %20, i32 0, i32 0
  %22 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, %union.bnx2x_classification_ramrod_data*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_vlan_mac_obj*, %union.bnx2x_classification_ramrod_data*)** %21, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = bitcast %struct.bnx2x* %23 to %struct.bnx2x.0*
  %25 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %8, align 8
  %26 = load %union.bnx2x_classification_ramrod_data*, %union.bnx2x_classification_ramrod_data** %9, align 8
  %27 = call i32 %22(%struct.bnx2x.0* %24, %struct.bnx2x_vlan_mac_obj* %25, %union.bnx2x_classification_ramrod_data* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load %struct.bnx2x_vlan_mac_registry_elem*, %struct.bnx2x_vlan_mac_registry_elem** %10, align 8
  %32 = icmp ne %struct.bnx2x_vlan_mac_registry_elem* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %4
  store i32 0, i32* %5, align 4
  br label %35

34:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
