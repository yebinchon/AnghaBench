; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_node_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_node_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btree_node*, %struct.btree_node*, i32)* @node_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node_copy(%struct.btree_node* %0, %struct.btree_node* %1, i32 %2) #0 {
  %4 = alloca %struct.btree_node*, align 8
  %5 = alloca %struct.btree_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btree_node* %0, %struct.btree_node** %4, align 8
  store %struct.btree_node* %1, %struct.btree_node** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %10 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %15 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %21 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = icmp ne i32 %19, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %37 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = icmp sgt i32 %35, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @key_ptr(%struct.btree_node* %44, i32 %45)
  %47 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %48 = call i32 @key_ptr(%struct.btree_node* %47, i32 0)
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = call i32 @memcpy(i32 %46, i32 %48, i32 %52)
  %54 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @value_ptr(%struct.btree_node* %54, i32 %55)
  %57 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %58 = call i32 @value_ptr(%struct.btree_node* %57, i32 0)
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 %59, %60
  %62 = call i32 @memcpy(i32 %56, i32 %58, i32 %61)
  br label %96

63:                                               ; preds = %3
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %66 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = icmp sgt i32 %64, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @BUG_ON(i32 %71)
  %73 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %74 = call i32 @key_ptr(%struct.btree_node* %73, i32 0)
  %75 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %76, %77
  %79 = call i32 @key_ptr(%struct.btree_node* %75, i32 %78)
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = mul i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = call i32 @memcpy(i32 %74, i32 %79, i32 %83)
  %85 = load %struct.btree_node*, %struct.btree_node** %5, align 8
  %86 = call i32 @value_ptr(%struct.btree_node* %85, i32 0)
  %87 = load %struct.btree_node*, %struct.btree_node** %4, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %88, %89
  %91 = call i32 @value_ptr(%struct.btree_node* %87, i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %8, align 4
  %94 = mul nsw i32 %92, %93
  %95 = call i32 @memcpy(i32 %86, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %63, %30
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @key_ptr(%struct.btree_node*, i32) #1

declare dso_local i32 @value_ptr(%struct.btree_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
