; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_init_shadow_spine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_init_shadow_spine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i64, %struct.dm_btree_info* }
%struct.dm_btree_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_shadow_spine(%struct.shadow_spine* %0, %struct.dm_btree_info* %1) #0 {
  %3 = alloca %struct.shadow_spine*, align 8
  %4 = alloca %struct.dm_btree_info*, align 8
  store %struct.shadow_spine* %0, %struct.shadow_spine** %3, align 8
  store %struct.dm_btree_info* %1, %struct.dm_btree_info** %4, align 8
  %5 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %6 = load %struct.shadow_spine*, %struct.shadow_spine** %3, align 8
  %7 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %6, i32 0, i32 1
  store %struct.dm_btree_info* %5, %struct.dm_btree_info** %7, align 8
  %8 = load %struct.shadow_spine*, %struct.shadow_spine** %3, align 8
  %9 = getelementptr inbounds %struct.shadow_spine, %struct.shadow_spine* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
