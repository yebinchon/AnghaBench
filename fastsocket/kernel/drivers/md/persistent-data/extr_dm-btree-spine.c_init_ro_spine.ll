; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_init_ro_spine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_init_ro_spine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ro_spine = type { i32**, i64, %struct.dm_btree_info* }
%struct.dm_btree_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_ro_spine(%struct.ro_spine* %0, %struct.dm_btree_info* %1) #0 {
  %3 = alloca %struct.ro_spine*, align 8
  %4 = alloca %struct.dm_btree_info*, align 8
  store %struct.ro_spine* %0, %struct.ro_spine** %3, align 8
  store %struct.dm_btree_info* %1, %struct.dm_btree_info** %4, align 8
  %5 = load %struct.dm_btree_info*, %struct.dm_btree_info** %4, align 8
  %6 = load %struct.ro_spine*, %struct.ro_spine** %3, align 8
  %7 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %6, i32 0, i32 2
  store %struct.dm_btree_info* %5, %struct.dm_btree_info** %7, align 8
  %8 = load %struct.ro_spine*, %struct.ro_spine** %3, align 8
  %9 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load %struct.ro_spine*, %struct.ro_spine** %3, align 8
  %11 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %10, i32 0, i32 0
  %12 = load i32**, i32*** %11, align 8
  %13 = getelementptr inbounds i32*, i32** %12, i64 0
  store i32* null, i32** %13, align 8
  %14 = load %struct.ro_spine*, %struct.ro_spine** %3, align 8
  %15 = getelementptr inbounds %struct.ro_spine, %struct.ro_spine* %14, i32 0, i32 0
  %16 = load i32**, i32*** %15, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 1
  store i32* null, i32** %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
