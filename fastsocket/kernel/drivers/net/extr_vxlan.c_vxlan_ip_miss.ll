; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_ip_miss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_ip_miss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32, i32 }
%struct.vxlan_rdst = type { i32, i32, i32 }

@NUD_STALE = common dso_local global i32 0, align 4
@VXLAN_N_VID = common dso_local global i32 0, align 4
@RTM_GETNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @vxlan_ip_miss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_ip_miss(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxlan_dev*, align 8
  %6 = alloca %struct.vxlan_fdb, align 4
  %7 = alloca %struct.vxlan_rdst, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.vxlan_dev* @netdev_priv(%struct.net_device* %8)
  store %struct.vxlan_dev* %9, %struct.vxlan_dev** %5, align 8
  %10 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %6, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %6, i32 0, i32 1
  %12 = load i32, i32* @NUD_STALE, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %7, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %7, i32 0, i32 1
  %15 = load i32, i32* @VXLAN_N_VID, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %7, i32 0, i32 2
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %6, i32 0, i32 0
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %7, i32 0, i32 0
  %21 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %6, i32 0, i32 0
  %22 = call i32 @list_add_rcu(i32* %20, i32* %21)
  %23 = load %struct.vxlan_dev*, %struct.vxlan_dev** %5, align 8
  %24 = load i32, i32* @RTM_GETNEIGH, align 4
  %25 = call i32 @vxlan_fdb_notify(%struct.vxlan_dev* %23, %struct.vxlan_fdb* %6, i32 %24)
  ret void
}

declare dso_local %struct.vxlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @vxlan_fdb_notify(%struct.vxlan_dev*, %struct.vxlan_fdb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
