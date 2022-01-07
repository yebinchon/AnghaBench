; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_dev.c_enic_dev_set_ig_vlan_rewrite_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_dev.c_enic_dev_set_ig_vlan_rewrite_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32 }

@IG_VLAN_REWRITE_MODE_PRIORITY_TAG_DEFAULT_VLAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enic_dev_set_ig_vlan_rewrite_mode(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %4 = load %struct.enic*, %struct.enic** %2, align 8
  %5 = getelementptr inbounds %struct.enic, %struct.enic* %4, i32 0, i32 0
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.enic*, %struct.enic** %2, align 8
  %8 = getelementptr inbounds %struct.enic, %struct.enic* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IG_VLAN_REWRITE_MODE_PRIORITY_TAG_DEFAULT_VLAN, align 4
  %11 = call i32 @vnic_dev_set_ig_vlan_rewrite_mode(i32 %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.enic*, %struct.enic** %2, align 8
  %13 = getelementptr inbounds %struct.enic, %struct.enic* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock(i32* %13)
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vnic_dev_set_ig_vlan_rewrite_mode(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
