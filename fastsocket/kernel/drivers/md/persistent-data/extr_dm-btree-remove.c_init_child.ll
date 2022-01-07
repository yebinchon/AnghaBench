; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_init_child.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_init_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.dm_btree_value_type = type { i32 }
%struct.btree_node = type { i32 }
%struct.child = type { i32, i32, i32 }

@btree_node_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_btree_info*, %struct.dm_btree_value_type*, %struct.btree_node*, i32, %struct.child*)* @init_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_child(%struct.dm_btree_info* %0, %struct.dm_btree_value_type* %1, %struct.btree_node* %2, i32 %3, %struct.child* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_btree_info*, align 8
  %8 = alloca %struct.dm_btree_value_type*, align 8
  %9 = alloca %struct.btree_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.child*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %7, align 8
  store %struct.dm_btree_value_type* %1, %struct.dm_btree_value_type** %8, align 8
  store %struct.btree_node* %2, %struct.btree_node** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.child* %4, %struct.child** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.child*, %struct.child** %11, align 8
  %17 = getelementptr inbounds %struct.child, %struct.child* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @value64(%struct.btree_node* %18, i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %22 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.child*, %struct.child** %11, align 8
  %26 = getelementptr inbounds %struct.child, %struct.child* %25, i32 0, i32 1
  %27 = call i32 @dm_tm_shadow_block(i32 %23, i32 %24, i32* @btree_node_validator, i32* %26, i32* %13)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %6, align 4
  br label %60

32:                                               ; preds = %5
  %33 = load %struct.child*, %struct.child** %11, align 8
  %34 = getelementptr inbounds %struct.child, %struct.child* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dm_block_data(i32 %35)
  %37 = load %struct.child*, %struct.child** %11, align 8
  %38 = getelementptr inbounds %struct.child, %struct.child* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %43 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.child*, %struct.child** %11, align 8
  %46 = getelementptr inbounds %struct.child, %struct.child* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %49 = call i32 @inc_children(i32 %44, i32 %47, %struct.dm_btree_value_type* %48)
  br label %50

50:                                               ; preds = %41, %32
  %51 = load %struct.child*, %struct.child** %11, align 8
  %52 = getelementptr inbounds %struct.child, %struct.child* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dm_block_location(i32 %53)
  %55 = call i32 @cpu_to_le64(i32 %54)
  %56 = load %struct.btree_node*, %struct.btree_node** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i64 @value_ptr(%struct.btree_node* %56, i32 %57)
  %59 = inttoptr i64 %58 to i32*
  store i32 %55, i32* %59, align 4
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %50, %30
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i32 @dm_tm_shadow_block(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dm_block_data(i32) #1

declare dso_local i32 @inc_children(i32, i32, %struct.dm_btree_value_type*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @dm_block_location(i32) #1

declare dso_local i64 @value_ptr(%struct.btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
