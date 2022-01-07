; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_delete_default.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_vxlan.c_vxlan_fdb_delete_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%struct.vxlan_fdb = type { i32 }

@all_zeros_mac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxlan_dev*)* @vxlan_fdb_delete_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxlan_fdb_delete_default(%struct.vxlan_dev* %0) #0 {
  %2 = alloca %struct.vxlan_dev*, align 8
  %3 = alloca %struct.vxlan_fdb*, align 8
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %2, align 8
  %4 = load %struct.vxlan_dev*, %struct.vxlan_dev** %2, align 8
  %5 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.vxlan_dev*, %struct.vxlan_dev** %2, align 8
  %8 = load i32, i32* @all_zeros_mac, align 4
  %9 = call %struct.vxlan_fdb* @__vxlan_find_mac(%struct.vxlan_dev* %7, i32 %8)
  store %struct.vxlan_fdb* %9, %struct.vxlan_fdb** %3, align 8
  %10 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %3, align 8
  %11 = icmp ne %struct.vxlan_fdb* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.vxlan_dev*, %struct.vxlan_dev** %2, align 8
  %14 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %3, align 8
  %15 = call i32 @vxlan_fdb_destroy(%struct.vxlan_dev* %13, %struct.vxlan_fdb* %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.vxlan_dev*, %struct.vxlan_dev** %2, align 8
  %18 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock_bh(i32* %18)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.vxlan_fdb* @__vxlan_find_mac(%struct.vxlan_dev*, i32) #1

declare dso_local i32 @vxlan_fdb_destroy(%struct.vxlan_dev*, %struct.vxlan_fdb*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
