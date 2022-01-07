; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_rebalance_children.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_rebalance_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32 }
%struct.dm_btree_info = type { i32 }
%struct.dm_btree_value_type = type { i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dm_block = type { i32 }

@btree_node_validator = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32)* @rebalance_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rebalance_children(%struct.shadow_spine* %0, %struct.dm_btree_info* %1, %struct.dm_btree_value_type* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.shadow_spine*, align 8
  %7 = alloca %struct.dm_btree_info*, align 8
  %8 = alloca %struct.dm_btree_value_type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btree_node*, align 8
  %16 = alloca %struct.dm_block*, align 8
  %17 = alloca i32, align 4
  store %struct.shadow_spine* %0, %struct.shadow_spine** %6, align 8
  store %struct.dm_btree_info* %1, %struct.dm_btree_info** %7, align 8
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %19 = call %struct.dm_block* @shadow_current(%struct.shadow_spine* %18)
  %20 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %19)
  store %struct.btree_node* %20, %struct.btree_node** %15, align 8
  %21 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %22 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %65

27:                                               ; preds = %4
  %28 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %29 = call i32 @value64(%struct.btree_node* %28, i32 0)
  store i32 %29, i32* %17, align 4
  %30 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %31 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %17, align 4
  %34 = call i32 @dm_tm_read_lock(i32 %32, i32 %33, i32* @btree_node_validator, %struct.dm_block** %16)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %5, align 4
  br label %127

39:                                               ; preds = %27
  %40 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %41 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %42 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %41)
  %43 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %44 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dm_tm_get_bm(i32 %45)
  %47 = call i32 @dm_bm_block_size(i32 %46)
  %48 = call i32 @memcpy(%struct.btree_node* %40, %struct.btree_node* %42, i32 %47)
  %49 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %50 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %53 = call i32 @dm_tm_unlock(i32 %51, %struct.dm_block* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %39
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %127

58:                                               ; preds = %39
  %59 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %60 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dm_block*, %struct.dm_block** %16, align 8
  %63 = call i32 @dm_block_location(%struct.dm_block* %62)
  %64 = call i32 @dm_tm_dec(i32 %61, i32 %63)
  store i32 0, i32* %5, align 4
  br label %127

65:                                               ; preds = %4
  %66 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @lower_bound(%struct.btree_node* %66, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @ENODATA, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %127

74:                                               ; preds = %65
  %75 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %76 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @value64(%struct.btree_node* %78, i32 %79)
  %81 = call i32 @get_nr_entries(i32 %77, i32 %80, i32* %14)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %127

86:                                               ; preds = %74
  %87 = load i32, i32* %10, align 4
  %88 = icmp sgt i32 %87, 0
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %92 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = sub nsw i32 %95, 1
  %97 = icmp slt i32 %90, %96
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %86
  %102 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %103 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %104 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @rebalance2(%struct.shadow_spine* %102, %struct.dm_btree_info* %103, %struct.dm_btree_value_type* %104, i32 %105)
  store i32 %106, i32* %11, align 4
  br label %125

107:                                              ; preds = %86
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %107
  %111 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %112 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %113 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sub nsw i32 %114, 1
  %116 = call i32 @rebalance2(%struct.shadow_spine* %111, %struct.dm_btree_info* %112, %struct.dm_btree_value_type* %113, i32 %115)
  store i32 %116, i32* %11, align 4
  br label %124

117:                                              ; preds = %107
  %118 = load %struct.shadow_spine*, %struct.shadow_spine** %6, align 8
  %119 = load %struct.dm_btree_info*, %struct.dm_btree_info** %7, align 8
  %120 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sub nsw i32 %121, 1
  %123 = call i32 @rebalance3(%struct.shadow_spine* %118, %struct.dm_btree_info* %119, %struct.dm_btree_value_type* %120, i32 %122)
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %117, %110
  br label %125

125:                                              ; preds = %124, %101
  %126 = load i32, i32* %11, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %84, %71, %58, %56, %37
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local %struct.dm_block* @shadow_current(%struct.shadow_spine*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i32 @dm_tm_read_lock(i32, i32, i32*, %struct.dm_block**) #1

declare dso_local i32 @memcpy(%struct.btree_node*, %struct.btree_node*, i32) #1

declare dso_local i32 @dm_bm_block_size(i32) #1

declare dso_local i32 @dm_tm_get_bm(i32) #1

declare dso_local i32 @dm_tm_unlock(i32, %struct.dm_block*) #1

declare dso_local i32 @dm_tm_dec(i32, i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

declare dso_local i32 @lower_bound(%struct.btree_node*, i32) #1

declare dso_local i32 @get_nr_entries(i32, i32, i32*) #1

declare dso_local i32 @rebalance2(%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32) #1

declare dso_local i32 @rebalance3(%struct.shadow_spine*, %struct.dm_btree_info*, %struct.dm_btree_value_type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
