; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_complete_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_complete_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { i32, %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32 (%struct.bnx2x_raw_obj*)* }
%union.event_ring_elem = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@RAMROD_CONT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %union.event_ring_elem*, i64*)* @bnx2x_complete_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_complete_vlan_mac(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %union.event_ring_elem* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca %union.event_ring_elem*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.bnx2x_raw_obj*, align 8
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store %union.event_ring_elem* %2, %union.event_ring_elem** %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %12, i32 0, i32 1
  store %struct.bnx2x_raw_obj* %13, %struct.bnx2x_raw_obj** %10, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %15 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %16 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %15, i32 0, i32 0
  %17 = call i32 @bnx2x_exe_queue_reset_pending(%struct.bnx2x* %14, i32* %16)
  %18 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %19 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %18, i32 0, i32 0
  %20 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %19, align 8
  %21 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %10, align 8
  %22 = call i32 %20(%struct.bnx2x_raw_obj* %21)
  %23 = load %union.event_ring_elem*, %union.event_ring_elem** %8, align 8
  %24 = bitcast %union.event_ring_elem* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %54

31:                                               ; preds = %4
  %32 = load i32, i32* @RAMROD_CONT, align 4
  %33 = load i64*, i64** %9, align 8
  %34 = call i64 @test_bit(i32 %32, i64* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %38 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %39 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %38, i32 0, i32 0
  %40 = load i64*, i64** %9, align 8
  %41 = call i32 @bnx2x_exe_queue_step(%struct.bnx2x* %37, i32* %39, i64* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %5, align 4
  br label %54

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %49 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %48, i32 0, i32 0
  %50 = call i32 @bnx2x_exe_queue_empty(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 1, i32* %5, align 4
  br label %54

53:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %53, %52, %44, %28
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @bnx2x_exe_queue_reset_pending(%struct.bnx2x*, i32*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @bnx2x_exe_queue_step(%struct.bnx2x*, i32*, i64*) #1

declare dso_local i32 @bnx2x_exe_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
