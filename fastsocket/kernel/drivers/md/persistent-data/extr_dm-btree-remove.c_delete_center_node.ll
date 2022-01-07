; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_delete_center_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_delete_center_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_btree_info = type { i32 }
%struct.child = type { i32, i32 }
%struct.btree_node = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*, %struct.child*, %struct.btree_node*, %struct.btree_node*, %struct.btree_node*, i64, i64, i64)* @delete_center_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_center_node(%struct.dm_btree_info* %0, %struct.btree_node* %1, %struct.child* %2, %struct.child* %3, %struct.child* %4, %struct.btree_node* %5, %struct.btree_node* %6, %struct.btree_node* %7, i64 %8, i64 %9, i64 %10) #0 {
  %12 = alloca %struct.dm_btree_info*, align 8
  %13 = alloca %struct.btree_node*, align 8
  %14 = alloca %struct.child*, align 8
  %15 = alloca %struct.child*, align 8
  %16 = alloca %struct.child*, align 8
  %17 = alloca %struct.btree_node*, align 8
  %18 = alloca %struct.btree_node*, align 8
  %19 = alloca %struct.btree_node*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.dm_btree_info* %0, %struct.dm_btree_info** %12, align 8
  store %struct.btree_node* %1, %struct.btree_node** %13, align 8
  store %struct.child* %2, %struct.child** %14, align 8
  store %struct.child* %3, %struct.child** %15, align 8
  store %struct.child* %4, %struct.child** %16, align 8
  store %struct.btree_node* %5, %struct.btree_node** %17, align 8
  store %struct.btree_node* %6, %struct.btree_node** %18, align 8
  store %struct.btree_node* %7, %struct.btree_node** %19, align 8
  store i64 %8, i64* %20, align 8
  store i64 %9, i64* %21, align 8
  store i64 %10, i64* %22, align 8
  %25 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %26 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @le32_to_cpu(i32 %28)
  store i64 %29, i64* %23, align 8
  %30 = load i64, i64* %23, align 8
  %31 = load i64, i64* %20, align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* %21, align 8
  %34 = call i32 @min(i64 %32, i64 %33)
  store i32 %34, i32* %24, align 4
  %35 = load i64, i64* %20, align 8
  %36 = load i32, i32* %24, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = load i64, i64* %23, align 8
  %40 = icmp sgt i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %44 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %45 = load i32, i32* %24, align 4
  %46 = sub i32 0, %45
  %47 = call i32 @node_copy(%struct.btree_node* %43, %struct.btree_node* %44, i32 %46)
  %48 = load i64, i64* %20, align 8
  %49 = load i32, i32* %24, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i8* @cpu_to_le32(i64 %51)
  %53 = load %struct.btree_node*, %struct.btree_node** %17, align 8
  %54 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* %24, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %21, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %89

60:                                               ; preds = %11
  %61 = load i64, i64* %21, align 8
  %62 = load i32, i32* %24, align 4
  %63 = zext i32 %62 to i64
  %64 = sub nsw i64 %61, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %24, align 4
  %66 = load i64, i64* %22, align 8
  %67 = load i32, i32* %24, align 4
  %68 = zext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = load i64, i64* %23, align 8
  %71 = icmp sgt i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @BUG_ON(i32 %72)
  %74 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %75 = load i32, i32* %24, align 4
  %76 = call i32 @node_shift(%struct.btree_node* %74, i32 %75)
  %77 = load %struct.btree_node*, %struct.btree_node** %18, align 8
  %78 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %79 = load i32, i32* %24, align 4
  %80 = call i32 @node_copy(%struct.btree_node* %77, %struct.btree_node* %78, i32 %79)
  %81 = load i64, i64* %22, align 8
  %82 = load i32, i32* %24, align 4
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = call i8* @cpu_to_le32(i64 %84)
  %86 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %87 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  br label %89

89:                                               ; preds = %60, %11
  %90 = load %struct.btree_node*, %struct.btree_node** %19, align 8
  %91 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %96 = load %struct.child*, %struct.child** %16, align 8
  %97 = getelementptr inbounds %struct.child, %struct.child* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32* @key_ptr(%struct.btree_node* %95, i32 %98)
  store i32 %94, i32* %99, align 4
  %100 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %101 = load %struct.child*, %struct.child** %15, align 8
  %102 = getelementptr inbounds %struct.child, %struct.child* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @delete_at(%struct.btree_node* %100, i32 %103)
  %105 = load %struct.child*, %struct.child** %16, align 8
  %106 = getelementptr inbounds %struct.child, %struct.child* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.dm_btree_info*, %struct.dm_btree_info** %12, align 8
  %110 = getelementptr inbounds %struct.dm_btree_info, %struct.dm_btree_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.child*, %struct.child** %15, align 8
  %113 = getelementptr inbounds %struct.child, %struct.child* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @dm_block_location(i32 %114)
  %116 = call i32 @dm_tm_dec(i32 %111, i32 %115)
  %117 = load %struct.dm_btree_info*, %struct.dm_btree_info** %12, align 8
  %118 = load %struct.btree_node*, %struct.btree_node** %13, align 8
  %119 = load %struct.child*, %struct.child** %14, align 8
  %120 = load %struct.child*, %struct.child** %16, align 8
  %121 = call i32 @__rebalance2(%struct.dm_btree_info* %117, %struct.btree_node* %118, %struct.child* %119, %struct.child* %120)
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @node_copy(%struct.btree_node*, %struct.btree_node*, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @node_shift(%struct.btree_node*, i32) #1

declare dso_local i32* @key_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @delete_at(%struct.btree_node*, i32) #1

declare dso_local i32 @dm_tm_dec(i32, i32) #1

declare dso_local i32 @dm_block_location(i32) #1

declare dso_local i32 @__rebalance2(%struct.dm_btree_info*, %struct.btree_node*, %struct.child*, %struct.child*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
