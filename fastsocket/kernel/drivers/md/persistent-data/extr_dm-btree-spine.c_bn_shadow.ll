; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_bn_shadow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-spine.c_bn_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.dm_btree_value_type = type { i32 }
%struct.dm_block = type { i32 }

@btree_node_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_btree_info*, i32, %struct.dm_btree_value_type*, %struct.dm_block**)* @bn_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bn_shadow(%struct.dm_btree_info* %0, i32 %1, %struct.dm_btree_value_type* %2, %struct.dm_block** %3) #0 {
  %5 = alloca %struct.dm_btree_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_btree_value_type*, align 8
  %8 = alloca %struct.dm_block**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %7, align 8
  store %struct.dm_block** %3, %struct.dm_block*** %8, align 8
  %11 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %12 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.dm_block**, %struct.dm_block*** %8, align 8
  %16 = call i32 @dm_tm_shadow_block(i32 %13, i32 %14, i32* @btree_node_validator, %struct.dm_block** %15, i32* %10)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.dm_btree_info*, %struct.dm_btree_info** %5, align 8
  %24 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dm_block**, %struct.dm_block*** %8, align 8
  %27 = load %struct.dm_block*, %struct.dm_block** %26, align 8
  %28 = call i32 @dm_block_data(%struct.dm_block* %27)
  %29 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %7, align 8
  %30 = call i32 @inc_children(i32 %25, i32 %28, %struct.dm_btree_value_type* %29)
  br label %31

31:                                               ; preds = %22, %19, %4
  %32 = load i32, i32* %9, align 4
  ret i32 %32
}

declare dso_local i32 @dm_tm_shadow_block(i32, i32, i32*, %struct.dm_block**, i32*) #1

declare dso_local i32 @inc_children(i32, i32, %struct.dm_btree_value_type*) #1

declare dso_local i32 @dm_block_data(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
