; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_rebalance2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_rebalance2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32 }
%struct.dm_btree_info = type { i32 }
%struct.dm_btree_value_type = type { i32 }
%struct.btree_node = type { i32 }
%struct.child = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32)* @rebalance2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebalance2(%struct.shadow_spine* %0, %struct.dm_btree_info* %1, %struct.dm_btree_value_type* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shadow_spine*, align 8
  %7 = alloca %struct.dm_btree_info*, align 8
  %8 = alloca %struct.dm_btree_value_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btree_node*, align 8
  %12 = alloca %struct.child, align 4
  %13 = alloca %struct.child, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %6, align 8
  store %struct.dm_btree_info* %1, %struct.dm_btree_info** %7, align 8
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %15 = call i32 @shadow_current(%struct.shadow_spine* %14)
  %16 = call %struct.btree_node* @dm_block_data(i32 %15)
  store %struct.btree_node* %16, %struct.btree_node** %11, align 8
  %17 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %18 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %19 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @init_child(%struct.dm_btree_info* %17, %struct.dm_btree_value_type* %18, %struct.btree_node* %19, i32 %20, %struct.child* %12)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %54

26:                                               ; preds = %4
  %27 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %28 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %29 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add i32 %30, 1
  %32 = call i32 @init_child(%struct.dm_btree_info* %27, %struct.dm_btree_value_type* %28, %struct.btree_node* %29, i32 %31, %struct.child* %13)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %37 = call i32 @exit_child(%struct.dm_btree_info* %36, %struct.child* %12)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %54

39:                                               ; preds = %26
  %40 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %41 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %42 = call i32 @__rebalance2(%struct.dm_btree_info* %40, %struct.btree_node* %41, %struct.child* %12, %struct.child* %13)
  %43 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %44 = call i32 @exit_child(%struct.dm_btree_info* %43, %struct.child* %12)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %49 = call i32 @exit_child(%struct.dm_btree_info* %48, %struct.child* %13)
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %53 = call i32 @exit_child(%struct.dm_btree_info* %52, %struct.child* %13)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %47, %35, %24
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @init_child(%struct.dm_btree_info*, %struct.dm_btree_value_type*, %struct.btree_node*, i32, %struct.child*) #1

declare dso_local i32 @exit_child(%struct.dm_btree_info*, %struct.child*) #1

declare dso_local i32 @__rebalance2(%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
