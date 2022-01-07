; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32, i32 }
%struct.vxlan_fdb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"delete %pM\0A\00", align 1
@RTM_DELNEIGH = common dso_local global i32 0, align 4
@vxlan_fdb_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_dev*, %struct.vxlan_fdb*)* @vxlan_fdb_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_fdb_destroy(%struct.vxlan_dev* %0, %struct.vxlan_fdb* %1) #0 {
  %3 = alloca %struct.vxlan_dev*, align 8
  %4 = alloca %struct.vxlan_fdb*, align 8
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %3, align 8
  store %struct.vxlan_fdb* %1, %struct.vxlan_fdb** %4, align 8
  %5 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %6 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %4, align 8
  %9 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @netdev_dbg(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.vxlan_dev*, %struct.vxlan_dev** %3, align 8
  %17 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %4, align 8
  %18 = load i32, i32* @RTM_DELNEIGH, align 4
  %19 = call i32 @vxlan_fdb_notify(%struct.vxlan_dev* %16, %struct.vxlan_fdb* %17, i32 %18)
  %20 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %4, align 8
  %21 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %20, i32 0, i32 1
  %22 = call i32 @hlist_del_rcu(i32* %21)
  %23 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %4, align 8
  %24 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %23, i32 0, i32 0
  %25 = load i32, i32* @vxlan_fdb_free, align 4
  %26 = call i32 @call_rcu(i32* %24, i32 %25)
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @vxlan_fdb_notify(%struct.vxlan_dev*, %struct.vxlan_fdb*, i32) #1

declare dso_local i32 @hlist_del_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
