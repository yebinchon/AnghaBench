; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_btree_insert_raw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_btree_insert_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_spine = type { i32 }
%struct.dm_btree_value_type = type { i32 }
%struct.btree_node = type { i8**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@LEAF_NODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shadow_spine*, i32, %struct.dm_btree_value_type*, i64, i32*)* @btree_insert_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btree_insert_raw(%struct.shadow_spine* %0, i32 %1, %struct.dm_btree_value_type* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.shadow_spine*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_btree_value_type*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.btree_node*, align 8
  %16 = alloca i8*, align 8
  store %struct.shadow_spine* %0, %struct.shadow_spine** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dm_btree_value_type* %2, %struct.dm_btree_value_type** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %13, align 4
  store i32 1, i32* %14, align 4
  br label %19

19:                                               ; preds = %108, %5
  %20 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.dm_btree_value_type*, %struct.dm_btree_value_type** %9, align 8
  %23 = call i32 @shadow_step(%struct.shadow_spine* %20, i32 %21, %struct.dm_btree_value_type* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %6, align 4
  br label %132

28:                                               ; preds = %19
  %29 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %30 = call i32 @shadow_current(%struct.shadow_spine* %29)
  %31 = call %struct.btree_node* @dm_block_data(i32 %30)
  store %struct.btree_node* %31, %struct.btree_node** %15, align 8
  %32 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %33 = call i64 @shadow_has_parent(%struct.shadow_spine* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load i32, i32* %13, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %35
  %39 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %40 = call i32 @shadow_current(%struct.shadow_spine* %39)
  %41 = call i64 @dm_block_location(i32 %40)
  %42 = call i8* @cpu_to_le64(i64 %41)
  store i8* %42, i8** %16, align 8
  %43 = call i32 @__dm_bless_for_disk(i8** %16)
  %44 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %45 = call i32 @shadow_parent(%struct.shadow_spine* %44)
  %46 = call %struct.btree_node* @dm_block_data(i32 %45)
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @value_ptr(%struct.btree_node* %46, i32 %47)
  %49 = call i32 @memcpy_disk(i32 %48, i8** %16, i32 8)
  br label %50

50:                                               ; preds = %38, %35, %28
  %51 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %52 = call i32 @shadow_current(%struct.shadow_spine* %51)
  %53 = call %struct.btree_node* @dm_block_data(i32 %52)
  store %struct.btree_node* %53, %struct.btree_node** %15, align 8
  %54 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %55 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %59 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %50
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @btree_split_beneath(%struct.shadow_spine* %67, i64 %68)
  store i32 %69, i32* %12, align 4
  br label %76

70:                                               ; preds = %63
  %71 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @btree_split_sibling(%struct.shadow_spine* %71, i32 %72, i32 %73, i64 %74)
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %70, %66
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %6, align 4
  br label %132

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %50
  %83 = load %struct.shadow_spine*, %struct.shadow_spine** %7, align 8
  %84 = call i32 @shadow_current(%struct.shadow_spine* %83)
  %85 = call %struct.btree_node* @dm_block_data(i32 %84)
  store %struct.btree_node* %85, %struct.btree_node** %15, align 8
  %86 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @lower_bound(%struct.btree_node* %86, i64 %87)
  store i32 %88, i32* %13, align 4
  %89 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %90 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @le32_to_cpu(i32 %92)
  %94 = load i32, i32* @LEAF_NODE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %82
  br label %112

98:                                               ; preds = %82
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i64, i64* %10, align 8
  %103 = call i8* @cpu_to_le64(i64 %102)
  %104 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %105 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %104, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 0
  store i8* %103, i8** %107, align 8
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %101, %98
  %109 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @value64(%struct.btree_node* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %19

112:                                              ; preds = %97
  %113 = load i32, i32* %13, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %112
  %116 = load %struct.btree_node*, %struct.btree_node** %15, align 8
  %117 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %116, i32 0, i32 0
  %118 = load i8**, i8*** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @le64_to_cpu(i8* %122)
  %124 = load i64, i64* %10, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %115, %112
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %129

129:                                              ; preds = %126, %115
  %130 = load i32, i32* %13, align 4
  %131 = load i32*, i32** %11, align 8
  store i32 %130, i32* %131, align 4
  store i32 0, i32* %6, align 4
  br label %132

132:                                              ; preds = %129, %79, %26
  %133 = load i32, i32* %6, align 4
  ret i32 %133
}

declare dso_local i32 @shadow_step(%struct.shadow_spine*, i32, %struct.dm_btree_value_type*) #1

declare dso_local %struct.btree_node* @dm_block_data(i32) #1

declare dso_local i32 @shadow_current(%struct.shadow_spine*) #1

declare dso_local i64 @shadow_has_parent(%struct.shadow_spine*) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @dm_block_location(i32) #1

declare dso_local i32 @__dm_bless_for_disk(i8**) #1

declare dso_local i32 @memcpy_disk(i32, i8**, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @shadow_parent(%struct.shadow_spine*) #1

declare dso_local i32 @btree_split_beneath(%struct.shadow_spine*, i64) #1

declare dso_local i32 @btree_split_sibling(%struct.shadow_spine*, i32, i32, i64) #1

declare dso_local i32 @lower_bound(%struct.btree_node*, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @value64(%struct.btree_node*, i32) #1

declare dso_local i64 @le64_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
