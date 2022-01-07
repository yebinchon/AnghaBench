; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_rebalance3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_rebalance3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32 }
%struct.dm_btree_info = type { i32 }
%struct.dm_btree_value_type = type { i32 }
%struct.btree_node = type { i32 }
%struct.child = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32)* @rebalance3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebalance3(%struct.shadow_spine* %0, %struct.dm_btree_info* %1, %struct.dm_btree_value_type* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shadow_spine*, align 8
  %7 = alloca %struct.dm_btree_info*, align 8
  %8 = alloca %struct.dm_btree_value_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.btree_node*, align 8
  %12 = alloca %struct.child, align 4
  %13 = alloca %struct.child, align 4
  %14 = alloca %struct.child, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %6, align 8
  store %struct.dm_btree_info* %1, %struct.dm_btree_info** %7, align 8
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %16 = call i32 @shadow_current(%struct.shadow_spine* %15)
  %17 = call %struct.btree_node* @dm_block_data(i32 %16)
  store %struct.btree_node* %17, %struct.btree_node** %11, align 8
  %18 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %19 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %20 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @init_child(%struct.dm_btree_info* %18, %struct.dm_btree_value_type* %19, %struct.btree_node* %20, i32 %21, %struct.child* %12)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %86

27:                                               ; preds = %4
  %28 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %29 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %30 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 1
  %33 = call i32 @init_child(%struct.dm_btree_info* %28, %struct.dm_btree_value_type* %29, %struct.btree_node* %30, i32 %32, %struct.child* %13)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %27
  %37 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %38 = call i32 @exit_child(%struct.dm_btree_info* %37, %struct.child* %12)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %86

40:                                               ; preds = %27
  %41 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %42 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %43 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 2
  %46 = call i32 @init_child(%struct.dm_btree_info* %41, %struct.dm_btree_value_type* %42, %struct.btree_node* %43, i32 %45, %struct.child* %14)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %51 = call i32 @exit_child(%struct.dm_btree_info* %50, %struct.child* %12)
  %52 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %53 = call i32 @exit_child(%struct.dm_btree_info* %52, %struct.child* %13)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %5, align 4
  br label %86

55:                                               ; preds = %40
  %56 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %57 = load %struct.btree_node*, %struct.btree_node** %11, align 8
  %58 = call i32 @__rebalance3(%struct.dm_btree_info* %56, %struct.btree_node* %57, %struct.child* %12, %struct.child* %13, %struct.child* %14)
  %59 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %60 = call i32 @exit_child(%struct.dm_btree_info* %59, %struct.child* %12)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %55
  %64 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %65 = call i32 @exit_child(%struct.dm_btree_info* %64, %struct.child* %13)
  %66 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %67 = call i32 @exit_child(%struct.dm_btree_info* %66, %struct.child* %14)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %86

69:                                               ; preds = %55
  %70 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %71 = call i32 @exit_child(%struct.dm_btree_info* %70, %struct.child* %13)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %76 = call i32 @exit_child(%struct.dm_btree_info* %75, %struct.child* %14)
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %5, align 4
  br label %86

78:                                               ; preds = %69
  %79 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %80 = call i32 @exit_child(%struct.dm_btree_info* %79, %struct.child* %14)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %86

85:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %83, %74, %63, %49, %36, %25
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @init_child(%struct.dm_btree_info*, %struct.dm_btree_value_type*, %struct.btree_node*, i32, %struct.child*) #1

declare dso_local i32 @exit_child(%struct.dm_btree_info*, %struct.child*) #1

declare dso_local i32 @__rebalance3(%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*, %struct.child*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
