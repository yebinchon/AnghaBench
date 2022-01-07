; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_wait_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_wait_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { %struct.bnx2x_raw_obj, %struct.bnx2x_exe_queue_obj }
%struct.bnx2x_raw_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_raw_obj*)* }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_exe_queue_obj = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*)* @bnx2x_wait_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_wait_vlan_mac(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_exe_queue_obj*, align 8
  %9 = alloca %struct.bnx2x_raw_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %5, align 8
  store i32 5000, i32* %6, align 4
  %10 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %5, align 8
  %11 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %10, i32 0, i32 1
  store %struct.bnx2x_exe_queue_obj* %11, %struct.bnx2x_exe_queue_obj** %8, align 8
  %12 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %12, i32 0, i32 0
  store %struct.bnx2x_raw_obj* %13, %struct.bnx2x_raw_obj** %9, align 8
  br label %14

14:                                               ; preds = %37, %2
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %15, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %14
  %19 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %20 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %19, i32 0, i32 0
  %21 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_raw_obj*)** %20, align 8
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = bitcast %struct.bnx2x* %22 to %struct.bnx2x.0*
  %24 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %9, align 8
  %25 = call i32 %21(%struct.bnx2x.0* %23, %struct.bnx2x_raw_obj* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %41

30:                                               ; preds = %18
  %31 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %8, align 8
  %32 = call i32 @bnx2x_exe_queue_empty(%struct.bnx2x_exe_queue_obj* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %41

37:                                               ; preds = %34
  br label %14

38:                                               ; preds = %14
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %36, %28
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @bnx2x_exe_queue_empty(%struct.bnx2x_exe_queue_obj*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
